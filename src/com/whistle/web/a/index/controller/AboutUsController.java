package com.whistle.web.a.index.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutUsController 
{
	@RequestMapping("/main/aboutUs")
	public String carsStart()
	{
		return "/WEB-INF/view/aboutUs/aboutUs.jsp";
	}
}