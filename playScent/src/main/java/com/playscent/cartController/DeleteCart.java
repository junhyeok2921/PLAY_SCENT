package com.playscent.cartController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.frontcontroller.command;
import com.playscent.model.CartDAO;

/*@WebServlet("/DeleteCart")*/
public class DeleteCart implements command{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int fav_idx = Integer.parseInt(request.getParameter("fav_idx")); // 장바구니 식별자 번호 건너옴.
		System.out.println("삭제할 장바구니식별자: " + fav_idx);
	
		CartDAO cdao = new CartDAO();
		int cnt = cdao.deleteCart(fav_idx);
		
	    if(cnt> 0) {
	    	System.out.println("삭제성공");
	    } else {
	    	System.out.println("삭제실패");
	    }
	    
	    
	    return "Cart.jsp";
	}

}
