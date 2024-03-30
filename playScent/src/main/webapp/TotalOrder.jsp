<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link rel="stylesheet" href="css/orderPay.css" type="text/css">
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
			name : '조말론',
			amount : 14,
			buyer_email : 'Iamport@chai.finance',
			buyer_name : '아임포트 기술지원팀',
			buyer_tel : '010-1234-5678',
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
			name : '구딸파리',
			amount : 15,
			buyer_email : 'Iamport@chai.finance',
			buyer_name : '아임포트 기술지원팀',
			buyer_tel : '010-1234-5678',
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
<meta charset="UTF-8">
<title>주문 결제</title>
</head>

<body>
	<div id="wrapper">
		<div class="box box1">
			<div class="item1-1">
				<h4>주문고객</h4>
			</div>
			<div class="item1-2">
				<div style="width: 150px">오진희</div>
				<div>
					<button>
						<b>본인인증</b>
					</button>
				</div>
			</div>
			<div class="item1-3">
				<div class="num">010</div>
				<span class="hyphen"> - </span>
				<div class="num">1234</div>
				<span class="hyphen"> - </span>
				<div class="num">4578</div>
			</div>
		</div>

		<div class="box box2">
			<b>입력된 휴대폰번호로 주문정보를 보내드립니다.</b>
		</div>

		<div class="box box3">
			<div class="item3-1">
				<h4>주문상품</h4>
			</div>
			<div class="item3-2">
				<div>
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPhgSw6UUlAd9i4uhEpFvNlbCmBfgBNNSAA&usqp=CAU"
						alt="">
				</div>
				<div class="name">
					<table>
						<tr>
							<td>GOUTAL PARIS</td>
						</tr>
						<tr>
							<td>모 드 아드리앙 EDP</td>
						</tr>
						<tr>
							<td>태양 아래 레몬 과실을 바구니에 톡 담아</td>
						</tr>
						<tr>
							<td><b>148,800원</b></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="item3-3">
				<table>
					<tr>
						<th colspan="2" class="th1">결제정보</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td class="left-align">상품금액</td>
						<td class="right-align">148,800원</td>
					</tr>
					<tr>
						<td class="left-align">배송비</td>
						<td class="right-align">0원</td>
					</tr>
					<tr>
						<td class="left-align">쿠폰할인</td>
						<td class="right-align">0원</td>
					</tr>
					<tr>
						<td class="left-align">결제상세</td>
						<td class="right-align">148,800원</td>
					</tr>
				</table>
				<hr>
				<table class="item3-3-table">
					<tr>
						<td class="left-align">카드간편결제</td>
						<td class="right-align">148,800원</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="box box4">
			<table>
				<tr>
					<th colspan="2" class="th1">결제금액</th>
				</tr>
				<tr>
					<td class="left-align">상품금액</td>
					<td class="right-align">148,800원</td>
				</tr>
				<tr>
					<td class="left-align">배송비</td>
					<td class="right-align">0원</td>
				</tr>
				<tr>
					<td class="left-align">할인금액</td>
					<td class="right-align">0원</td>
				</tr>
				<tr>
					<td class="left-align">최종결제금액</td>
					<td class="right-align">148,800원</td>
				</tr>
				<tr>
					<th colspan="2" class="th2">148,800원 결제금액</th>
				</tr>
			</table>
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
