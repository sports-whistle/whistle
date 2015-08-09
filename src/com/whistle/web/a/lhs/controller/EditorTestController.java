package com.whistle.web.a.lhs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/editor/*")
public class EditorTestController {

	@RequestMapping(value="test", method=RequestMethod.POST)
	public String editorPost(HttpServletRequest request){
		
		String content = (String)request.getParameter("content");
		System.out.println(content);
		
		String title = (String)request.getParameter("title");
		System.out.println(title);
		return "";
	}
	
}
