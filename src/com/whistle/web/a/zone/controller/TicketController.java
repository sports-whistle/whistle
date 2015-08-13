package com.whistle.web.a.zone.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.whistle.web.dao.TeamDao;
import com.whistle.web.vo.Team;

@Controller
@RequestMapping("/zone/ticket")
public class TicketController {

	@Autowired
	TeamDao teamDao;
	
	@RequestMapping("stadiumSeatsInfo")
	public String stadiumSeatInfo(HttpServletRequest request, Model model)
	{
		String teamId = request.getParameter("teamId");
		Team team = null;
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
			model.addAttribute("team",team);
			return "/WEB-INF/view/zone/ticket/stadiumSeatsInfo.jsp";
		}
		
		return "/WEB-INF/view/zone/ticket/stadiumSeatsInfo.jsp";
	}
	
	@RequestMapping("ticketMenu")
	public String ticketInfo(HttpServletRequest request, Model model)
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
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
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
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
			model.addAttribute("team",team);
			return "/WEB-INF/view/zone/ticket/ticketPrice.jsp";
		}
		return "/WEB-INF/view/zone/ticket/ticketPrice.jsp";
	}
	
}
