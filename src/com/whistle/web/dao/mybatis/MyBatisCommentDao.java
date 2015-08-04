package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.CommentDao;
import com.whistle.web.vo.Comment;

public class MyBatisCommentDao implements CommentDao {

	@Autowired
	private SqlSession session;

	@Override
	public List<Comment> getComments(int articleId) {

		List<Comment> flist = null;

		CommentDao cmapper = session.getMapper(CommentDao.class);

		flist = cmapper.getComments(articleId);

		return flist;
	}

	@Override
	public Comment getComment(int intId) {
		Comment Comment = new Comment();

		CommentDao cmapper = session.getMapper(CommentDao.class);

		Comment = cmapper.getComment(intId);

		return Comment;
	}

	@Override
	public int regComment(Comment newPost) {
		int result = 0;

		CommentDao cmapper = session.getMapper(CommentDao.class);

		result = cmapper.regComment(newPost);

		return result;
	}

	@Override
	public int delComment(int intId) {
		int result = 0;

		CommentDao cmapper = session.getMapper(CommentDao.class);

		result = cmapper.delComment(intId);

		return result;
	}

	@Override
	public int updateComment(String content, int intId) {
		int result = 0;

		CommentDao cmapper = session.getMapper(CommentDao.class);

		result = cmapper.updateComment(content, intId);

		return result;
	}

}
