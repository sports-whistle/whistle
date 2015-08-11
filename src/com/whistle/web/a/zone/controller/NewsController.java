package com.whistle.web.a.zone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController 
{
	@RequestMapping("/zone/news/teamNewsInfo")
	public String teamNewsInfo()
	{
		return "/WEB-INF/view/zone/news/teamNewsInfo.jsp";
	}
}
