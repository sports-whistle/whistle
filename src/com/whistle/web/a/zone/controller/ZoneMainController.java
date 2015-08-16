package com.whistle.web.a.zone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ZoneMainController
{
	@RequestMapping("/zone/main/zoneMain")
	public String zoneMain() 
	{

		return "/WEB-INF/view/zone/zoneMain.jsp";

	}
}
