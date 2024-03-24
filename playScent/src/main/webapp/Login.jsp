<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=, initial-scale=1.0">
<title>네이버로그인</title>
<style>

.wrap {
	width: 80%;
	height: auto;
	margin: 0 auto;
	position: absolute;
	top: 16%;
	transform: translateY(-50%);
	left: 50%;
	transform : translateX(-50%);
	background-color: rabd(0,0,0,.3);
	padding: 30px 0;
}
   
 .wrap .circle {
 	width: 260px;
 	height: 260px;
 	border-radius: 50%;
 	background-color: #AFC8AD;
 	position:relative;
 	margin: 0 auto;
 }
 
 .circle img{
  	display: block;
 	width:180%;
 	position: relative;
 	top: 50%;
 	left: -33%;
 	transform : translateX(-50%);
	transform: translateY(-50%);
 }
 
 
 .naver_login{
 	width: 200px;
 	margin: 0 auto;
 	margin-top: 90px;
 	text-align: center;
 }
 
 .play_join{
 	display: bolck;
 	width: 30%;
 	height: 60px;
 	line-height: 60px;
 	background: rgba(207, 226,215,.5);
 	border: none;
 	border-radius: 15px;
 	text-align: center;
  	font-size: 25px;
  	font-weight:bold;
 	color: #365A2D;
 	position: relative;
 	left:50%;
 	transform : translateX(-50%); 	
    margin-top: 50px;
}
</style>

</head>
<body>
	<%
		String clientId = "xoUly1_dRlwHdjv5nQa7";//애플리케이션 클라이언트 아이디값";
		String redirectURI = URLEncoder.encode("http://localhost:8082/playScent/JoinService.do", "UTF-8");
		SecureRandom random = new SecureRandom();
		String state = new BigInteger(130, random).toString();
		String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code" + "&client_id=" + clientId
				+ "&redirect_uri=" + redirectURI + "&state=" + state;
		session.setAttribute("state", state);
	%>



	<!-- <div class=e124_3156> -->
	<div class="wrap">
		<div class="circle sc">
			<img src="imges/playScent_logo.png"/>
		</div>
		<div class="naver_login">
			<a href="<%=apiURL%>"><img height="55"
				src="http://static.nid.naver.com/oauth/small_g_in.PNG" /></a>
		</div>

		<button class="play_join">회원가입</button>
	</div>






</body>
</html>