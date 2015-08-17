package com.whistle.web.dao;

import com.whistle.web.vo.TicketInfo;

public interface TicketInfoDao {
	
	public TicketInfo getTicketInfo(String teamId);
	
	public int addTicketInfo(TicketInfo ticketInfo);
	
	
	public int updateTicketPriceUrl(String teamId, String url);
	public int updateTicketSeatsUrl(String teamId, String url);
	
	public int delTicketInfo(String teamId);
}
