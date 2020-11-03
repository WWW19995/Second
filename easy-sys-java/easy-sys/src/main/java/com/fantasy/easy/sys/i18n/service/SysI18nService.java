/**
 * fantasy
 */
package com.fantasy.easy.sys.i18n.service;

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
import com.fantasy.easy.core.entity.SysI18nEntity;
import com.fantasy.easy.sys.i18n.mapper.SysI18nMapper;

/**
 * @author fantasy
 *2020年2月9日 下午2:58:13
 */
@RestController
@RequestMapping("sys/i18n")
public class SysI18nService {

	@Autowired
	private SysI18nMapper sysI18nMapper;
	
	/***
	 * 查询这个语言下面所有的国际化
	 * 
	 * */
	public List<SysI18nEntity> getAllI18nByLang(String lang){
		QueryWrapper<SysI18nEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("i18n_lang", lang);
		return sysI18nMapper.selectList(queryWrapper);
	}

	@RequestMapping("list")
	@EasyPermissionAction(auth="sys.i18n.list")
	public IPage<SysI18nEntity> list(@RequestBody SysI18nEntity menuEntity, Page<SysI18nEntity> p){
		QueryWrapper<SysI18nEntity> queryWrapper = new QueryWrapper<>();
		queryWrapper.setEntity(menuEntity);
		return sysI18nMapper.selectPage(p, queryWrapper);
	}

	@PostMapping("save")
	@EasyPermissionAction(auth="sys.i18n.save")
	public int save(@Validated @RequestBody SysI18nEntity i18nEntity){
		i18nEntity.setUpdateBy(SessionSubjectUtils.getUserId());
		i18nEntity.setUpdateTime(new Date());
		if(i18nEntity.getI18nId() != null && i18nEntity.getI18nId() != 0){
			return sysI18nMapper.updateById(i18nEntity);
		}
		i18nEntity.setCreateBy(SessionSubjectUtils.getUserId());
		i18nEntity.setCreateTime(new Date());
		return sysI18nMapper.insert(i18nEntity);
	}
	
	@PostMapping("delete")
	@EasyPermissionAction(auth="sys.i18n.delete")
	public int delete(@RequestBody SysI18nEntity i18nEntity) throws Exception{
		if(i18nEntity.getI18nId() != null && i18nEntity.getI18nId() != 0){
			return sysI18nMapper.deleteById(i18nEntity.getI18nId());
		}
		throw new Exception("删除的角色ID不能为空");
	}
}
