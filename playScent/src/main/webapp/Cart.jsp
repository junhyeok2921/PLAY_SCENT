<%@page import="java.util.ArrayList"%>
<%@page import="com.playscent.model.CartDAO"%>
<%@page import="com.playscent.model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<style>
#layout {
	width: 500px;
	height: 500px;
}

#header {
	background-color: rgb(220, 231, 220);
	width: 100%;
	height: 15%;
}

#main {
	background-color: rgb(211, 219, 211);
	width: 100%;
	height: 80%;
	float: left;
}

#footer {
	width: 100%;
	height: 15%;
	background-color: rgb(220, 231, 220);
	clear: both;
}

.button-container {
	display: flex;
	justify-content: flex-end;
}

.cart__list__quantitybtn {
	width: 30px;
	height: 30px;
	background-color: #fff;
	border: 1px solid #ccc;
	cursor: pointer;
	font-size: 16px;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	margin: 0 2px;
}

.cart__list__quantitybtn:hover {
	background-color: #f0f0f0;
}

.cart__list__quantitybtn:active {
	background-color: #e0e0e0;
}

.cart__list__quantitybtn.increment::after, .cart__list__quantitybtn.decrement::after
	{
	content: "";
	display: inline-block;
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
}

.cart__list__quantitybtn.increment::after {
	border-top: 5px solid #000;
}

.cart__list__quantitybtn.decrement::after {
	border-bottom: 5px solid #000;
}

.cart__list th, .cart__list td {
	padding: 15px;
	/* 각 셀 패딩 설정 */
}

.cart__list th:not(:last-child), .cart__list td:not(:last-child) {
	border-right: 1px solid #ccc;
	/* 오른쪽 테두리 추가 */
}
</style>

</head>

<body>
	<!-- HTML 코드에 해당 JavaScript 함수가 사용될 요소를 추가합니다 -->

		<section class="cart">
			<div class="cart__information"></div>
			<hr>

			<div class="cart__mainbtns" style="margin-top: 10px;">

				<td><input type="checkbox"></td>
				<td style="margin: 5px;">선택</td>
				<td>옵셥</td>
				<td>상품금액</td>
				<td>배송비</td>
				<td>삭제</td>
				<hr>



				<%
				String user_id = (String) session.getAttribute("user_id");
				System.out.println("장바구니창에서 " + user_id); // 회원 id
				CartDAO Cdao = new CartDAO();
				System.out.println("장바구니창에서 DAO" + Cdao);
				// 회원의 장바구니 모든 내역.
				ArrayList<CartDTO> AllCartList = Cdao.allCartList(user_id);
				System.out.println("장바구니목록 " + AllCartList);
				%>
			<form action="OrderCart.do" method="post">
				<table class="cart__list">
					<tbody>
						<% for (int i = 0; i < AllCartList.size(); i++) {%>
						<tr class="cart__list__detail">
							<td><input type="checkbox" name="pfIdx" value="<%=AllCartList.get(i).getFAV_IDX()%>"></td>
							<td><img src="딥디크.jpg" alt="magic keyboard" width="50px "></td>
							<td><a href="#">플레르 드 뽀 오 드 퍼퓸</a><span
								class="cart__list__smartstore"></span></td>


							<td class="cart__list__option">
								<p>수량: <input type="number" min="1" max="10" name="quan" value="1"/></p>
								<%-- <button class="cart__list__quantitybtn decrement"
									cartinx="<%=AllCartList.get(i).getFAV_IDX()%>"
									onclick="countUP(<%=i%>)">-</button>
								<button class="cart__list__quantitybtn increment"
									cartinx="<%=AllCartList.get(i).getFAV_IDX()%>">+</button> --%>
							</td>
							<td><span class="price1">116620 </span><br></td>
							<td>무료</td>
							<td style="width: 15%;"><a
								href="DeleteCart.do?fav_idx=<%=AllCartList.get(i).getFAV_IDX()%>">삭제</a></td>
						</tr>
						<%}%>

					</tbody>
				</table>
				<hr>
				<div class="cart__mainbtns">
					<button class="cart__bigorderbtn left">쇼핑 계속하기</button>
					<button><input type="submit" class="cart__bigorderbtn right" value="주문하기"></button>
				</div>
				<div class="bigtext right-align sumcount" id="sum_p_num">상품갯수:
					2개</div>
				<div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액:
					205520</div>
		</form>		
		</section>


	
	

	<!-- JavaScript 함수를 HTML 내부에 추가합니다 -->
	<script>
	
	
	
	
	/* 	let price;
		let ref_price = 0;

		function changeQuantity(itemId, operation) {
			price = document.querySelector(`.price${itemId}`);
			ref_price = Number(price.textContent);
			const ref_price2 = ref_price;
			var quantityElement = document
					.querySelector('.cart__list__detail:nth-child(' + itemId
							+ ') .cart__list__quantity');
			var currentQuantity = parseInt(quantityElement.textContent);
			var newQuantity;

			if (operation === 'increment') {
				newQuantity = currentQuantity + 1;
				price.innerHTML = ref_price2 * newQuantity;

			} else if (operation === 'decrement') {
				newQuantity = Math.max(1, currentQuantity - 1);

			}

			quantityElement.textContent = newQuantity + '개';
			priceElement.textContent = newPrice.toLocaleString() + '원';

		} */
		
		const quantity = document.querySelectorAll(".cart__list__quantity");
		
		// 수량변경시 db저장된 수량도 변경 되는 메서드.
		let countUP = async (e, i) => {
			let cartinx = e.target.getAttribute('cartinx');
			console.log(cartinx);
			let now_quan = quantity[i].textContent;
			console.log(cartinx);
			const response = await fetch("QuantityUpdate.do?");
			const jsonData = await response.json();
			// res :서블릿에서 반환 받은 데이터.
			if (jsonData == 1) {
				alert("아이디 사용불가 합니다!.");
			} else {
				alert("아이디 사용가능 합니다!.");
			}
		};
		
		let countDown = async() => {
			
		};
		
		const finalOrder = () => { 
			const quantity = document.querySelectorAll(".cart__list__quantity").textContent;
		
			
			
			
		};
		
	//  버튼 클릭시 Ajax 사용.
		const id_doubleCK = () => {
			$.ajax({
				url: "IdCheck",
				data: {"inputId": idinp.value},
				dataType: "json",
				success: function (res){
					// res :서블릿에서 반환 받은 데이터.
					console.log(res);
					if (res == 1) {
						alert("아이디 사용불가 합니다!.");
					} else {
						alert("아이디 사용가능 합니다!.");
					}
				},
				error: function () {

				}

			});

		};
		
		
	    // 다른 ajax방식
		const id_doubleCK2 = async () => {

			const data = {
				method: 'POST',
				body:JSON.stringify({"inputId": idinp.value}),
			};

			const response = await fetch("IdCheck", data);
			console.log(response);
			
			const jsonData = await response.json();
			// res :서블릿에서 반환 받은 데이터.
			if (jsonData == 1) {
				alert("아이디 사용불가 합니다!.");
			} else {
				alert("아이디 사용가능 합니다!.");
			}

		}

	</script>

</body>
</html>


