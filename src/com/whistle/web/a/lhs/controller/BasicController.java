package com.whistle.web.a.lhs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/basic/*")
public class BasicController {

	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(){
		
		return "/WEB-INF/view/basic/login.jsp";
	}
	
	@RequestMapping(value="temp", method=RequestMethod.GET)
	public String temp(){
		
		return "/WEB-INF/view/basic/temp.jsp";
	}
	
	
	@RequestMapping(value="reg-member", method=RequestMethod.GET)
	public String regMember(){
		
		return "/WEB-INF/view/basic/reg-member.jsp";
	}
	
}
