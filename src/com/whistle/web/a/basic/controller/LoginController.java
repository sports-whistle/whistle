package com.whistle.web.a.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/basic/*")
public class LoginController 
{
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(String a, Model model)
	{
		return "/WEB-INF/view/basic/login.jsp";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(Model model)
	{
		return  "/WEB-INF/view/basic/login.jsp";
	}
	
	@RequestMapping(value="temp", method=RequestMethod.GET)
	public String temp()
	{
		return "/WEB-INF/view/basic/temp.jsp";
	}
}
