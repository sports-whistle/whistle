package com.whistle.web.a.index.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController 
{
	@RequestMapping("/main/index")
	public String carsStart()
	{
		return "/WEB-INF/view/index.jsp";
	}
}