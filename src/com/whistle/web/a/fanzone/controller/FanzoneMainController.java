package com.whistle.web.a.fanzone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/fanzone/*")
public class FanzoneMainController 
{
	@RequestMapping(value="fanzoneMain", method=RequestMethod.GET)
	public String fanzoneMain()
	{
		return"WEB-INF/view/fanzone/fanZoneMain.jsp";
	}
}
