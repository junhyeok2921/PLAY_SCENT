<%@page import="com.playscent.model.NaverUserInfo"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>네이버로그인</title>
  </head>
  <body>
  
  
  
  <%
    String clientId = "xoUly1_dRlwHdjv5nQa7";//애플리케이션 클라이언트 아이디값";
    String clientSecret = "WFGVa5C3AU";//애플리케이션 클라이언트 시크릿값";
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode("http://localhost:8082/playScent/callback.jsp", "UTF-8");
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
        session.setAttribute("naver_res",res.toString());  // 한번 세션에 셋팅 해봤따.
       
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
        
        System.out.println(response2.toString());  // 네이버 유저정보 나옴. 하지막 약간 다르게나옴.
    } catch (Exception e) {
        System.out.println(e);
    }
    
    
    // 로그인이나 회원가입이 성공하면 유저정보 json 으로 잘받아왔고,
    // 요기 callback페이지 에서 유저정보는 서블릿 서버로 보내서 db에 저장시키고,
    // callback페이지에서는 화영 메시지를 보여주고 Main page로 넘어갈것인지 버튼으로 클릭하도록 구현.
    
    
    
     NaverUserInfo userINFO = new NaverUserInfo();
  
  %>
  
  
  
  
    <script>
       const naver_res = <%= res.toString() %>;
       const naver_userInfo = <%= response2.toString() %>  // json인지는 모르겠지만 응답Object형태로 데이터 아주 잘도착함!.
       console.log(naver_res);  // 이미 json이 오브젝트로 변화되서 변수에 저장됨.
    //   const jsonToOBJ = JSON.parse(json_res);
       console.log(naver_res.access_token);
       console.log(naver_userInfo);  // 계획했던 네이버 유저 정보값 아주 잘나옴.
       
/* 
      // 세션 스토리지에 access_token 저장. 저장도 잘됨.
       sessionStorage.setItem('naver_res', naver_res.access_token);
       
       
       // 유저정보를 서블릿 서버로 보내서 db에 저장시킬 거임 따라서 ajax통신해야함.
       const send_userInfo = async () => {
    	   const data = {
   				method: 'POST',
   				body: JSON.stringify({"user_info": naver_userInfo}),
   			};
    	    console.log(data);
    	    
   			const response = await fetch("JoinService", data);
   			console.log(response);
   			
   		//	const jsonData = await response.json();
       };
       
       send_userInfo(); // 함수 실행으로 JoinService서버로 데이터 전송.
        */
    
    </script>
  
  
  </body>
</html>