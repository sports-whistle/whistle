package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.BulletinBoardDao;
import com.whistle.web.vo.BulletinBoard;

public class MybatisBulletinBoardDao implements BulletinBoardDao
{
	@Autowired
	SqlSession session; 
	
	@Override
	public int addBulletinBoard(BulletinBoard bulletinBoard) {
		
		BulletinBoardDao dao = session.getMapper(BulletinBoardDao.class);
		
		int result = dao.addBulletinBoard(bulletinBoard);
		
		return result; 
	}
	
	@Override
	public int deleteBulletinBoard(String code) {

		BulletinBoardDao dao = session.getMapper(BulletinBoardDao.class);
		
		int result = dao.deleteBulletinBoard(code);
		
		return result; 
	}

	@Override
	public int updateBulletinBoard(String code, String content) {
		
		BulletinBoardDao dao = session.getMapper(BulletinBoardDao.class);
		
		int result = dao.updateBulletinBoard(code, content);
		
		return result; 
	}

	@Override
	public List<BulletinBoard> getBulltinBoards() {
	
		BulletinBoardDao dao = session.getMapper(BulletinBoardDao.class);
		
		List<BulletinBoard> list = dao.getBulltinBoards();
		
		return list;
	}

	@Override
	public BulletinBoard getBulltinBoard(String code) {

		BulletinBoardDao dao = session.getMapper(BulletinBoardDao.class);
		
		BulletinBoard bulletinBoard = dao.getBulltinBoard(code);

		return bulletinBoard;
	}
}
