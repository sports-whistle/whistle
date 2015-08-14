package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.CheerSongDao;
import com.whistle.web.vo.CheerSong;

public class MyBatisCheerSongDao implements CheerSongDao{
	@Autowired
	SqlSession session;
	@Override
	
	
	public List<CheerSong> getCheerSongsByTeamId(String teamId) {
		CheerSongDao smapper = session.getMapper(CheerSongDao.class);
		List<CheerSong> songs = smapper.getCheerSongsByTeamId(teamId);
		return songs;
	}

	@Override
	public List<CheerSong> getCHeerSongsByOneColumn(String column,
			String keyword) {
		CheerSongDao smapper = session.getMapper(CheerSongDao.class);
		List<CheerSong> songs = smapper.getCHeerSongsByOneColumn(column, keyword);
		return songs;
	}

	@Override
	public CheerSong getCheerSong(String name) {
		CheerSongDao smapper = session.getMapper(CheerSongDao.class);
		CheerSong cheerSong = smapper.getCheerSong(name);
		return cheerSong;
	}

	@Override
	public int addCheerSong(CheerSong newCheerSong) {
		CheerSongDao smapper = session.getMapper(CheerSongDao.class);
		int result = smapper.addCheerSong(newCheerSong);
		return result;
	}

	@Override
	public int delCheerSong(String name) {
		CheerSongDao smapper = session.getMapper(CheerSongDao.class);
		int result = smapper.delCheerSong(name);
		return result;
	}

	@Override
	public int updateCheerSong(CheerSong updatedCheerSong) {
		CheerSongDao smapper = session.getMapper(CheerSongDao.class);
		int result = smapper.updateCheerSong(updatedCheerSong);
		
		return result;
	}

}
