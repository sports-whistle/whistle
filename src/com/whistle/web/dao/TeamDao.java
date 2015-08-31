package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.Team;

public interface TeamDao {
	

	public Team getTeamById(String teamId);
	public List<Team> getTeamsWithOneColumn(String column, String keyword);

	//���� url �������� 
	public List<Team> getTeamsEmblemUrl(String sportsKind);
	public List<Team> getAllTeamsEmblemUrl();
	
	public int addTeam(Team newTeam);
	public int updateTeam(Team newTeam);
	public int delTeam(String teamId);
	
	public int updateOneValue(String teamId, String column, String value);

	
	
}
