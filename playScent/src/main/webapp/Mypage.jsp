<%@page import="com.playscent.model.UserDAO"%>
<%@page import="com.playscent.model.UserInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main_style.css" type="text/css">
<link rel="stylesheet" href="css/mypage.css" type="text/css">
<style>
 .wrap{
    background-color: #F8F8F8;  
    position: relative;
	top: 40px;
	max-width: 1220px;
	margin: 0 auto;
  }
.greenContainer {
	display: block;
	height: 120px;
	padding: 16px 30px;
	box-sizing: border-box;
	background-color: #C8E5D4 !important;
	color: #063115;
	max-width: 1220px;
	
}

.grade {
	display: flex;
	justify-content: space-between;
}

.grade .ps_profileImg {
	width: 10%;
}

.grade .ps_profileImg .img_box {
	width: 57px;
	height: 57px;
	border-radius: 50px;
	overflow: hidden;
	border: 2px solid #5e8f73;
}

.grade .ps_profileImg img {
	width: 100%;
}

.grade .ps_userINFO {
	width: 95%;
}

.level {
	margin-left: 10px;
	color: #898121;
	font-size: 21px;
}

.shippingStatusContainer {
	padding: 25px 40px;
	box-sizing: border-box;
	width: 100%;
}

.listContainer{
	width: 100%;
	padding: 0 40px;
}

.infoContainer{
	width: 100%;
}
.logout_btn{
	width: 100px;
	height: 42px;
	line-height: 42px;
	border-radius: 50px;
	background-color: #F2EFE5;
	color: #436850;
	font-size: 15px;
	font-weight: bold;
	border: 1.8px solid #436850;
	cursor: pointer;
	box-shadow: 0 3px 9px rgba(33, 32, 32, 0.45);
}

</style>

</head>
<body>
<div id="jinheewrap">
		<%@include file="Header2.jsp"%>
		<!-- 우리 사이트 HEADER 파일 입니다. -->
		</div>

	<%
	String user_id = (String) session.getAttribute("user_id");
	System.out.println(user_id);
	UserDAO userDAO = new UserDAO();
	UserInfoDTO userData = userDAO.getUserInfo(user_id);

	String userGrade = "GOLD"; // 사용자 등급을 가져오는 로직이 필요합니다. 여기서는 예시로 "GOLD"를 직접 할당하였습니다.
	%>

	<%
	//모든 경로 cors허용!.
	response.setHeader("Access-Control-Allow-Origin", "*");
	%>

	<div class="wrap">
		<div class="greenContainer">
			<div>
				<div class="grade">
					<div class="ps_profileImg">
						<div class="img_box">
							<img src="<%=userData.getPROFILE_IMAGE()%>" alt="프로필 이미지" />
						</div>
					</div>
					<div class="ps_userINFO">
						<h3><%=userData.getMemName()%>
							님은 <span class="level"><%=userData.getMemGender()%></span>등급 입니다.
						</h3>
					</div>

					<%-- 	<%
						if (userData != null) {
							out.println("<div class='grade'><H3>" + userData.getMemName() + " 님은 " + userGrade + "등급 입니다</H3></div>");
						} else {
							out.println("사용자 정보를 찾을 수 없습니다.");
						}
					%> --%>
				</div>
				<!-- <div class="name">김경민</div> -->
			</div>
		</div>

		<div class="shippingStatusContainer">
			<div class="title">나의 주문현황</div>
			<div class="status">

				<div class="item">
					<div>
						<div class="green number">4</div>
						<div class="text">출고대기</div>
					</div>
					<div class="icon">></div>
				</div>
				<div class="item">
					<div>
						<div class="number">0</div>
						<div class="text">배송중</div>
					</div>
					<div class="icon">></div>
				</div>
				<div class="item">
					<div>
						<div class="green number">1</div>
						<div class="text">배송완료</div>
					</div>
					<div class="icon"></div>
				</div>
				<div class="item">
					<div>
						<div class="green number">2</div>
						<div class="text">구매확정</div>
					</div>
				</div>

			</div>

		</div>

		<div class="listContainer">
			<a href="#" class="item">
				<div class="icon">ii</div>
				<div class="text">
					<span>회원정보 수정</span>
				</div>
				<div class="right">></div>
			</a> <a href="#" class="item">
				<div class="icon">ii</div>
				<div class="text">회원탈퇴</div>
				<div class="right">></div>
			</a> <a href="#" class="item">
				<div class="icon">ii</div>
				<div class="text">배송지 관리</div>
				<div class="right">></div>
			</a>
		</div>
		<div class="infoContainer">
			<a href="#" class="item">
				<div>🔔</div>
				<div>공지사항</div>
			</a> <a href="#" class="item">
				<div>🔓</div>
				<div>이용안내</div>
			</a> <a href="#" class="item">
				<button class="logout_btn" onclick="logout()">로그아웃</button>
			</a>
		</div>
	</div>



	<!-- footer 페이지 입니다~!.  -->
		<%@include file="Footer.jsp"%>

	<%
	// 로그인할때 받은 accessToken
	String accessToken = (String) session.getAttribute("accessToken");
	%>




	<script type="text/javascript">
		// 로그아웃 cors에러가 남.
	  	let logout = async () => {
	  		try {	  			
	  			window.location.replace("LogoutService.do");
	  			
	  			<%-- const response = await fetch("https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id=xoUly1_dRlwHdjv5nQa7&client_secret=xoUly1_dRlwHdjv5nQa7&access_token=<%=accessToken%>&service_provider=NAVER");
				console.log(response);				
				const jsonData = await response.json();
				console.log(jsonData);	
		  		window.location.replace("Main.jsp"); --%>
	  			
	  		} catch (e) {
				console.log("로그아웃 실패 입니다.");
			}	  		
	  
	  	}; 
	
	</script>

</body>
</html>