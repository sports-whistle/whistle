package com.whistle.web.a.basic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.whistle.web.dao.TeamDao;
import com.whistle.web.dao.UserDao;
import com.whistle.web.vo.Team;
import com.whistle.web.vo.User;

@Controller
@RequestMapping("/basic/*")
public class RegMemberController {

	@Autowired
	private UserDao userDao; 
	
	@Autowired
	private TeamDao teamDao; 
	
	@RequestMapping(value="regMember", method=RequestMethod.GET)
	public String regMember(Model model){
		
		List<Team> emblemUrlInTeams = null; 
		emblemUrlInTeams  = teamDao.getAllTeamsEmblemUrl();
		model.addAttribute("emblemUrlInTeams",emblemUrlInTeams);
		
		return "/WEB-INF/view/basic/regMember.jsp";
	}
	
	@RequestMapping(value="regMember", method=RequestMethod.POST)
	public String regMember(User user, Model model)
	{
		// 회원등록 내용 조건 검사 
		
		// 입력한 내용이 빠진부분이 없는지 검사 
		
		
		//비밀번호 일치 하지 않을 경우 
		if(!(user.getPwd().equals(user.getPwdConfiguration())))
		{
			String error = "pwdError";
			model.addAttribute("pwdError", error);
			
			return "/WEB-INF/view/basic/regMember.jsp";
		}
		
		userDao.regUser(user);
		
		return "/WEB-INF/view/index.jsp";
	}
}
