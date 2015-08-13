package com.whistle.web.a.zone.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.whistle.web.dao.TeamDao;
import com.whistle.web.vo.Team;

@Controller
@RequestMapping("/zone/team/")
public class TeamController 
{
	
	@Autowired
	TeamDao teamDao;
	
   @RequestMapping("teamInfo")
   public String teamInfo()
   {
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
	   System.out.println(region);
	   if(region!=null){
		   List<Team> teams = teamDao.getTeamsWithOneColumn("regionName", region);
		   model.addAttribute("teams", teams);
		   
		   return "/WEB-INF/view/zone/team/teamsOfRegion.jsp";
	   }else{
		   
		   return "/WEB-INF/view/zone/team/teamsOfRegion.jsp"; 
	   }
	   
	   

   }
   
}