package com.whistle.web.a.basic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.whistle.web.dao.UserDao;
import com.whistle.web.vo.User;

public class WhistleAuthenticationSuccessHandler implements AuthenticationSuccessHandler 
{
	@Autowired
	UserDao userDao;
	
   @Override
   public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) 
		   throws IOException,  ServletException {
      
		   String uid = authentication.getName();
		   User user = userDao.getUserByUid(uid);
		   
		   String type = user.getDefaultRole();
		  // String type = "ROLE_TEACHER";
		   
		   String targetUrl = "/basic/login";
	   
		   if(type.equals("ROLE_ADMIN"))
		   {
			   targetUrl = "/main/index?authentication=Admin";
		   
			   RedirectStrategy redirectStategy = new DefaultRedirectStrategy();
			   redirectStategy.sendRedirect(request, response, targetUrl);
		   }
		   else if(type.equals("ROLE_TEACHER"))
		   {
			   targetUrl = "/main/index?authentication=Teacher";
		   
			   RedirectStrategy redirectStategy = new DefaultRedirectStrategy();
			   redirectStategy.sendRedirect(request, response, targetUrl);
		   }
		   else
		   {
			   targetUrl = "/main/index?authentication=User";
			   
			   RedirectStrategy redirectStategy = new DefaultRedirectStrategy();
			   redirectStategy.sendRedirect(request, response, targetUrl);
		   }
	   }
}