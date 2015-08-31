package com.whistle.web.dao.mybatis;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.TeamDao;
import com.whistle.web.vo.Team;

public class MyBatisTeamDao implements TeamDao{
	
	
	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	
	@Override
	public Team getTeamById(String teamId) {
		TeamDao teamDao = session.getMapper(TeamDao.class);
		Team team = teamDao.getTeamById(teamId);
		return team;
	}

	@Override
	public List<Team> getTeamsWithOneColumn(String column, String keyword) {
		
		TeamDao teamDao = session.getMapper(TeamDao.class);
		
		List<Team> tlist = teamDao.getTeamsWithOneColumn(column, keyword);
	
		
		
		return tlist;
	}

	@Override
	public int addTeam(Team newTeam) {
		TeamDao teamDao = session.getMapper(TeamDao.class);
		int result = teamDao.addTeam(newTeam);
		return result;
	}

	@Override
	public int updateTeam(Team newTeam) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delTeam(String teamId) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<Team> getTeamsEmblemUrl(String sportsKind) 
	{
		TeamDao dao = session.getMapper(TeamDao.class);
		List<Team> emblemUrlList = dao.getTeamsEmblemUrl(sportsKind);
		return emblemUrlList;
	}
	
	@Override
	public List<Team> getAllTeamsEmblemUrl() {
		TeamDao dao = session.getMapper(TeamDao.class);
		List<Team> emblemUrlList = dao.getAllTeamsEmblemUrl();
		return emblemUrlList;
	}


	@Override
	public int updateOneValue(String teamId, String column, String value) {
		TeamDao teamDao = session.getMapper(TeamDao.class);
		int result = teamDao.updateOneValue(teamId, column, value);
		return result;
	}
}
