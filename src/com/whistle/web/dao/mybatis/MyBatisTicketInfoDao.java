package com.whistle.web.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.TicketInfoDao;
import com.whistle.web.vo.Team;
import com.whistle.web.vo.TicketInfo;

public class MyBatisTicketInfoDao implements TicketInfoDao{

	
	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	
	@Override
	public TicketInfo getTicketInfo(String teamId) {
		TicketInfoDao tmapper = session.getMapper(TicketInfoDao.class);
		TicketInfo ticketInfo = tmapper.getTicketInfo(teamId);
		return ticketInfo;
	}

	@Override
	public int addTicketInfo(TicketInfo ticketInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateTicketPriceUrl(String teamId, String url) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateTicketSeatsUrl(String teamId, String url) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delTicketInfo(String teamId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
