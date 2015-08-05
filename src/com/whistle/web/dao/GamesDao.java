package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.Games;

public interface GamesDao 
{
	public List<Games> getGames();
	public Games getGame(String code);
}
