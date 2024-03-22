package com.playscent.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.playscent.model.NaverUserInfo;
import com.playscent.model.UserDAO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// callback.jsp에서 토큰, 유저정보 받지 말고 어차피 서블릿으로 데이터 전송할꺼 
		// 서블릿에서 callback리다이렉트를 만들어서 여기서 토큰, 유저정보를 받아라!.
		
		String clientId = "xoUly1_dRlwHdjv5nQa7";//애플리케이션 클라이언트 아이디값";
	    String clientSecret = "WFGVa5C3AU";//애플리케이션 클라이언트 시크릿값";
	    String code = request.getParameter("code");
	    String state = request.getParameter("state");
	    String redirectURI = URLEncoder.encode("http://localhost:8082/playScent/JoinService", "UTF-8");
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
	    PrintWriter out = response.getWriter();
	    
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
	       
	        out.print(user_name);
	        System.out.println("3차 : " + user_name);
	        
	        //NaverUserInfo DTO객체 생성해서 넣어준다.
	        NaverUserInfo userDto = new NaverUserInfo(user_age,user_email,user_gender,user_id,user_mobile,user_name,user_nick);
	        UserDAO dao = new UserDAO();
	        int result = dao.insertUserInfo(userDto);  // 유저저보 저장 기능.
	        
	        if(result > 0) {
	        	response.sendRedirect("wellcome.html");
	        }else {
	        	
	        }
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	    

	    
	}

}
