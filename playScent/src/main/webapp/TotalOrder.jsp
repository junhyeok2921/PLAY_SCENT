<%@page import="com.playscent.model.OrderPfDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.playscent.model.OrderDAO"%>
<%@page import="com.playscent.model.UserInfoDTO"%>
<%@page import="com.playscent.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link rel="stylesheet" href="css/orderPay.css" type="text/css">
<style>
ul, li {
	list-style: none;
}

#wrapper {
	width: 1100px;
}

.box3 {
	display: block;
	width: 800px;
	box-sizing: border-box;
	border-radius: 10px;
	padding: 10px 20px;
	box-shadow: 0 10px 12px rgba(33, 32, 32, 0.45);
}

.box4 {
	width: 300px;
	height: 425px;
	padding:0 10px 10px 10px;
	box-sizing: border-box;
	border-radius: 10px;
	position: relative !important;
	box-shadow: 0 10px 12px rgba(33, 32, 32, 0.45);
	margin-left: 27px;
}


.th2{
	width: 100%;	
	border: 1.8px solid rgb(42 103 67 / 80%);
	background-color: #FFF455;
	color: black;
	font-weight: bold;
	font-size: 16px;
	height: 50px;
	position: relative;
	margin-top: 40px;
	box-shadow: 0 7px 8px rgba(0,0,0,.4);
	cursor: pointer;
}



.box4 .left-align {
	font-size: 15px;
}
.box4 .row:last-child .left-align {
	font-size: 17px;
	font-weight: bold;
	color: #365A2D;
}

.box4 .right-align{
	font-size: 17px;
	font-weight: bold;
}
.box4 .row:last-child .right-align{
    font-size: 19px;
	color: #365A2D;
}

.box5 {
	width: 800px;
	box-sizing: border-box;
	border-radius: 10px;
	box-shadow: 0 10px 12px rgba(33, 32, 32, 0.45);
}

.userInfo_box {
	width: 100%;
	padding: 15px 0;
	box-sizing: border-box;
}

h2 {
	width: 100%; color : #053D5C;
	margin-bottom: 10px;
	font-weight: bold;
	font-size: 21px;
	color: #053D5C;
}

.userInfo_box .user {
	width: 800px;
	margin-top: 20px;
	padding: 10px;
	box-sizing: border-box;
	background-color: rgb(207, 226, 215, .3);
	border-radius: 10px;
	box-shadow: 0 10px 12px rgba(33, 32, 32, 0.45);
}

.userInfo_box .user h3 {
	margin: 0;
	width: 500px; font-size : 16.5px;
	height: 40px;
	line-height: 40px;
	font-size: 16.5px;
	margin-bottom: 10px;
}

.userInfo_box .user h3 span {
	width: auto;
	margin-left: 40px;
	font-size: 18px;
	color: #053D5C;
}

.order {
	padding: 0;
	margin-top: 35px;
}

.order li {
	width:  100%;
	display: flex;
	justify-content: space-between;
	padding: 18px 0;
	border-bottom: 1px solid rgb(169, 198, 162, .3);
}

.order .pf_img {
	width:20%;
}

.order .pf_img img{
 	display: inline-block;
	width:90%; 
	margin: 0 auto;
}

.orerInfo{
 	width: 77%;
 }
 
 .orerInfo  table {
	width: 100%;
}
  .orerInfo  table tr{
  	height: 28px;
  	line-height: 28px;
  }
  
   .orerInfo  table tr td {
  	font-size: 16px;  
   }
   
  .jin{
	margin-left: 10px;
	font-size: 17px;
	color: #053D5C;
	font-weight: bold;
  }
  
  .jin_pfg{
  	height: 50px;
  	line-height: 50px;
  	font-size: 20px;  	
	color: #365A2D;
	font-weight: bold;
  }
  
 .th2 .orderpr{
	font-size: 18px;
	color: #365A2D;
}

.kgpay{
	margin-top: 15px;
	background-color: #D04848;
}
</style>

<meta charset="UTF-8">
<title>주문 결제</title>
</head>

<body>
	<%
		String user_id = (String) session.getAttribute("user_id");
		System.out.println(user_id);
		// 로그인한 회원정보 가져오기.
		UserDAO udao = new UserDAO();
		UserInfoDTO userInfo = udao.getUserInfo(user_id);
		
		// 현재 회원의 선택한 진짜 결제할 상품 목록들 가져오기.
		OrderDAO odao = new OrderDAO();
		ArrayList<OrderPfDTO> UserOrderList = odao.allUserOrderList(user_id);
		
		// 총 상품 결제 금액.
		Double totalOrerPrice = 0.0;
		
	%>


	<script>
		var IMP = window.IMP;
		IMP.init("imp26780202");
	
		// 카카오페이 결제
		var today = new Date();
		var hours = today.getHours(); // 시
		var minutes = today.getMinutes(); // 분
		var seconds = today.getSeconds(); // 초
		var milliseconds = today.getMilliseconds();
		var makeMerchantUid = hours + minutes + seconds + milliseconds;
	
		function requestPay() {
			IMP.request_pay({
				pg : 'kakaopay',
				merchant_uid : "IMP" + makeMerchantUid,
				name : '<%=UserOrderList.get(0).getPF_NAME()%>외 <%= UserOrderList.size()-1%>개',
				amount : 14,
				buyer_email : '<%=userInfo.getMemEmail()%>',
				buyer_name : '<%=userInfo.getMemName()%>',
				buyer_tel : '<%=userInfo.getMemPhone()%>',
				buyer_addr : '서울특별시 강남구 삼성동',
				buyer_postcode : '123-456'
			}, function(rsp) { // callback
				if (rsp.success) {
					console.log(rsp);
				} else {
					console.log(rsp);
				}
			});
		}
	
		// kg이니시스 결제
		/*  var today = new Date();   
		 var hours = today.getHours(); // 시
		 var minutes = today.getMinutes();  // 분
		 var seconds = today.getSeconds();  // 초
		 var milliseconds = today.getMilliseconds();
		 var makeMerchantUid = hours +  minutes + seconds + milliseconds; */
	
		function requestPay2() {
			IMP.request_pay({
				pg : 'html5_inicis',
				pay_method : 'card',
				merchant_uid : "IMP" + makeMerchantUid,
				name : '<%=UserOrderList.get(0).getPF_NAME()%>외 <%= UserOrderList.size()-1%>개',
				amount : 15,
				buyer_email : '<%=userInfo.getMemEmail()%>',
				buyer_name : '<%=userInfo.getMemName()%>',
				buyer_tel : '<%=userInfo.getMemPhone()%>',
				buyer_addr : '서울특별시 강남구 삼성동',
				buyer_postcode : '123-456'
			}, function(rsp) { // callback
				if (rsp.success) {
					console.log(rsp);
				} else {
					console.log(rsp);
				}
			});
		}
	</script>

	<div id="wrapper">
		<div class="userInfo_box">
			<h2>주문고객 정보</h2>
			<div class="user">
				<h3>
					이름 : <span><%=userInfo.getMemName()%></span>
				</h3>
				<h3>
					이메일 : <span><%=userInfo.getMemEmail()%></span>
				</h3>
				<h3>
					휴대전화 : <span><%=userInfo.getMemPhone()%></span>
				</h3>
			</div>
		</div>

		<!-- 	<div class="box box2">
			<b>입력된 휴대폰번호로 주문정보를 보내드립니다.</b>
		</div> -->


		<div class="box box3">
			<h2>주문 하실 상품수 (<%= UserOrderList.size()%>)</h2>
				<ul class="order">
				  <% for(OrderPfDTO item : UserOrderList){ 
				  	 int quan = item.getPF_QUANTITY();
				  	 Double price = item.getPF_PRICE();
				  	 // 수량 * 상품 금액 
				  	 Double sum = quan * price;
				  	 totalOrerPrice += sum;
				  %>
					<li>
						<div class="pf_img">
							<img src="<%= item.getPF_IMAGE()%>" />
						</div>
						<div class="orerInfo">
							<table>
								<tr><td>브랜드 : <span class="jin"><%= item.getPF_BRAND()%></span></td></tr>
								<tr><td>향수명 : <span class="jin"><%= item.getPF_NAME() %></span></td></tr>
								<tr><td>수량 : <span class="jin"><%= item.getPF_QUANTITY() %></span>개</td></tr>
								<tr class="last_pr"><td><b class="jin_pfg"><%= sum %></b>원</td></tr>
							</table>
						</div>
					</li>
				  <%}%>
				</ul>
		</div>
		<div class="box box4">
			<table>
				<tr>
					<th colspan="2" class="th1"><h2>결제금액</h2></th>
				</tr>
				<tr class="row">
					<td class="left-align">배송비 : </td>
					<td class="right-align">0원</td>
				</tr>
				<tr class="row">
					<td class="left-align">할인금액 : </td>
					<td class="right-align">0원</td>
				</tr>
				<tr class="row">
					<td class="left-align">최종결제금액 : </td>
					<td class="right-align"><%= totalOrerPrice %>원</td>
				</tr>
			</table>
				
			<button class="th2" onclick="requestPay()">카카오페이 결제하기</button>
			<button class="th2 kgpay" onclick="requestPay2()">kg이니시스 결제하기</button>
			
		
		</div>
		<div class="box box5">
			<form action="OrderSheetServlet" method="post"></form>
			<div class="item5-1">
				<h4>주문고객</h4>
			</div>
			<div class="item5-2">
				<div>
					<label for="receiver">수 &nbsp 령 &nbsp 인 : </label> <input
						type="text" name="name" id="receiver" placeholder="이름을 입력하세요"
						class="input">
				</div>

				<div>
					<label for="phone">휴 &nbsp 대 &nbsp 폰 : </label><input type="text"
						name="number" id="phone" placeholder="전화번호을 입력하세요" class="input">
				</div>

				<div>
					<label for="addr">주 &nbsp 소 &nbsp 지 : </label><input type="text"
						name="address" id="addr" placeholder="주소를 입력하세요" class="input">
				</div>

				<div id="deleverymemo">
					<label for="content">배송 &nbsp 메모 : </label>
					<textarea name="memo" id="content" cols="30" rows="10"
						placeholder="배송 메모를 남겨주세요" class="input"></textarea>
				</div>
			</div>
			<div class="item5-3">
				<input type="submit" value="배송지변경" class="change-button">
			</div>
			</form>
		</div>
	</div>

	<!-- <button onclick="requestPay()">카카오페이 결제하기</button>
	결제하기 버튼 생성
	<button onclick="requestPay2()">kg이니시스 결제하기</button>
	결제하기 버튼 생성 -->
</body>
</html>
