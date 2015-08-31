package com.whistle.web.a.fanzone.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.whistle.web.dao.GamesDao;
import com.whistle.web.dao.PartiesDao;
import com.whistle.web.dao.TeamDao;
import com.whistle.web.vo.Games;
import com.whistle.web.vo.Parties;
import com.whistle.web.vo.Team;

@Controller
@RequestMapping("/fanzone/cars/*")
public class CarsController 
{
	@Autowired
	GamesDao gamesDao; 
	
	@Autowired
	PartiesDao partiesDao; 
	
	@Autowired
	TeamDao teamDao; 
	
	@RequestMapping("carsStart")
	public String carsStart()
	{
		return "/WEB-INF/view/fanzone/cars/carsStart.jsp";
	}
	
	@RequestMapping("carsMatchPlanChk")
	public String carsMatchPlanChk(Model model)
	{
		List<Games> list = gamesDao.getGames();
		
		model.addAttribute("list", list);
		
		return "/WEB-INF/view/fanzone/cars/carsMatchPlanChk.jsp";
	}
	
	@RequestMapping("carsRegChk")
	public String carsRegChk(String partyId, String c, String n, String y, Model model, HttpServletResponse response) throws IOException
	{
		if(n != null)
		{
			partiesDao.updateClickCnt(partyId);
		}
		
		if(y != null)
		{
			partiesDao.updateRealRegCnt(partyId);
		}
		
		List<Parties> partyList = partiesDao.getParties();
		
		// ����ڰ� ������ ��� ���� �������� 
		Games game = gamesDao.getGame(c);
		
		model.addAttribute("game", game);
		model.addAttribute("partyList", partyList);
	
		return "/WEB-INF/view/fanzone/cars/carsRegChk.jsp";
	}
	
	@RequestMapping(value = "carsReg", method = RequestMethod.GET)
	public String carsReg(String c, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		Games game = gamesDao.getGame(c);	
		model.addAttribute("game", game);
	
		//emblemUrl �������� 
		List<Team> emblemUrlInTeams = teamDao.getTeamsEmblemUrl("Baseball");
		model.addAttribute("emblemUrlInTeams",emblemUrlInTeams);

		return  "/WEB-INF/view/fanzone/cars/carsReg.jsp";
	}
	
	@RequestMapping(value="carsReg", method=RequestMethod.POST)
	public String carsReg(Parties p, String c, Model model)
	{
		model.addAttribute("directCarsReg", false);
		// ������ ��¥�� ����� �Ǿ����
		Games game = gamesDao.getGame(c);
		partiesDao.addParties(p);
		
		model.addAttribute("game", game);
		model.addAttribute("party", p);

		return  "forward:carsRegChk";  
	}
	
	
	@RequestMapping("carsParticipate")
	public String carsParticipate(String partyId, String c, Model model)
	{
		Parties party = partiesDao.getParty(partyId);
		Games game = gamesDao.getGame(c);
		
		model.addAttribute("game", game);
		model.addAttribute("party", party);
		
		return "/WEB-INF/view/fanzone/cars/carsParticipate.jsp";
	}
}