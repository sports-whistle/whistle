package com.whistle.web.a.zone.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.whistle.web.dao.TeamDao;
import com.whistle.web.vo.Team;

@Controller
@RequestMapping("/zone/management/*")
public class ManagementController {
	
	@Autowired
	TeamDao teamDao;
	
	@RequestMapping(value="team-management", method=RequestMethod.GET)
	public String managementGet(){
		
		
		
		return "/resource/test/team-management.jsp";
	}
	
	
	@RequestMapping(value="team-management", method=RequestMethod.POST)
	public String managementPost(Team newTeam, HttpServletRequest request,
			Model model){
		
		if(request.getParameter("btn").equals("search")){
			
			List<Team> teams = teamDao.getTeamsWithOneColumn(request.getParameter("column"), request.getParameter("keyword"));
			model.addAttribute("teams", teams);
			
			return "/resource/test/team-management.jsp";
		}else if(request.getParameter("btn").equals("insert-string-data")){
			teamDao.addTeam(newTeam);
			
			Team team = teamDao.getTeamById(newTeam.getTeamId());
			List<Team> teams = new ArrayList<Team>();
			teams.add(team);
			model.addAttribute("teams", teams);
			
			return "/resource/test/team-management.jsp";
		}
		
		
		
		return "";
	}
	
	
	@RequestMapping(value="team-management-file", method=RequestMethod.POST)
	public String managementPostFile(HttpServletRequest request,
			Model model, MultipartFile file){
		
		//if(request.getParameter("btn").equals("insert-emblem-image"))
			if(request.getParameter("btn").equals("update-emblem-image"))
		{
				String subContext = "/zone";
				String category = "/team/emblem";
				
				if(!file.isEmpty())
				{
					String emblemUrl = this.uploadFileOnServer(request, file, subContext, category);
					teamDao.updateOneValue(request.getParameter("teamId"), "EmblemUrl", emblemUrl);
					
					Team updatedTeam = teamDao.getTeamById(request.getParameter("teamId"));
					List<Team> teams = new ArrayList<Team>();
					teams.add(updatedTeam);
					
					model.addAttribute("teams", teams);
					
					return "/resource/test/team-management.jsp";
				}
				else
				{
					model.addAttribute("errorMsg","추가된 파일이 없습니다.");
					return "/resource/test/team-management.jsp";
				}
		}
		return "";
	}
	
	
	/*파일을 서버에 올리고 파일의 상대주소를 리턴한다.*/
	private String uploadFileOnServer(HttpServletRequest request, MultipartFile file, String subContext, String category)
	{
		ServletContext application = request.getServletContext();
		
		String url = "/resource"+subContext+category;
		String path = application.getRealPath(url);
		String temp = file.getOriginalFilename();//part.getSubmittedFileName();
		String fname = temp.substring(temp.lastIndexOf("\\")+1);
		String fpath = path + "\\" + fname;
		
		
		try {
			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);
			
			byte[] 대야 = new byte[1024];
			int len = 0;
			
			while((len = ins.read(대야, 0, 1024)) >= 0)
				outs.write(대야, 0, len);
			
			outs.flush();
			outs.close();
			ins.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//part.getInputStream();
		
		
		
		return url+"/"+fname;
	}
	
}
