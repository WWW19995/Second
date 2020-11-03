package com.fantasy.easy.blog.type.service;

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
import com.fantasy.easy.blog.type.BlogTypeEntity;
import com.fantasy.easy.blog.type.mapper.BlogTypeMapper;
import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.annotation.EasyPermissionAction;
/**
 * @author Fantasy Lan
 * @since 2020年10月14日
 */
@RestController
@RequestMapping("blog/type")
public class  BlogTypeService {
	
	@Autowired
	private  BlogTypeMapper blogTypeMapper;

	@PostMapping("list")
	@EasyPermissionAction(auth="blog.type.list")
	public IPage< BlogTypeEntity> list(@RequestBody  BlogTypeEntity menuEntity, Page< BlogTypeEntity> p){
		QueryWrapper< BlogTypeEntity> queryWrapper = new QueryWrapper<>();
		queryWrapper.setEntity(menuEntity);
		return blogTypeMapper.selectPage(p, queryWrapper);
	}
	
	@PostMapping("getAllTypeList")
	public List<BlogTypeEntity> getAllTypeList(){
		return blogTypeMapper.selectList(new QueryWrapper<>());
	}

	@PostMapping("save")
	@EasyPermissionAction(auth="blog.type.save")
	public int save(@Validated @RequestBody  BlogTypeEntity blogTypeEntity){
		if(blogTypeEntity.getTypeId() != null && blogTypeEntity.getTypeId() != 0){
			blogTypeEntity.setUpdateBy(SessionSubjectUtils.getUserId());
			blogTypeEntity.setUpdateTime(new Date());
			return blogTypeMapper.updateById(blogTypeEntity);
		}
		blogTypeEntity.setCreateBy(SessionSubjectUtils.getUserId());
		blogTypeEntity.setCreateTime(new Date());
		return blogTypeMapper.insert(blogTypeEntity);
	}

	@PostMapping("delete")
	@EasyPermissionAction(auth="blog.type.delete")
	public int delete(@RequestBody  BlogTypeEntity menuEntity) throws Exception{
		if(menuEntity.getTypeId() != null && menuEntity.getTypeId() != 0){
			return blogTypeMapper.deleteById(menuEntity.getTypeId());
		}
		throw new Exception("删除的角色ID不能为空");
	}

}
