package com.whistle.web.a.zone.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.whistle.web.dao.CheerSongDao;
import com.whistle.web.dao.TeamDao;
import com.whistle.web.vo.CheerSong;
import com.whistle.web.vo.Team;

@Controller
@RequestMapping("/zone/team/")
public class TeamController 
{
	
	@Autowired
	TeamDao teamDao;
	
	@Autowired
	CheerSongDao cheerSongDao;
	
   @RequestMapping("teamInfo")
   public String teamInfo(HttpServletRequest request, Model model)
   {	
	   
		String teamId = request.getParameter("teamId");
		Team team = null;
		List<CheerSong> songs = null;
		if(teamId!=null){
			team = teamDao.getTeamById(teamId);
			model.addAttribute("team",team);
			
			songs = cheerSongDao.getCheerSongsByTeamId(teamId);
			model.addAttribute("songs", songs);
			return "/WEB-INF/view/zone/team/teamInfo.jsp"; 
		}
		
		return "/WEB-INF/view/zone/team/teamInfo.jsp"; 
   }
   
   @RequestMapping("teams")
   public String teams()
   {
      return "/WEB-INF/view/zone/team/teams.jsp"; 
   }
   
   @RequestMapping("teamsOfRegion")
   public String teamsOfRegion(HttpServletRequest request, Model model)
   {
	   String region = request.getParameter("region");
	   
	   if(region!=null){
		   List<Team> teams = teamDao.getTeamsWithOneColumn("regionName", region);
		   model.addAttribute("teams", teams);
		   
		   return "/WEB-INF/view/zone/team/teamsOfRegion.jsp";
	   }else{
		   
		   return "/WEB-INF/view/zone/team/teamsOfRegion.jsp"; 
	   }

   }
   
}
