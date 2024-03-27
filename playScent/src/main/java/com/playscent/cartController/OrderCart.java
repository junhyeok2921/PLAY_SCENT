package com.playscent.cartController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.playscent.frontcontroller.command;
import com.playscent.model.CartDAO;
import com.playscent.model.CartDTO;
import com.playscent.model.OrderPfDTO;
import com.playscent.model.UserDAO;
import com.playscent.model.UserInfoDTO;

//@WebServlet("/OrderCart")
public class OrderCart implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 1. 한글 인코딩부터 하자.
		response.setContentType("text/html;charset=UTF-8");
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id"); // user_id 
		String []favIdx_arr = request.getParameterValues("favIdx"); //체크박스에서 가져온 favIdx 장바구니식별자
		String []quan_arr = request.getParameterValues("quan"); // 장바구니페이지 넘어온 input number타입 의 모든 수량이 넘오음.
		System.out.println("favIdx_arr 길이 "+favIdx_arr.length);
		CartDAO cdao = new CartDAO(); // 해당회원의 전체 장바구니 내역 가져오기 위해 dao생성.
		ArrayList<CartDTO> AllCartList = cdao.allCartList(user_id); // 해당회원의 전체 장바구니 내역 가져오자.
		// System.out.println("장바구니arr "+AllCartList);
		
		// 회원정보 가져오기 위해
		UserDAO udao = new UserDAO();
		UserInfoDTO userInfo = udao.getUserInfo(user_id);
		
		// 주문결제 테이블에 저장할 DTO
		OrderPfDTO ordDTO = new OrderPfDTO();
		ordDTO.setMem_id(user_id);
		// ordDTO.setTotal_amount(null); // 주문 총금액 주문 총금액
		// ordDTO.setPaid_amount(null); // 결제 금액 결제 금액
		ordDTO.setRecipient_name(userInfo.getMemName()); // 이름.
		ordDTO.setRecipient_phone(userInfo.getMemPhone()); // 전화.
		// 향수 식별자는 아래 for문에서 넣어주자.

		// 수량만 담을 arr일 예정 근데 안쓸거같다.
	    ArrayList<Integer> quanList = new ArrayList<Integer>(); 
	    
	    for(int i=0; i < AllCartList.size(); i++) {
	    	for(String ind : favIdx_arr) {
	    		System.out.println("장바구니 식별자 AllCartList "+AllCartList.get(i).getFAV_IDX());
	    		System.out.println("장바구니 식별자 favIdx_arr "+Integer.parseInt(ind));
	    		if(AllCartList.get(i).getFAV_IDX() == Integer.parseInt(ind)) {
	    			AllCartList.get(i).setPF_COUNT(Integer.parseInt(quan_arr[i])); // 수량 변경.  수량 변경 sql도 만들어주어야함.
	    			System.out.println("일치 주문번호"+(i)+" "+Integer.parseInt(ind));
	    			System.out.println("주문수량 TEST"+(i)+" "+Integer.parseInt(quan_arr[i]));
	    			
	    			ordDTO.setPF_IDX(AllCartList.get(i).getPF_IDX()); //향수 식별자 넣어줌.
	    			ordDTO.setPF_NAME(AllCartList.get(i).getPF_NAME()); //향수 이름.
	    			ordDTO.setPF_BRAND(AllCartList.get(i).getPF_BRAND()); //향수 브랜드이름.
	    			ordDTO.setPF_PRICE(AllCartList.get(i).getPF_PRICE()); //향수 가격.
	    			ordDTO.setPF_QUANTITY(AllCartList.get(i).getPF_COUNT()); //향수 가격.
	    			ordDTO.setPF_IMAGE(AllCartList.get(i).getPF_IMAGE()); //향수 이미지.
	    			
	    			// 내가 선택한 장바구니 상품만 DB주문테이블에 저장.
	    			int result = cdao.totalOrderAdd(ordDTO);  
	    			if(result > 0){System.out.println("주문 저장 성공");
	    			}else {System.out.println("주문 저장 실패");}
	    			quanList.add(Integer.parseInt(quan_arr[i]));
	    			System.out.println("--------------주문 저장 구분 ----------------");
	    		}
	    	}
	    }
	    System.out.println("수량 리스트 "+quanList.get(0));
	      System.out.println("수량 리스트 "+quanList.get(1));
	      System.out.println("수량 리스트 "+quanList.get(2));
	    
	    
		return "TotalOrder.jsp";
	}

}
 