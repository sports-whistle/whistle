package com.whistle.web.a.zone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ZoneTeamMenuController 
{
   @RequestMapping("zone/zoneTeams/teams")
   public String teams()
   {
      return "/WEB-INF/view/zone/zoneTeams.jsp"; 
   }
   @RequestMapping("zone/zoneTeams/teamMenu")
   public String teamMenu()
   {
      return "/WEB-INF/view/zone/teamMenu.jsp"; 
   }
}