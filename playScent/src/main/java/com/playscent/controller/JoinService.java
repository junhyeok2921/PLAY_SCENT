package com.playscent.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.playscent.frontcontroller.command;
import com.playscent.model.NaverUserInfo;
import com.playscent.model.UserDAO;


//@WebServlet("/JoinService")
public class JoinService implements command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		// callback.jsp에서 토큰, 유저정보 받지 말고 어차피 서블릿으로 데이터 전송할꺼 
		// 서블릿에서 callback리다이렉트를 만들어서 여기서 토큰, 유저정보를 받아라!.
		
		String clientId = "xoUly1_dRlwHdjv5nQa7";//애플리케이션 클라이언트 아이디값";
	    String clientSecret = "WFGVa5C3AU";//애플리케이션 클라이언트 시크릿값";
	    String code = request.getParameter("code");
	    String state = request.getParameter("state");
	    String redirectURI = "";
	    HttpSession session = request.getSession();
	    
		try {
			redirectURI = URLEncoder.encode("http://localhost:8082/playScent/JoinService.do", "UTF-8");  // 지니주소.
		  //	redirectURI = URLEncoder.encode("http://localhost:8081/playScent/JoinService.do", "UTF-8");  // 준혁주소
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	    String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code"
	        + "&client_id=" + clientId
	        + "&client_secret=" + clientSecret
	        + "&redirect_uri=" + redirectURI
	        + "&code=" + code
	        + "&state=" + state;
	    
	    String accessToken = "";
	    String refresh_token = "";
	    
	    StringBuilder res = null;
	    
	    try {
	      URL url = new URL(apiURL);
	      HttpURLConnection con = (HttpURLConnection)url.openConnection();
	      con.setRequestMethod("GET");
	      int responseCode = con.getResponseCode();
	      BufferedReader br;
	      if (responseCode == 200) { // 정상 호출
	        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	      } else {  // 에러 발생
	        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	      }
	      String inputLine;
	      res = new StringBuilder();
	      while ((inputLine = br.readLine()) != null) {
	        res.append(inputLine);
	      }
	      br.close();
	      if (responseCode == 200) {
	       System.out.println(res.toString());  // json형태로 날라옴.
	      //  session.setAttribute("naver_res",res.toString());  // 한번 세션에 셋팅 해봤따.
	       
	        String resStr = res.toString();
	        int startIndex = resStr.indexOf("access_token\":\"") + "access_token\":\"".length();
	        int endIndex = resStr.indexOf("\"", startIndex);
	        accessToken = resStr.substring(startIndex, endIndex);
	        session.setAttribute("accessToken", accessToken);
	      //  out.println("액세스 토큰: " + accessToken); // 프로트 화면에 accessToken등 정보 보여줌.
	      //  out.println(res.toString());  // 프로트 화면에 accessToken등 정보 보여줌.
	      }
	    } catch (Exception e) {
	      // Exception 로깅
	    }
	    
	    
	    System.out.println("acc"+ accessToken);  // 이런 안뜸 ㅡㅡ
	    
	    
	    
	    // 네이버 로그인 회원정보 가져오기.
	    String token = accessToken;// 네아로 접근 토큰 값";
	    String header = "Bearer " + token; // Bearer 다음에 공백 추가
	    StringBuffer response2 = null;  // 전역으로 빼줌.
	    PrintWriter out = null;
	    
	    System.out.println("acc2 나오니?"+ token);
	    
		try { out = response.getWriter();
		} catch (IOException e){ e.printStackTrace(); }
	    
	    try {
	        String apiURL2 = "https://openapi.naver.com/v1/nid/me";
	        URL url = new URL(apiURL2);
	        HttpURLConnection con = (HttpURLConnection)url.openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("Authorization", header);
	        int responseCode = con.getResponseCode();
	        BufferedReader br;
	        if(responseCode==200) { // 정상 호출
	            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	        } else {  // 에러 발생
	            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	        }
	        String inputLine;
	        
	        response2 = new StringBuffer();
	        while ((inputLine = br.readLine()) != null) {
	           response2.append(inputLine);  // 여기에 유저정보가 담기는듯 함.
	        }
	        br.close();
	        System.out.println("2차 : " + response2.toString());  // 네이버 유저정보 나옴. 하지막 약간 다르게나옴.
	        
	        // Gson 객체 생성
	        Gson gson = new Gson();
	        
	        // Json 문자열을 JsonObject로 변환
	        JsonObject jsonObject = gson.fromJson(response2.toString(), JsonObject.class);
	      
	        // JsonObject에서 프로필 정보를 가져오기
	        String user_id = jsonObject.getAsJsonObject("response").get("id").getAsString();
	        String user_age = jsonObject.getAsJsonObject("response").get("age").getAsString();
	        String user_gender = jsonObject.getAsJsonObject("response").get("gender").getAsString();
	        String user_nick = jsonObject.getAsJsonObject("response").get("nickname").getAsString();
	        String user_name = jsonObject.getAsJsonObject("response").get("name").getAsString();
	        String user_email=jsonObject.getAsJsonObject("response").get("email").getAsString();
	        String user_mobile=jsonObject.getAsJsonObject("response").get("mobile").getAsString();
	        String user_profile=jsonObject.getAsJsonObject("response").get("profile_image").getAsString();
	       
	        out.print(user_name);
	        System.out.println("3차 : " + user_name);
	        
	        // 네이버 로그인 했을경우 우리 db에 네이버 id없을 경우 저장하여 회원가입 시켜버림. 있으면 그냥 로그인만 진행.
	        // db에 네이버 회원 아이디 잇는지 체크한다.
	        UserDAO dao = new UserDAO();
	        int checkE = dao.checkId(user_id); // db,에 저장된 네이버id값이 있는지 체크.
	        
	      
		    if(checkE == 0){ // false일 경우 db에 저장된 아이디가 없으므로 이 조건에서 db에 네이버유저 정보를 저장시킨다.
		    	//NaverUserInfo DTO객체 생성해서 넣어준다.
		        NaverUserInfo userDto = new NaverUserInfo(user_age,user_email,user_gender,user_id,user_mobile,user_name,user_nick,user_profile);
		        
		        int result = dao.insertUserInfo(userDto);  // 유저정보 저장 기능.	
		        System.out.println(result);
		        if(result > 0) {
		        	System.out.println("회원가입 성공! db저장 완료!");
		        	session.setAttribute("user_id", user_id);
		          // response.sendRedirect(wellcome.html);
		          return "wellcome.html"; // 회원가입 환영 페이지
		        } else { 
		        //	session.setAttribute("user_id", user_id);
		        	System.out.println("다시 로그인 하세요!~"); 
		        	return "Main.jsp"; 
		        }
			
		    } else { // 이미 db에 저장된 회원일 경우.
		    	System.out.println("이미 회원 이십니다!.");
		    	session.setAttribute("user_id", user_id);
		    	return "Main.jsp";
		    }		
	        
	        
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	    
	    
		return null;
	}

}
