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
	</script>

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

			</script>

			<table class="cart__list">
				<tbody>
					<tr class="cart__list__detail">
						<td><input type="checkbox"></td>
						<td><img src="딥디크.jpg" alt="magic keyboard" width="50px "></td>
						<td><a href="#">플레르 드 뽀 오 드 퍼퓸</a><span
							class="cart__list__smartstore"></span></td>


						<td class="cart__list__option">
							<p>
								수량: <span class="cart__list__quantity">1개</span>
							</p>
							<button class="cart__list__quantitybtn decrement"
								onclick="changeQuantity(1,'increment' )"></button>
							<button class="cart__list__quantitybtn increment"
								onclick="changeQuantity(1, 'decrement')"></button>
						</td>
						<td><span class="price1">116620 </span><br></td>

						<td>무료</td>
					</tr>
					<tr class="cart__list__detail">
						<td style="width: 2%;"><input type="checkbox"></td>
						<td style="width: 10%;"><img src="불가리.jpg" alt="magic mouse"
							width="50px"></td>
						<td><a href="#">뿌르 옴므 오 드 뚜알렛</a><span
							class="cart__list__smartstore"></span></td>
						<td class="cart__list__option">
							<p>
								수량: <span class="cart__list__quantity">1개</span>
							</p>
							<button class="cart__list__quantitybtn decrement"
								onclick="changeQuantity(2, 'increment')"></button>
							<button class="cart__list__quantitybtn increment"
								onclick="changeQuantity(2, 'decrement')"></button>
						</td>
						<td style="width: 15%;"><span class="price2">88900</span><br></td>
						<td style="width: 15%;">무료</td>
					</tr>



				</tbody>
			</table>
			<hr>
			<div class="cart__mainbtns">
				<button class="cart__bigorderbtn left">쇼핑 계속하기</button>
				<button class="cart__bigorderbtn right">주문하기</button>
			</div>
			<div class="bigtext right-align sumcount" id="sum_p_num">상품갯수:
				2개</div>
			<div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액:
				205520</div>



			<div class="cart__information">
				<ul>
					<p>
						<공지사항>
					</p>
					<li>장바구니 상품은 최대 30일간 저장됩니다.</li>
					<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
					<li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해
						주시기 바랍니다.</li>
				</ul>
			</div>




		</div>
	</section>

	<!-- JavaScript 함수를 HTML 내부에 추가합니다 -->
	<script>
		let price;
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

		}
		
		
		
		
		
		
		
	</script>

</body>
</html>


