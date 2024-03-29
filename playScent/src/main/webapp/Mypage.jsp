<%@page import="com.playscent.model.UserDAO"%>
<%@page import="com.playscent.model.UserInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mypage.css" type="text/css">
</head>
<body>

	<%
	String user_id = (String) session.getAttribute("user_id");
	System.out.println(user_id);
	
	UserDAO userDAO = new UserDAO();
	UserInfoDTO userData = userDAO.getUserInfo(user_id);

	String userGrade = "GOLD"; // 사용자 등급을 가져오는 로직이 필요합니다. 여기서는 예시로 "GOLD"를 직접 할당하였습니다.
	if(userData != null) {
	    out.println("<div class='grade'><H3>" + userData.getMemName() + " 님은 " + userGrade + "등급 입니다</H3></div>");
	} else {
	    out.println("사용자 정보를 찾을 수 없습니다.");
	}
	%>

	<div class="wrap">
		<div class="greenContainer">
			<div>
				<div class="grade">
					<H3>김경민 님은 GOLD등급 입니다
				</div>
				<!-- <div class="name">김경민</div> -->
			</div>
			<div class="modify">
				<b>PLAY SCENT</b>
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
					<div class="icon">></div>
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
				<div>😄</div>
				<div>고객센터</div>
			</a>
		</div>
	</div>


</body>
</html>