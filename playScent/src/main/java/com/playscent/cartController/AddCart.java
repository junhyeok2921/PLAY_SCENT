package com.playscent.cartController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.playscent.frontcontroller.command;
import com.playscent.model.CartDAO;
import com.playscent.model.CartDTO;
import com.playscent.model.CartPerfumeDTO;

//@WebServlet("/AddCart")
public class AddCart implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 향수 식별자번호가 날라 올것이다.
		String perfume_idx = (String)request.getParameter("pfIdx");
		
		
		String perfume = (String)request.getParameter("quantity");

		int perfumeIDX = Integer.parseInt(perfume_idx); // 숫자로 변환.
		System.out.println("향수 식별자" +perfumeIDX);
		// 향수 수량
		int perfume_count = Integer.parseInt(perfume); // 숫자로 변환.
		System.out.println("향수 수량" +perfume_count);
		
				
		//회원 아이디 가져오기.
		 HttpSession session = request.getSession();
		 String user_id = (String)session.getAttribute("user_id");
		 System.out.println("유져id" +user_id);

		// db에서 향수데이터 찾아오자.
		CartDAO dao = new CartDAO();
		CartPerfumeDTO perfumeDTO = dao.selectPerfume(perfumeIDX); // 향수 정보 데이터가 담긴 DTO
		perfumeDTO.setPf_quantity(perfume_count); // 향수 수량도 셋팅해줌.
		System.out.println("향수 데이터" +perfumeDTO.getPf_brand());
		
		// 요 모아진 데이터를 이제 장바구니에 넣을 DTO객체를 만들어서 그안데 필요한 정보를 넣어 장바구니 테이블에 넣어주자.
		CartDTO cdto = new CartDTO(user_id,perfumeIDX,perfume_count);
		cdto.setPF_BRAND(perfumeDTO.getPf_brand());
		cdto.setPF_NAME(perfumeDTO.getPf_name());
		cdto.setPF_PRICE(perfumeDTO.getPf_price());
		cdto.setPF_IMAGE(perfumeDTO.getPf_image()); 
		// 나머지 내용들도 SET해줘서 장바구니DB에 저장시켜준다.
		
		int res = dao.addCart(cdto); // db에 장바구니 정보저장.
		
		if(res > 0) {
			request.setAttribute("perfumeImfo", perfumeDTO); //향수 데이터 셋팅해서 장바구니페이지로 가져가자.
			System.out.println("장바구니 저장 성공");
			return "Cart.jsp";
		} else {
			System.out.println("잘선택해주세요.");
			return "PerfumeDetail.jsp";
		}
		
	}

}
