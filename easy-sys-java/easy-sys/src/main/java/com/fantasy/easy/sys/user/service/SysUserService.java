/**
 * SysUserService.java
 * @author Fantasy Lan
 */
package com.fantasy.easy.sys.user.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.fantasy.easy.core.Const;
import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.annotation.EasyPermissionAction;
import com.fantasy.easy.core.entity.SysMenuEntity;
import com.fantasy.easy.core.entity.SysUserEntity;
import com.fantasy.easy.core.exception.EasyApplicationException;
import com.fantasy.easy.core.util.JWTUtil;
import com.fantasy.easy.core.util.PBKDF2Util;
import com.fantasy.easy.sys.menu.service.SysMenuService;
import com.fantasy.easy.sys.role.SysRoleEntity;
import com.fantasy.easy.sys.user.SysUserLoginVO;
import com.fantasy.easy.sys.user.mapper.SysUserMapper;

/**
 * @author Fantasy Lan
 */
@RestController
@RequestMapping("sys/user")
public class SysUserService {
	
	@Autowired
	private SysMenuService sysMenuService;
	@Autowired
    private SysUserMapper sysUserMapper;

    @RequestMapping("list")
    @EasyPermissionAction(auth="sys.user.list")
    public IPage<SysUserEntity> list(@RequestBody SysUserEntity userEntity, Page<SysUserEntity> p){
        QueryWrapper<SysUserEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.setEntity(userEntity);
        queryWrapper.select("user_id", "user_name", "user_status", "user_mobile", "user_email", "update_time", "update_by", "create_by", "create_time");
        return sysUserMapper.selectPage(p, queryWrapper);
    }

    @RequestMapping("getUserByRole")
    @EasyPermissionAction(auth="sys.user.getUserByRole")
    public IPage<SysUserEntity> getUserByRole(@RequestBody SysRoleEntity roleEntity, Page<SysUserEntity> p){
        return sysUserMapper.getUserByRole(p, roleEntity);
    }
    
	@PostMapping("delete")
	@EasyPermissionAction(auth="sys.user.delete")
	public int delete(@RequestBody SysUserEntity userEntity) throws Exception{
		if(userEntity.getUserId() != null && userEntity.getUserId() != 0){
			return sysUserMapper.deleteById(userEntity.getUserId());
		}
		throw new Exception("删除的角色ID不能为空");
	}

    @PostMapping("save")
    @EasyPermissionAction(auth="sys.user.save")
    public int save(@Validated @RequestBody SysUserEntity userEntity) throws Exception{
    	if (!StringUtils.isBlank(userEntity.getUserPwd())) {
    		try {
    			userEntity.setUserSalt(PBKDF2Util.generateSalt()); // 生成随机盐值
				userEntity.setUserPwd(PBKDF2Util.getEncryptedPassword(userEntity.getUserPwd(), userEntity.getUserSalt())); // 加密密码
			} catch (Exception e) {
				throw e;
			}
		}
    	userEntity.setUpdateBy(SessionSubjectUtils.getUserId());
    	userEntity.setUpdateTime(new Date());
        if(userEntity.getUserId() != null && userEntity.getUserId() != 0){
            return sysUserMapper.updateById(userEntity);
        }
        userEntity.setCreateBy(SessionSubjectUtils.getUserId());
        userEntity.setCreateTime(new Date());
        return sysUserMapper.insert(userEntity);
    }
	
    /**
     * 登录
     * @throws EasyApplicationException 
     */
    @PostMapping("/login")
    public Map<String, String> login (@RequestBody SysUserLoginVO userLogin, HttpServletRequest request) throws EasyApplicationException{
        //获取用户的输入的账号.
        String username = userLogin.getUsername();
        if(StringUtils.isAllBlank(username, userLogin.getPassword())){
            throw  new EasyApplicationException("账号或者密码不能为空");
        }
        //实际项目中，这里可以根据实际情况做缓存，如果不做，Shiro自己也是有时间间隔机制，2分钟内不会重复执行该方法
        SysUserEntity userInfo = sysUserMapper.selectOne(username);
        if(userInfo == null){
            throw  new EasyApplicationException("账号或者密码错误");
        }
        boolean checkPwd = PBKDF2Util.authenticate(String.valueOf(userLogin.getPassword()), userInfo.getUserPwd(), String.valueOf(userInfo.getUserSalt()));
        if(checkPwd){
            buildSession(userInfo, request);
            Map<String, String> successMap = new HashMap<>();
            Map<String, Object> jwtMap = new HashMap<>();
            jwtMap.put("userId", userInfo.getUserId());
            jwtMap.put("userName", userInfo.getUserName());
            jwtMap.put("userAccount", "");
            successMap.put("token", JWTUtil.generate(jwtMap));
            successMap.put("message", "登陆成功");
            // 此方法不处理登录成功,由shiro进行处理
            return successMap;
        }else{
            throw  new EasyApplicationException("账号或者密码错误");
        }
    }

    public SysUserEntity getUserByUserId(long userId){
        return sysUserMapper.selectById(userId);
    }

    public void buildSession(SysUserEntity userInfo, HttpServletRequest request){
        SessionSubjectUtils.setLogin(true);
        SysUserEntity user = new SysUserEntity();
        user.setName(userInfo.getUserName());
        user.setUserId(userInfo.getUserId());
        user.setUserPwd("");
        user.setAvatar("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
        user.setMenuList(sysMenuService.getUserMenu(user)); // 菜单
		user.setPermissions(sysUserMapper.queryAllAuthByUserId(userInfo.getUserId())); // 权限
        HttpSession session = request.getSession(true);
        session.setAttribute(Const.USER_INFO_SESSION, user);
        // 设置当前线程
        SessionSubjectUtils.setLocal(session);
    }
    
    /**
     * 退出测试
     */
    @RequestMapping("/logout")
    public @ResponseBody String logout (HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute(Const.USER_INFO_SESSION);
        return "success" ;
    }

	@GetMapping
	@RequestMapping("info")
	public SysUserEntity getUserInfo() {
		return SessionSubjectUtils.getUserEntity();
	}
	
	@GetMapping
	@RequestMapping("menu")
	public List<SysMenuEntity> getUserMenu() {
		List<SysMenuEntity> menus = sysMenuService.getUserMenu(null);
		return menus;
	}
}
