package com.whistle.web.a.zone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ZoneMainController
{
	// ZONE의 첫 페이지 
	@RequestMapping("/zone/main/zoneMain")
	public String zoneMain() 
	{
		return "/WEB-INF/view/zone/zoneMain.jsp";

	}
}
