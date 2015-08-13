package com.whistle.web.a.basic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		emblemUrlInTeams  = teamDao.getTeamsEmblemUrl("Soccer");
		emblemUrlInTeams  = teamDao.getTeamsEmblemUrl("Baseball");
		/*emblemUrlInTeams  = teamDao.getTeamsEmblemUrl("Basketball");
		emblemUrlInTeams  = teamDao.getTeamsEmblemUrl("Vollyball");*/

		model.addAttribute("emblemUrlInTeams",emblemUrlInTeams);
		
		return "/WEB-INF/view/basic/regMember.jsp";
	}
	
	@RequestMapping(value="regMember", method=RequestMethod.POST)
	public String regMember(User user, Model model)
	{
		userDao.regUser(user);
		
		return "/WEB-INF/view/index.jsp";
	}
}
