package com.playscent.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PerfumeService")
public class PerfumeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 인코딩 작업
		request.setCharacterEncoding("UTF-8");

		// 2. 데이터 꺼내오기
		String pfIdx = request.getParameter("pfIdx");

	}

}
