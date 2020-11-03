package com.fantasy.easy.blog.article.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.fantasy.easy.blog.article.BlogArticleEntity;
import com.fantasy.easy.blog.article.mapper.BlogArticleMapper;
import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.annotation.EasyPermissionAction;
/**
 * @author Fantasy Lan
 * @since 2020年10月14日
 */
@RestController
@RequestMapping("blog/article")
public class BlogArticleService {
	
	@Autowired
	private BlogArticleMapper blogArticleMapper;

	@PostMapping("list")
	public IPage<BlogArticleEntity> list(@RequestBody BlogArticleEntity blogArticleEntity, Page<BlogArticleEntity> p){
		QueryWrapper<BlogArticleEntity> queryWrapper = new QueryWrapper<>();
		queryWrapper.setEntity(blogArticleEntity);
		return blogArticleMapper.selectPage(p, queryWrapper);
	}

	@PostMapping("save")
	@EasyPermissionAction(auth="blog.article.save")
	public int save(@Validated @RequestBody BlogArticleEntity blogArticleEntity){
		if(blogArticleEntity.getArticleId() != null && blogArticleEntity.getArticleId() != 0){
			blogArticleEntity.setUpdateBy(SessionSubjectUtils.getUserId());
			blogArticleEntity.setUpdateTime(new Date());
			return blogArticleMapper.updateById(blogArticleEntity);
		}
		blogArticleEntity.setCreateBy(SessionSubjectUtils.getUserId());
		blogArticleEntity.setCreateTime(new Date());
		return blogArticleMapper.insert(blogArticleEntity);
	}

	@PostMapping("delete")
	@EasyPermissionAction(auth="blog.article.delete")
	public int delete(@RequestBody BlogArticleEntity blogArticleEntity) throws Exception{
		if(blogArticleEntity.getArticleId() != null && blogArticleEntity.getArticleId() != 0){
			return blogArticleMapper.deleteById(blogArticleEntity.getArticleId());
		}
		throw new Exception("删除的文章ID不能为空");
	}

}
