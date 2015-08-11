package com.whistle.web.a.zone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/zone/ticket")
public class TicketController {

	@RequestMapping("stadiumSeatInfo")
	public String stadiumSeatInfo()
	{
		return "/WEB-INF/view/zone/ticket/stadiumSeatInfo.jsp";
	}
	
	@RequestMapping("ticketInfo")
	public String ticketInfo()
	{
		return"/WEB-INF/view/zone/ticket/ticketInfo.jsp";
	}
	
	@RequestMapping("ticketLink")
	public String ticketLink()
	{
		return "/WEB-INF/view/zone/ticket/ticketLink.jsp"; 
	}
	
	@RequestMapping("ticketPrice")
	public String ticketPrice()
	{
		return "/WEB-INF/view/zone/ticket/ticketPrice.jsp";
	}
	
}
