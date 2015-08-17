package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.ArticleDao;
import com.whistle.web.dao.CommentDao;
import com.whistle.web.vo.Article;

public class MyBatisArticleDao implements ArticleDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<Article> getArticles(int page) {

		List<Article> alist = null;

		ArticleDao amapper = session.getMapper(ArticleDao.class);
		alist = amapper.getArticles(page);

		CommentDao cmapper = session.getMapper(CommentDao.class);

		for (Article a : alist)
			a.setCommentsOfThis(cmapper.getComments(a.getIntId()));

		alist = amapper.getArticles(page);

		return alist;
	}

	@Override
	public Article getArticle(int intId) {
		Article article = new Article();

		ArticleDao amapper = session.getMapper(ArticleDao.class);

		article = amapper.getArticle(intId);

		CommentDao cmapper = session.getMapper(CommentDao.class);

		article.setCommentsOfThis(cmapper.getComments(article.getIntId()));

		return article;
	}

	@Override
	public int regArticle(Article newPost) {
		int result = 0;

		ArticleDao amapper = session.getMapper(ArticleDao.class);

		result = amapper.regArticle(newPost);

		return result;
	}

	@Override
	public int delArticle(int intId) {

		int result = 0;

		ArticleDao amapper = session.getMapper(ArticleDao.class);

		result = amapper.delArticle(intId);

		return result;
	}

	@Override
	public int updateArticle(String content, int intId) {
		int result = 0;

		ArticleDao amapper = session.getMapper(ArticleDao.class);

		result = amapper.updateArticle(content, intId);

		return result;
	}

}
