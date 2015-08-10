package com.whistle.web.dao.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> getTeamsWithOneColumn(String column, String keyword) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("column", column);
		map.put("keyword", keyword);
		
		List<Team> tlist = session.selectList("getTeamsWithOneColumn", map);
		
		return tlist;
	}

	@Override
	public int addTeam(Team newTeam) {
		// TODO Auto-generated method stub
		return 0;
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
	public List<String> getTeamsEmblemUrl(String sportsKind) 
	{
		TeamDao dao = session.getMapper(TeamDao.class);
		List<String> emblemUrlList = dao.getTeamsEmblemUrl(sportsKind);
		return emblemUrlList;
	}

}
