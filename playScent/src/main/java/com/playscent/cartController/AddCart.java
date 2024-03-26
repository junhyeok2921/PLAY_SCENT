package com.playscent.cartController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.playscent.frontcontroller.command;
import com.playscent.model.CartDAO;
import com.playscent.model.SelectedProductDTO;

//@WebServlet("/AddCart")
public class AddCart implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 향수 식별자번호가 날라 올것이다.
		String perfume_idx = (String)request.getParameter("pfIdx");
		String perfume = (String)request.getParameter("quantity");
		int perfume_count = Integer.parseInt(perfume); // 숫자로 변환.
		
		//회원 아이디 가져오기.
		 HttpSession session = request.getSession();
		 String user_id = (String) session.getAttribute("user_id");
		 
		// SelectedProductDTO product = (SelectedProductDTO) request.getAttribute("product");
		// 이번호로 db에서 해당 상품을 찾아올것이다.

		// db에서 향수데이터 찾아오자.
		CartDAO dao = new CartDAO();
	//	dao.addCart(product);
		
		
		

		return null;
	}

}
