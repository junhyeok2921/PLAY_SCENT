package com.playscent.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.model.ParseDTO;
import com.playscent.model.PerfumeDAO;
import com.playscent.model.PerfumeDTO;

public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String keyword =  request.getParameter("keyword");
		 String keybrand = request.getParameter("keybrand");
	        PerfumeDTO pdto = new PerfumeDTO();
	        PerfumeDAO pdao = new PerfumeDAO();
	        System.out.println("키워드" + keyword);
	        List<PerfumeDTO> searchResults = pdao.searchByName(keyword);
	        System.out.println("결과확인"+searchResults);
	        request.setAttribute("searchResults", searchResults);
	        request.getRequestDispatcher("searchtest.jsp").forward(request, response);

		
		
	}

}
