package com.whistle.web.a.zone.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.whistle.web.dao.CheerSongDao;
import com.whistle.web.dao.TeamDao;
import com.whistle.web.vo.Team;

@Controller
@RequestMapping("/zone/selectedZone/*")
public class SelectedZoneController 
{
	
	@Autowired
	TeamDao teamDao;
	
	@Autowired
	CheerSongDao cheerSongDao;
	
	
	// 선택한 지역에 존재하는 스포츠팀들 페이지 
   @RequestMapping("teamsOfRegion")
   public String teams(HttpServletRequest request, Model model)
   {
	   String region = request.getParameter("region");
	   
	   if(region!=null)
	   {
		   List<Team> teams = teamDao.getTeamsWithOneColumn("regionName", region);
		   model.addAttribute("teams", teams);
		   
		   return "/WEB-INF/view/zone/team/teamsOfRegion.jsp";
	   }
	   else
	   {
		   return "/WEB-INF/view/zone/team/teamsOfRegion.jsp"; 
	   }
      //return "/WEB-INF/view/zone/teamsInZone.jsp"; 
   }
   
   
   // 선택한 스포츠팀에서 팀, 티켓, 경기장, 뉴스 정보를 알 수 있는 페이지 
   @RequestMapping("teamMenu")
   public String teamMenu()
   {
      return "/WEB-INF/view/zone/teamMenu.jsp"; 
   }
}