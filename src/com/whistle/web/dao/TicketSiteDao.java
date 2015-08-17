package com.whistle.web.dao;

import java.util.List;

import com.whistle.web.vo.TicketSite;

public interface TicketSiteDao {
	
	
	
	public List<TicketSite> getAllTicketSites();
	
	
	/*select from view = TicketSitesView*/
	public List<TicketSite> getTicketSitesOfATeam(String teamId);
	
	
	/*insert into TicketSites*/
	public int addTicketSite(TicketSite site);
	public int delTicketSite(String cover);
	public int updateTicketSite(TicketSite site);
	
	
	/* n:m relationship  insert into TicketSitesTeams*/
	public int addTicketSiteOfTeam(String cover, String teamId);
	public int rmvTicketSiteOfTeam(String cover, String teamId);
	
	
	
}
