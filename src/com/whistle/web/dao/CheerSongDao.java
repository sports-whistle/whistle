package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.CheerSong;

public interface CheerSongDao {

	
	public List<CheerSong> getCheerSongsByTeamId(String teamId);
	public List<CheerSong> getCHeerSongsByOneColumn(String column, String keyword);
	public CheerSong getCheerSong(String name);
	
	public int addCheerSong(CheerSong newCheerSong);
	public int delCheerSong(String name);
	public int updateCheerSong(CheerSong updatedCheerSong);
}
