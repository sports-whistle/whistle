package com.whistle.web.a.zone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/zone/stadium/*")
public class StadiumController {

	@RequestMapping("famousFoodAndSleepInfo")
	public String famousFoodAndSleepInfo()
	{
		return "/WEB-INF/view/zone/stadium/famousFoodAndSleepInfo.jsp";
	}
	
	@RequestMapping("stadiumInfo")
	public String stadiumInfo()
	{
		return "/WEB-INF/view/zone/stadium/stadiumInfo.jsp";
	}
	
	@RequestMapping("stadiumSeatInfo")
	public String stadiumSeatInfo()
	{
		return "/WEB-INF/view/zone/stadium/stadiumSeatInfo.jsp";
	}
	
	@RequestMapping("stadiumVisitInfo")
	public String stadiumVisitInfo()
	{
		return "/WEB-INF/view/zone/stadium/stadiumVisitInfo.jsp";
	}
	
}
