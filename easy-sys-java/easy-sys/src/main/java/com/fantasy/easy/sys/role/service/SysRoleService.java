/**
 * SysMenuService.java
 * @author Fantasy Lan
 */
package com.fantasy.easy.sys.role.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.annotation.EasyPermissionAction;
import com.fantasy.easy.sys.role.SysRoleEntity;
import com.fantasy.easy.sys.role.mapper.SysRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
/**
 * @author Fantasy Lan
 * @since 2019年12月19日 : 下午11:58:01
 */
@RestController
@RequestMapping("sys/role")
public class SysRoleService {
	
	@Autowired
	private SysRoleMapper sysRoleMapper;

	@PostMapping("list")
	@EasyPermissionAction(auth="sys.role.list")
	public IPage<SysRoleEntity> list(@RequestBody SysRoleEntity menuEntity, Page<SysRoleEntity> p){
		QueryWrapper<SysRoleEntity> queryWrapper = new QueryWrapper<>();
		queryWrapper.setEntity(menuEntity);
		return sysRoleMapper.selectPage(p, queryWrapper);
	}

	@PostMapping("saveRoleAuth")
	@EasyPermissionAction(auth="sys.role.saveRoleAuth")
	public int saveRoleAuth(@RequestBody SysRoleEntity sysRoleEntity){
		sysRoleMapper.deleteRoleAuthByRoleId(sysRoleEntity.getRoleId());
		if(sysRoleEntity.getAuths() != null && sysRoleEntity.getAuths().size() > 0){
			sysRoleEntity.setCreateBy(SessionSubjectUtils.getUserId());
			sysRoleEntity.setCreateTime(new Date());
			sysRoleMapper.insertRoleAuthByRole(sysRoleEntity);
		}
		return 1;
	}

	@PostMapping("addRoleUser")
	@EasyPermissionAction(auth="sys.role.addRoleUser")
	public int addRoleUser(@RequestBody SysRoleEntity sysRoleEntity){
		if(sysRoleEntity.getUserIds() != null && sysRoleEntity.getUserIds().size() > 0){
			sysRoleEntity.setCreateBy(SessionSubjectUtils.getUserId());
			sysRoleEntity.setCreateTime(new Date());
			return sysRoleMapper.insertRoleUserByRole(sysRoleEntity);
		}
		return 0;
	}

	@PostMapping("deleteRoleUserByRole")
	@EasyPermissionAction(auth="sys.role.deleteRoleUser")
	public int deleteRoleUserByRole(@RequestBody SysRoleEntity sysRoleEntity) {
		if(sysRoleEntity.getUserIds() != null && sysRoleEntity.getUserIds().size() > 0) {
			return sysRoleMapper.deleteRoleUserByRole(sysRoleEntity);
		}
		return 0;
	}

	@PostMapping("save")
	@EasyPermissionAction(auth="sys.role.save")
	public int save(@Validated @RequestBody SysRoleEntity sysRoleEntity){
		if(sysRoleEntity.getRoleId() != null && sysRoleEntity.getRoleId() != 0){
			sysRoleEntity.setUpdateBy(SessionSubjectUtils.getUserId());
			sysRoleEntity.setUpdateTime(new Date());
			return sysRoleMapper.updateById(sysRoleEntity);
		}
		sysRoleEntity.setCreateBy(SessionSubjectUtils.getUserId());
		sysRoleEntity.setCreateTime(new Date());
		return sysRoleMapper.insert(sysRoleEntity);
	}

	@PostMapping("delete")
	@EasyPermissionAction(auth="sys.role.delete")
	public int delete(@RequestBody SysRoleEntity menuEntity) throws Exception{
		if(menuEntity.getRoleId() != null && menuEntity.getRoleId() != 0){
			return sysRoleMapper.deleteById(menuEntity.getRoleId());
		}
		throw new Exception("删除的角色ID不能为空");
	}

}
