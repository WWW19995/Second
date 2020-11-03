package com.fantasy.easy.blog.article;

import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fantasy.easy.core.entity.BaseEntity;

@TableName("blog_article")
public class BlogArticleEntity extends BaseEntity {

	@TableId(type = IdType.AUTO)
	private Long articleId;
	@NotBlank(message = "文章标题不能为空")
	private String articleTitle;
	@NotBlank(message = "文章内容不能为空")
	private String articleContent;
	@NotBlank(message = "文章摘要不能为空")
	@Length(min = 1, max = 100,message = "摘要长度一百以内")
	private String articleAbstract;
	private Long articleType;

	public String getArticleAbstract() {
		return articleAbstract;
	}

	public void setArticleAbstract(String articleAbstract) {
		this.articleAbstract = articleAbstract;
	}

	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public Long getArticleType() {
		return articleType;
	}

	public void setArticleType(Long articleType) {
		this.articleType = articleType;
	}

}
