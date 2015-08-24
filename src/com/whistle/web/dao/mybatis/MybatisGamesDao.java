package com.whistle.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.whistle.web.dao.GamesDao;
import com.whistle.web.vo.Games;

public class MybatisGamesDao implements GamesDao
{
	@Autowired
	SqlSession session; 
	
	@Override
	public List<Games> getGames() 
	{
		GamesDao dao = session.getMapper(GamesDao.class);
		List<Games> list = dao.getGames();
		return list; 
	}
	
	@Override
	public Games getGame(String code) 
	{
		GamesDao dao = session.getMapper(GamesDao.class);
		
		Games game = dao.getGame(code);
		
		return game;
	}
}
