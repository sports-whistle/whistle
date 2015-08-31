package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.TicketSiteDao;
import com.whistle.web.vo.TicketSite;

public class MyBatisTicketSiteDao implements TicketSiteDao{
	
	@Autowired
	SqlSession session;
	
	
	
	@Override
	public List<TicketSite> getAllTicketSites() {
		
		TicketSiteDao tmapper = session.getMapper(TicketSiteDao.class);
		List<TicketSite> sites = tmapper.getAllTicketSites();
		
		return sites;
	}

	@Override
	public List<TicketSite> getTicketSitesOfATeam(String teamId) {
		
		TicketSiteDao tmapper = session.getMapper(TicketSiteDao.class);
		List<TicketSite> sites = tmapper.getTicketSitesOfATeam(teamId);
		
		return sites;
	}

	@Override
	public int addTicketSite(TicketSite site) {
		
		TicketSiteDao tmapper = session.getMapper(TicketSiteDao.class);
		int result = tmapper.addTicketSite(site);
		return result;
	}

	@Override
	public int delTicketSite(String cover) {
		TicketSiteDao tmapper = session.getMapper(TicketSiteDao.class);
		int result = tmapper.delTicketSite(cover);
		return result;
	}

	@Override
	public int updateTicketSite(TicketSite site) {
		TicketSiteDao tmapper = session.getMapper(TicketSiteDao.class);
		int result = tmapper.updateTicketSite(site);
		return result;
	}

	@Override
	public int addTicketSiteOfTeam(String cover, String teamId) {
		TicketSiteDao tmapper = session.getMapper(TicketSiteDao.class);
		int result = tmapper.addTicketSiteOfTeam(cover, teamId);
		
		return result;
	}

	@Override
	public int rmvTicketSiteOfTeam(String cover, String teamId) {
		TicketSiteDao tmapper = session.getMapper(TicketSiteDao.class);
		int result = tmapper.rmvTicketSiteOfTeam(cover, teamId);
		
		return result;
	}

}
