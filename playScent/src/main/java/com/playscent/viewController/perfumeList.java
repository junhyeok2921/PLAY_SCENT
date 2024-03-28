package com.playscent.viewController;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.playscent.frontcontroller.command;
/*import com.playscent.model.ParseDTO;*/
import com.playscent.model.PerfumeDAO;
import com.playscent.model.PerfumeDTO;


/* @WebServlet("/perfumeList") */
public class perfumeList implements command {
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//1. 인코딩 작업
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String data = request.getParameter("perfume");
		data = data.replace("[", "");
		data = data.replace("]", "");
		data = data.replace(" ", "");
		data = data.trim();
		System.out.println("데이터 출력"+data);
		PerfumeDTO pdto = new PerfumeDTO();
		String [] data2 = data.split(",",0);
		PerfumeDAO dao = new PerfumeDAO();
		// , 기준으로 잘라봄 
		 for (String s : data2) {System.out.println(s);}
		 
		 for(int i =0; i< data2.length; i++) {
			 System.out.println("for test");
			 if(i == 0) { pdto.setParse1(Integer.parseInt(data2[i]));
			 }else if(i == 1) { pdto.setParse2(Integer.parseInt(data2[i]));
			 } else if(i == 2) { pdto.setParse3(Integer.parseInt(data2[i]));
			 } else if(i == 3) { pdto.setParse4(Integer.parseInt(data2[i]));
		     } else if(i == 4) { pdto.setParse5(Integer.parseInt(data2[i]));
             }	
		}
		 
	
		 
		System.out.println("출력확인pdto"+pdto); 
		System.out.println(data);
		String data3= data.toString();
		
		System.out.println("데이타3탄" + data3);
		data3 = data3.replace("[","");
		String myperfume = data3.replace("]","");
		/*
		 * int[] numdata = new int[data2.length]; for (int i = 0; i < data2.length; i++)
		 * { numdata[i] = Integer.parseInt(data2[i]); }
		 * 
		 * System.out.println("int값 테스트" + numdata);
		 */
		
		
		
		
		
		// 4. 결과처리 
		
//		if(result >0 ) {
//			
//			System.out.println("성-_-공vV");
//			
//			
//		}else {System.out.println("실패 x_x");}
//
//		return "Main.jsp";
//	}
//		
		
		
//		
//		
//		System.out.println("데이타3탄 슬라이스" + myperfume); 
//		List<d> perfumes =dao.showperfume(myperfume);
//		System.out.println("테스트마지막"+perfumes);
		
		
	return null;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
}




		