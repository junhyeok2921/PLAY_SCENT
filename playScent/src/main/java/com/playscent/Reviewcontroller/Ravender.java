package com.playscent.Reviewcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.frontcontroller.command;

/**
 * Servlet implementation class Ravender
 */
@WebServlet("/Ravender")
public class Ravender extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String result = "man SweetSpicySyntheticOrientalWoody Pimento  Provençal lavender absolute  New Caledonian sandalwood";
		
		response.sendRedirect("http://127.0.0.1:5000/?perfume="+result);
		
	}

}
