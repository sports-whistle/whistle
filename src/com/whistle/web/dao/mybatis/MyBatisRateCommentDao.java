package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.RateCommentDao;
import com.whistle.web.vo.RateComment;

public class MyBatisRateCommentDao implements RateCommentDao {

	/*SqlSessionFactory factory = new SqlHayleySessionFactory()
			.getSqlSessionFactory();*/
	@Autowired
	SqlSession session;
	@Override
	public int rate(RateComment rateComment) {
		int result = 0;

		//SqlSession session = factory.openSession();
		RateCommentDao rmapper = session.getMapper(RateCommentDao.class);

		try {
			result = rmapper.rate(rateComment);
			//session.commit();
		} finally {
			//session.close();
		}

		return result;
	}

	@Override
	public int cancelRating(RateComment rateComment) {
		int result = 0;

		//SqlSession session = factory.openSession();
		RateCommentDao rmapper = session.getMapper(RateCommentDao.class);

		try {
			result = rmapper.cancelRating(rateComment);
			//session.commit();
		} finally {
			//session.close();
		}

		return result;
	}

	@Override
	public List<RateComment> getListOfRating(int commentId) {

		List<RateComment> list = null;

		//SqlSession session = factory.openSession();
		RateCommentDao rmapper = session.getMapper(RateCommentDao.class);

		try {
			list = rmapper.getListOfRating(commentId);
			//session.commit();
		} finally {
			//session.close();
		}

		return list;
	}

	@Override
	public List<RateComment> getRateComments() {
		List<RateComment> list = null;

		//SqlSession session = factory.openSession();
		RateCommentDao rmapper = session.getMapper(RateCommentDao.class);

		try {
			list = rmapper.getRateComments();
			//session.commit();
		} finally {
			//session.close();
		}

		return list;
	}

}
