package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.AttachedFile;

public interface AttachedFileDao {
	
	
	public List<AttachedFile> getAttachedFilesByArticleId(int articleId);
	public AttachedFile getAttachedFile(int intId);
	
	public int addAttachedFile(AttachedFile attachedFile);
	public int delAttachedFile(int intId);
	

	
}
