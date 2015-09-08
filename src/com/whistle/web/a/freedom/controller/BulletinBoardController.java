package com.whistle.web.a.freedom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.whistle.web.dao.BulletinBoardDao;
import com.whistle.web.vo.BulletinBoard;

@Controller
@RequestMapping("/freedom/*")
public class BulletinBoardController {

	
/*	@Autowired
	private BulletinBoardDao bulletinBoardDao; 
	@Autowired
	private BulletinBoard bulletionBoard; */
	
	@RequestMapping("bulletinBoard")
	public String bulltinBoard()
	{
		
		return "/WEB-INF/view/freedom/bulletinBoard.jsp";
	}
	
	@RequestMapping(value ="regBulletinBoard", method=RequestMethod.GET)
	public String regbulltinBoard(String c,Model model)
	{
		return "/WEB-INF/view/freedom/regBulletinBoard.jsp";
	}
	
	
	@RequestMapping(value ="regBulletinBoard", method=RequestMethod.POST)
	public String regbulltinBoard(Model model)
	{
		return "/WEB-INF/view/freedom/bulletinBoard.jsp";
	}
}
