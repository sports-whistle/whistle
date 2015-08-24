package com.whistle.web.a.fanzone.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/fanzone/dic/*")
public class FanPhotoVideoController 
{
	@RequestMapping("dicMain")
	public String carsStart()
	{
		return "/WEB-INF/view/fanzone/dic/dicMain.jsp";
	}
}