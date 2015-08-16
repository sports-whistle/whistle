package com.whistle.web.a.index.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController 
{
	@RequestMapping("/main/index")
	public String index(String authentication, Model model)
	{
		if(authentication != null)
		{
			if(authentication.equals("Admin"))
			{
				model.addAttribute("authentication", authentication);
			}
			if(authentication.equals("Teacher"))
			{
				model.addAttribute("authentication", authentication);
			}
		}
	
		
		/*switch(authentication)
		{
			case "Admin":
				model.addAttribute("authentication", authentication);
				break;
				
			case "Teacher":
				model.addAttribute("authentication", authentication);
				break;
				
			case "User":
				break;
				
			default:
				model.addAttribute("authentication", authentication);
				break; 
		
		}*/
		return "/WEB-INF/view/index.jsp";
	}
}