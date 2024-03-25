package com.playscent.cartController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.playscent.model.CartDAO;
import com.playscent.model.SelectedProductDTO;

@WebServlet("/AddCart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// 상품 식별자 번호가 날라 올것이다.
			int product_ind = (Integer)request.getAttribute("ind");
			// 상품 정보가 담긴 DTO도 넘오올것이다.
			SelectedProductDTO product= (SelectedProductDTO)request.getAttribute("product");
			// 이번호로 db에서 해당 상품을 찾아올것이다.
		
			 CartDAO dao = new CartDAO();
			 dao.addCart(product);
		
	}

}
