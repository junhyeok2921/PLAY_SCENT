package com.playscent.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.playscent.frontcontroller.command;


/*@WebServlet("/LogoutService")*/
public class LogoutService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession();
		// 로그인할때 받은 accessToken
	 //	 String accessToken = (String)session.getAttribute("accessToken");
		// System.out.println("로그아웃 서블릿 accessToken있니? "+ accessToken);
  		session.removeAttribute("user_id");
  		session.removeAttribute("accessToken");
  		System.out.println("로그아웃 성공 입니다!.");
		
  		// 네이버 로그아웃 해주는 리다이렉트 url;
	 //	return "https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id=xoUly1_dRlwHdjv5nQa7&client_secret=xoUly1_dRlwHdjv5nQa7&access_token="+accessToken+"&service_provider=NAVER";
		return "Main.jsp";
	}

} 
