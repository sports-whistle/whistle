package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.RateComment;

public interface RateCommentDao {
	
	public int rate(RateComment rateComment);
	
	public int cancelRating(RateComment rateComment);
	
	
	public List<RateComment> getListOfRating(int commentId);
	
	public List<RateComment> getRateComments();
	
}
