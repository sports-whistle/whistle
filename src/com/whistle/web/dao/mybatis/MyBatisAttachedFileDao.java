package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.AttachedFileDao;
import com.whistle.web.vo.AttachedFile;

public class MyBatisAttachedFileDao implements AttachedFileDao{

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	
	@Override
	public List<AttachedFile> getAttachedFilesByArticleId(int articleId) {
		AttachedFileDao afmapper=session.getMapper(AttachedFileDao.class);
		List<AttachedFile> aflist=afmapper.getAttachedFilesByArticleId(articleId);
		return aflist;
	}

	@Override
	public AttachedFile getAttachedFile(int intId) {
		AttachedFileDao afmapper=session.getMapper(AttachedFileDao.class);
		AttachedFile file =afmapper.getAttachedFile(intId);
		return file;
	}

	@Override
	public int addAttachedFile(AttachedFile attachedFile) {
		AttachedFileDao afmapper=session.getMapper(AttachedFileDao.class);
		int result = afmapper.addAttachedFile(attachedFile);
		return result;
	}

	@Override
	public int delAttachedFile(int intId) {
		AttachedFileDao afmapper=session.getMapper(AttachedFileDao.class);
		int result = afmapper.delAttachedFile(intId);
		return result;
	}

	
	
	

}
