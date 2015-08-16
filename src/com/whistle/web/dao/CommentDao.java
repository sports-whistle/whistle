package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.Comment;

public interface CommentDao {
	

	public List<Comment> getComments(int articleId);
	public Comment getComment(int intId);
	
	
	public int regComment(Comment newComment);
	public int delComment(int intId);
	
	public int updateComment(String content, int intID);
	
	
	
	
}
