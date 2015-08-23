package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.RateArticle;

public interface RateArticleDao {
	
	public int rate(RateArticle rateArticle);
	
	public int cancelRating(RateArticle rateArticle);
	
	
	public List<RateArticle> getListOfRating(int articleId);
	
	public List<RateArticle> getRateArticles();
}
