package com.whistle.web.a.zone.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.whistle.web.dao.TeamDao;
import com.whistle.web.dao.TicketInfoDao;
import com.whistle.web.dao.TicketSiteDao;
import com.whistle.web.vo.Team;
import com.whistle.web.vo.TicketInfo;
import com.whistle.web.vo.TicketSite;

@Controller
@RequestMapping("/zone/selectedTeam/ticket/*")
public class TicketController {

	@Autowired
	TeamDao teamDao;
	
	@Autowired
	TicketInfoDao ticketInfoDao;
	
	@Autowired
	TicketSiteDao ticketSiteDao;
	
	@RequestMapping("stadiumSeatsInfo")
	public String stadiumSeatInfo(HttpServletRequest request, Model model)
	{
		String teamId = request.getParameter("teamId");
		Team team = null;
		TicketInfo ticketInfo = null;
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
			ticketInfo = ticketInfoDao.getTicketInfo(teamId);
			
			
			model.addAttribute("team",team);
			model.addAttribute("ticketInfo", ticketInfo);
			return "/WEB-INF/view/zone/ticket/stadiumSeatsInfo.jsp";
		}
		
		return "/WEB-INF/view/zone/ticket/stadiumSeatsInfo.jsp";
	}
	
	@RequestMapping("ticketMenu")
	public String ticketMenu(HttpServletRequest request, Model model)
	{	
		String teamId = request.getParameter("teamId");
		Team team = null;
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
			model.addAttribute("team",team);
			return "/WEB-INF/view/zone/ticket/ticketMenu.jsp";
		}
		
		return"/WEB-INF/view/zone/ticket/ticketMenu.jsp";
	}
	
	@RequestMapping("ticketLink")
	public String ticketLink(HttpServletRequest request, Model model)
	{
		String teamId = request.getParameter("teamId");
		Team team = null;
		List<TicketSite> ticketSites = null;
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
			ticketSites = ticketSiteDao.getTicketSitesOfATeam(teamId);
			
			model.addAttribute("ticketSites", ticketSites);
			model.addAttribute("team",team);
			
			
		
			return "/WEB-INF/view/zone/ticket/ticketLink.jsp";
		}
		return "/WEB-INF/view/zone/ticket/ticketLink.jsp"; 
	}
	
	
	
	
	@RequestMapping("ticketPrice")
	public String ticketPrice(HttpServletRequest request, Model model)
	{
		String teamId = request.getParameter("teamId");
		Team team = null;
		TicketInfo ticketInfo = null;
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
			ticketInfo = ticketInfoDao.getTicketInfo(teamId);
			
			
			model.addAttribute("team",team);
			model.addAttribute("ticketInfo", ticketInfo);
			return "/WEB-INF/view/zone/ticket/ticketPrice.jsp";
		}
		return "/WEB-INF/view/zone/ticket/ticketPrice.jsp";
	}
	
}
