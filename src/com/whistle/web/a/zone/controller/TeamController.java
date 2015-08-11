package com.whistle.web.a.zone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/zone/team/")
public class TeamController 
{
	@RequestMapping("teamInfo")
	public String teamInfo()
	{
		return "/WEB-INF/view/zone/team/teamInfo.jsp"; 
	}
}
