<<<<<<< HEAD
package com.playscent.Reviewcontroller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.frontcontroller.command;
import com.playscent.model.ReviewDAO;


/* @WebServlet("/ReviewDelete") */
public class ReviewDelete implements command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//1. 인코딩 작업
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String MEM_ID = request.getParameter("MEM_ID");
		System.out.println("삭제메소드 테스트 출력" + MEM_ID);
		int cnt = new ReviewDAO().deleteReviewAll(MEM_ID);
		if(cnt>0) {
			System.out.println("리뷰삭제성공");
			
		}else {System.out.println("리뷰삭제실패");}
		
		return "Reviewlist.jsp";
//	여기서만 정수로 받으면 됨  int  변수 = Integer.parseInt(request.getParameter("파라미터이름"));
	}
	}


=======
package com.playscent.Reviewcontroller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.frontcontroller.command;
import com.playscent.model.ReviewDAO;


/* @WebServlet("/ReviewDelete") */
public class ReviewDelete implements command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//1. 인코딩 작업
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String MEM_ID = request.getParameter("MEM_ID");
		System.out.println("삭제메소드 테스트 출력" + MEM_ID);
		int cnt = new ReviewDAO().deleteReviewAll(MEM_ID);
		if(cnt>0) {
			System.out.println("리뷰삭제성공");
			
		}else {System.out.println("리뷰삭제실패");}
		
		return "Reviewlist.jsp";
//	여기서만 정수로 받으면 됨  int  변수 = Integer.parseInt(request.getParameter("파라미터이름"));
	}
	}


>>>>>>> branch 'main' of https://github.com/2023-SMHRD-KDT-AI-16/PLAY_SCENT.git
