package com.playscent.cartController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.frontcontroller.command;

//@WebServlet("/OrderCart")
public class OrderCart implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 1. 한글 인코딩부터 하자.
		response.setContentType("text/html;charset=UTF-8");
		
		String[] pfIdx_arr = request.getParameterValues("pfIdx");
		System.out.println("체크 개수 "+pfIdx_arr.length);
		String[] quan_arr = request.getParameterValues("quan");
		
		for(int i=0; i < pfIdx_arr.length; i++) {
			System.out.println(pfIdx_arr[i]);
		}
//		System.out.println("수량 배열 "+quan_arr.length);

		return null;
	}

}
 