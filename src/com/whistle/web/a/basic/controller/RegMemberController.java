package com.whistle.web.a.basic.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.whistle.web.dao.UserDao;
import com.whistle.web.vo.User;

@Controller
@RequestMapping("/basic/*")
public class RegMemberController {

	@Autowired
	private UserDao userDao; 
	
	@RequestMapping(value="regMember", method=RequestMethod.GET)
	public String regMember(){
		
		return "/WEB-INF/view/basic/regMember.jsp";
	}
	
	@RequestMapping(value="regMember", method=RequestMethod.POST)
	public String regMember(User user, Model model)
	{
		userDao.regUser(user);
		
		return "/WEB-INF/view/index.jsp";
	}
}
