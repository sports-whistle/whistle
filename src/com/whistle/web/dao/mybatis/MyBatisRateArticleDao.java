package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.RateArticleDao;
import com.whistle.web.vo.RateArticle;

public class MyBatisRateArticleDao implements RateArticleDao {

	@Autowired
	SqlSession session;

	@Override
	public int rate(RateArticle rateArticle) {
		int result = 0;

		RateArticleDao rmapper = session.getMapper(RateArticleDao.class);

		result = rmapper.rate(rateArticle);

		return result;
	}

	@Override
	public int cancelRating(RateArticle rateArticle) {
		int result = 0;

		RateArticleDao rmapper = session.getMapper(RateArticleDao.class);

		result = rmapper.cancelRating(rateArticle);

		return result;
	}

	@Override
	public List<RateArticle> getListOfRating(int articleId) {

		List<RateArticle> list = null;

		RateArticleDao rmapper = session.getMapper(RateArticleDao.class);

		list = rmapper.getListOfRating(articleId);

		return list;
	}

	@Override
	public List<RateArticle> getRateArticles() {
		List<RateArticle> list = null;

		RateArticleDao rmapper = session.getMapper(RateArticleDao.class);

		list = rmapper.getRateArticles();

		return list;
	}

}
