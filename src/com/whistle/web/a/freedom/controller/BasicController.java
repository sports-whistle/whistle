package com.whistle.web.a.freedom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.whistle.web.dao.UserDao;
import com.whistle.web.vo.User;

@Controller
@RequestMapping("/basic/*")
public class BasicController 
{

	@Autowired
	private UserDao userDao; 
	
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(){
		
		return "/WEB-INF/view/basic/login.jsp";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(Model model){
		
		return "/WEB-INF/view/index.jsp";
	}
	
	@RequestMapping(value="temp", method=RequestMethod.GET)
	public String temp(){
		
		return "/WEB-INF/view/basic/temp.jsp";
	}
	
	
	@RequestMapping(value="reg-member", method=RequestMethod.GET)
	public String regMember(){
		
		return "/WEB-INF/view/basic/reg-member.jsp";
	}
	
	@RequestMapping(value="reg-member", method=RequestMethod.POST)
	public String regMember(User user, Model model)
	{
		userDao.regUser(user);
		
		return "/WEB-INF/view/index.jsp";
	}
}
