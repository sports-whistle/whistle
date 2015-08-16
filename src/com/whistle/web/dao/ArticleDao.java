package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.Article;

public interface ArticleDao {

	
	public List<Article> getArticles(int page);
	public Article getArticle(int intId);
	
	
	public int regArticle(Article newArticle);
	public int delArticle(int intId);
	
	public int updateArticle(String content, int intID);
	
	
	
	
	
}
