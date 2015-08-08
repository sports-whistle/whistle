package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.Team;

public interface TeamDao {
	
	
	
	
	public Team getTeamById(String teamId);
	public List<Team> getTeamsWithOneColumn(String column, String keyword);
	
	public int addTeam(Team newTeam);
	public int updateTeam(Team newTeam);
	public int delTeam(String teamId);
	
	
	
}
