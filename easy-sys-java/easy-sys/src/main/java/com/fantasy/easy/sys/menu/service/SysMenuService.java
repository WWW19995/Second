/**
 * SysMenuService.java
 * @author Fantasy Lan
 */
package com.fantasy.easy.sys.menu.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.annotation.EasyPermissionAction;
import com.fantasy.easy.core.entity.SysMenuEntity;
import com.fantasy.easy.core.entity.SysUserEntity;
import com.fantasy.easy.core.exception.EasyApplicationException;
import com.fantasy.easy.sys.menu.mapper.SysMenuMapper;
import com.fantasy.easy.sys.role.SysRoleEntity;

/**
 * @author Fantasy Lan
 */
@RestController
@RequestMapping("sys/menu")
public class SysMenuService {
	
	@Autowired
	private SysMenuMapper sysMenuMapper;

	@RequestMapping("list")
	@EasyPermissionAction(auth="sys.menu.list")
	public IPage<SysMenuEntity> list(@RequestBody SysMenuEntity menuEntity, Page<SysMenuEntity> p){
		QueryWrapper<SysMenuEntity> queryWrapper = new QueryWrapper<>();
		queryWrapper.setEntity(menuEntity);
		return sysMenuMapper.selectPage(p, queryWrapper);
	}

	@RequestMapping("all")
	@EasyPermissionAction(auth="sys.menu.all")
	public List<SysMenuEntity> all(){
		return getMenuChildByParentId(sysMenuMapper.selectList(), 0L);
	}

	@PostMapping("save")
	@EasyPermissionAction(auth="sys.menu.save")
	public int save(@Validated @RequestBody SysMenuEntity menuEntity){
		menuEntity.setUpdateBy(SessionSubjectUtils.getUserId());
		menuEntity.setUpdateTime(new Date());
		if(menuEntity.getMenuId() != null && menuEntity.getMenuId() != 0){
			return sysMenuMapper.updateById(menuEntity);
		}
		menuEntity.setCreateBy(SessionSubjectUtils.getUserId());
		menuEntity.setCreateTime(new Date());
		return sysMenuMapper.insert(menuEntity);
	}
	
	@PostMapping("delete")
	@EasyPermissionAction(auth="sys.menu.delete")
	public int delete(@RequestBody SysMenuEntity menuEntity) throws Exception{
		if(menuEntity.getMenuId() != null && menuEntity.getMenuId() != 0){
			return sysMenuMapper.deleteById(menuEntity.getMenuId());
		}
		throw new Exception("删除的角色ID不能为空");
	}

	@PostMapping("getRoleMenu")
	@EasyPermissionAction(auth="sys.menu.getRoleMenu")
	public List<SysMenuEntity> getRoleMenu(@RequestBody SysRoleEntity role) throws EasyApplicationException {
		if(role.getRoleId() == null){
			throw new EasyApplicationException("请输入角色Id");
		}
		return sysMenuMapper.queryMenuByRoleId(role.getRoleId());
	}

	public List<SysMenuEntity> getUserMenu(SysUserEntity user) {
		List<SysMenuEntity> menus = null;
		if(user != null) {
			menus = sysMenuMapper.queryMenuByUserId(user);
		}else if(SessionSubjectUtils.isLogin()) {
			menus = sysMenuMapper.queryMenuByUserId(SessionSubjectUtils.getUserEntity());
		}else {
			menus = sysMenuMapper.queryMenuNoAuth();
		}
		List<SysMenuEntity> res = getMenuChildByParentId(menus, 0L);
		return res;
	}
	
	public List<SysMenuEntity> queryMenuNoAuth() {
		List<SysMenuEntity> menus = null;
		menus = sysMenuMapper.queryMenuNoAuth();
		List<SysMenuEntity> res = getMenuChildByParentId(menus, 0L);
		return res;
	}
	
	private List<SysMenuEntity> getMenuChildByParentId(List<SysMenuEntity> list, Long parentId){
		List<SysMenuEntity> res = new ArrayList<>();
		for (SysMenuEntity sysMenuEntity : list) {
			if(sysMenuEntity.getMenuParentId() != null && sysMenuEntity.getMenuParentId() == parentId) {
				res.add(sysMenuEntity);
				sysMenuEntity.setChildren(getMenuChildByParentId(list, sysMenuEntity.getMenuId()));
			}
		}
		return res;
	}
}
