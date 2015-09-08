package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.BulletinBoard;

public interface BulletinBoardDao {

	public int addBulletinBoard(BulletinBoard bulletinBoard);
	public int deleteBulletinBoard(String code);
	public int updateBulletinBoard(String code, String content);
	
	public List<BulletinBoard> getBulltinBoards();
	public BulletinBoard getBulltinBoard(String code);
}
