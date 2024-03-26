package com.playscent.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.cartController.AddCart;
import com.playscent.cartController.DeleteCart;
import com.playscent.cartController.OrderCart;
import com.playscent.controller.JoinService;

@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 지니 frontcontroller 전환.

		// 어떤 요청이 들어왔는지 확인
		String requestURI = request.getRequestURI();
		System.out.println("요청이 들어온 주소 : " + requestURI);

		// ContextPath 확인
		String contextPath = request.getContextPath();
		System.out.println("ContextPath : " + contextPath);

		// 문자열 자르기
		// subString(start) : start 위치부터 끝까지 문자열 자르기
		// subString(start, end) : start 위치부터 end 전까지 문자열 자르기
		String result = requestURI.substring(contextPath.length());
		System.out.println("요청 서블릿 : " + result);

		request.setCharacterEncoding("UTF-8");
		String moveURL = null;
		command service = null; // 인터페이스로 업캐스팅으로 받을거임.

		if (result.equals("/JoinService.do")) { // naver로그인 기능
			service = new JoinService();
		} else if (result.equals("/AddCart.do")) { // 장바구니 상품추가 기능.
			service = new AddCart(); 
		} else if (result.equals("/DeleteCart.do")) { // 장바구니 해당상품 삭제기능.
			service = new DeleteCart();
		} else if (result.equals("/OrderCart.do")) { 
			service = new OrderCart();
	    }
		
		// 새로 추가된 서블릿파일이 있다면 여기 .equals("") 안에 서블릿 url 넣으세요!.
		/*
		 
		 * else if (result.equals("/LogoutService.do")) { service = new LogoutService();
		 * } else if (result.equals("/UpdateService.do")) { service = new
		 * UpdateService(); } else if (result.equals("/DeleteService.do")) { service =
		 * new DeleteService(); } else if (result.equals("/DelMessageAllService.do")) {
		 * service = new DelMessageAllService(); } else if
		 * (result.equals("/DelMessageService.do")) { service = new DelMessageService();
		 * } else if (result.equals("/MessageService.do")) { service = new
		 * MessageService(); } else if (result.equals("/EmailCheckService.do")) {
		 * service = new EmailCheckService(); } else if
		 * (result.equals("/BoardService.do")) { service = new BoardService(); }
		 */

		moveURL = service.execute(request, response);
		if (moveURL != null) {
			response.sendRedirect(moveURL);
		}

	}

}
