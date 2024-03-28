<<<<<<< HEAD
package com.playscent.Reviewcontroller;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.playscent.frontcontroller.command;
import com.playscent.model.ReveiwDTO;
import com.playscent.model.ReviewDAO;


/* @WebServlet("/ReviewService") */
public class ReviewService implements command  {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//1. 인코딩 작업
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//2. 데이터 꺼내오기
		String REVIEW_STAR = request.getParameter("rating");
		String REVIEW_CONTENT = request.getParameter("contents");
		String MEM_ID = request.getParameter("MEM_ID");
		/* int REVIEW_IDX = Integer.parseInt(request.getParameter("REVIEW_IDX")); */
		System.out.println(REVIEW_STAR);
		System.out.println(REVIEW_CONTENT);
		System.out.println(MEM_ID);
		//3. 데이터베이스에 해당 내용 전달하기! DAO 클래스
		
		ReviewDAO dao = new ReviewDAO();
		ReveiwDTO dto = new ReveiwDTO();
		
		
		System.out.println(dto);
		dto.setREVIEW_STAR(REVIEW_STAR);
		dto.setREVIEW_CONTENT(REVIEW_CONTENT);
		dto.setMEM_ID(MEM_ID);
		/* dto.setREVIEW_IDX(REVIEW_IDX); */
		int result = dao.sendReview(dto);
		
		
		// 4. 결과처리 
		
		if(result >0 ) {
			
			System.out.println("리뷰 성-_-공vV");
			return "Reviewlist.jsp";
			
		}else {System.out.println("리뷰 실패 x_x");}

		return "Reviewlist.jsp";
	}
	
=======
package com.playscent.Reviewcontroller;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.playscent.frontcontroller.command;
import com.playscent.model.ReveiwDTO;
import com.playscent.model.ReviewDAO;


/* @WebServlet("/ReviewService") */
public class ReviewService implements command  {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//1. 인코딩 작업
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//2. 데이터 꺼내오기
		String REVIEW_STAR = request.getParameter("rating");
		String REVIEW_CONTENT = request.getParameter("contents");
		String MEM_ID = request.getParameter("MEM_ID");
		/* int REVIEW_IDX = Integer.parseInt(request.getParameter("REVIEW_IDX")); */
		System.out.println(REVIEW_STAR);
		System.out.println(REVIEW_CONTENT);
		System.out.println(MEM_ID);
		//3. 데이터베이스에 해당 내용 전달하기! DAO 클래스
		
		ReviewDAO dao = new ReviewDAO();
		ReveiwDTO dto = new ReveiwDTO();
		
		
		System.out.println(dto);
		dto.setREVIEW_STAR(REVIEW_STAR);
		dto.setREVIEW_CONTENT(REVIEW_CONTENT);
		dto.setMEM_ID(MEM_ID);
		/* dto.setREVIEW_IDX(REVIEW_IDX); */
		int result = dao.sendReview(dto);
		
		
		// 4. 결과처리 
		
		if(result >0 ) {
			
			System.out.println("리뷰 성-_-공vV");
			return "Reviewlist.jsp";
			
		}else {System.out.println("리뷰 실패 x_x");}

		return "Reviewlist.jsp";
	}
	
>>>>>>> branch 'main' of https://github.com/2023-SMHRD-KDT-AI-16/PLAY_SCENT.git
}