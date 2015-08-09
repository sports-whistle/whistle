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
import com.whistle.web.vo.Games;
import com.whistle.web.vo.Parties;

@Controller
@RequestMapping("/fanzone/cars/*")
public class CarsController 
{
	
	@Autowired
	GamesDao gamesDao; 
	
	@Autowired
	PartiesDao partiesDao; 
	
	
	@RequestMapping("carsStart")
	public String carsStart()
	{
		return "/WEB-INF/view/fanzone/cars/carsStart.jsp";
	}
	
	@RequestMapping("carsMatchPlanChk")
	public String carsMatchPlanChk(Model model)
	{
		List<Games> list = gamesDao.getGames();
		
		// pageContext??? 에 list값 저장함
		// 다른페이지 까지 데이타 공유 안 되는거 같음..
		model.addAttribute("list", list);
		
//		request.setAttribute("list", list);
		
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
		
//		if(partyId != null)
//		{
//			partiesDao.updateRealRegCnt(partyId);
//		}
		
		List<Parties> partyList = partiesDao.getParties();
		
		// 사용자가 선택한 경기 정보 가져오기 
		Games game = gamesDao.getGame(c);
		
		model.addAttribute("game", game);
		model.addAttribute("partyList", partyList);
	
		return "/WEB-INF/view/fanzone/cars/carsRegChk.jsp";
	}
	
	@RequestMapping(value = "carsReg", method = RequestMethod.GET)
	public String carsReg(String c, Model model, HttpServletRequest request)
	{
//		int isDirectReg = 0; 
//		if(c.equals("directReg"))
//		{
//			isDirectReg = 1; 
//			model.addAttribute("isDirectReg", isDirectReg);
//		}
//		else
//		{
//			isDirectReg = 2; 
//			model.addAttribute("isDirectReg", isDirectReg);
			Games game = gamesDao.getGame(c);	
			model.addAttribute("game", game);
//		}
		
		return  "/WEB-INF/view/fanzone/cars/carsReg.jsp";
	}
	
	@RequestMapping(value="carsReg", method=RequestMethod.POST)
	public String carsReg(Parties p, String c, Model model)
	{
		model.addAttribute("directCarsReg", false);
		// 선택한 날짜로 등록이 되어야함
		Games game = gamesDao.getGame(c);
		partiesDao.addParties(p);
		
		model.addAttribute("game", game);
		model.addAttribute("party", p);

		//		return  "redirect:carsRegChk";  // 다른 컨트롤러로 넘어간다 하지만 값을 넘겨주지 않음
//		return "/whistleHtml/carsRegChk.jsp"; // 값 전달 안됨..
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
//		return "redirect:carsParticipate";   // 왜 이렇게 하면 페이지 오류가 나지??
	}
}