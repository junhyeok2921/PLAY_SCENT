<%@page import="java.util.ArrayList"%>
<%@page import="com.playscent.model.CartDAO"%>
<%@page import="com.playscent.model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <link rel="stylesheet" href="css/main_style.css" type="text/css">
 <title>장바구니</title>
<style>
@font-face {
	font-family: 'Tenada';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-2@1.0/Tenada.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

body {
	margin: 0;
	/* overflow: hidden; */
	min-height: 100vh;
}

* {
	box-sizing: border-box;
}

p, span {
	margin: 0;
}

a {
	text-decoration: none;
	color: black;
}

img {
	display: block;
	width: 50%;
	margin: 0 auto;
}

.cart {
	max-width:1220px;
	margin: auto;
	padding: 30px;
	margin-top: 5px;
}

.cart ul {
	background-color: whitesmoke;
	padding: 20px;
	margin-bottom: 10px;
	border: whitesmoke solid 1px;
	border-radius: 5px;
	font-size: 13px;
	font-weight: 300;
}

.cart ul :first-child {
	color: black
}

table {
	border-top: solid 1.5px black;
	width: 100%;
	font-size: 14px;
}

thead {
	text-align: center;
	font-weight: bold;
}

tr td {
	padding: 20px 6px !important;
}

td {
	padding: 20px 5px;
	border-bottom: 1px solid lightgrey;
}

td p {
	margin: 0;
}

.ps_pfName {
	font-size: 18px;
	color: #1E5878;
}

.cart__list__detail :nth-child(3) {
	vertical-align: center;
	font-size: 22px !important;
	font-weight: bold;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	line-height: 28px;
	color: #365A2D;
}

.cart__list__detail {
	max-height: 100px;
}

.cart__list__detail :nth-child(3) a {
	font-size: 12px;
}

.cart__list__detail :nth-child(3) p {
	/* margin-top: 6px; */
	font-weight: bold;
}

.cart__list__smartstore {
	font-size: 12px;
	color: gray;
}

.cart__list__option {
	/* vertical-align: top; */
	padding: 20px;
}

.cart__list__option p {
	margin-bottom: 25px;
	position: relative;
}

.cart__list__option p::after {
	content: "";
	width: 90%;
	height: 1px;
	background-color: lightgrey;
	left: 0px;
	top: 25px;
	position: absolute;
}

.cart__list__optionbtn {
	background-color: white;
	font-size: 10px;
	border: lightgrey solid 1px;
	/* padding: 7px; */
	width: 30px;
	height: 30px;
	text-align: center;
	padding: 10px 5;
}

.cart__list__detail :nth-child(4), .cart__list__detail :nth-child(5),
	.cart__list__detail :nth-child(6) {
	border-left: 2px solid whitesmoke;
}

.cart__list__detail :nth-child(5), .cart__list__detail :nth-child(6) {
	text-align: center;
}

.cart__list__detail :nth-child(5) button {
	background-color: rgb(154, 190, 154);
	color: white;
	border: none;
	border-radius: 5px;
	padding: 4px 8px;
	font-size: 12px;
	text-align: center; /* 가운데 정렬 */
	margin: 50px; /* 좌우 마진을 자동으로 설정하여 가운데 정렬 */
}

.price {
	font-weight: bold;
}

.cart__mainbtns {
	width: 420px;
	height: 200px;
	padding-top: 40px;
	display: block;
	margin: auto;
}

.cart__bigorderbtn {
	width: 200px;
	height: 50px;
	font-size: 16px;
	margin: auto;
	border-radius: 5px;
	cursor: pointer;
}

.cart__bigorderbtn.left {
	background-color: white;
	border: 1px lightgray solid;
}

.cart__bigorderbtn.right {
	background-color: rgb(154, 190, 154);
	color: white;
	border: none;
}

#incbtn::after {
	border-top: 5px solid #000 !important;
}

.cart__list__quantitybtn.decrement::after {
	border-bottom: 5px solid #000;
}

.horizontal-text {
	/* writing-mode: horizontal-tb; */
	white-space: nowrap;
	background-color: white;
	font-size: 15px;
	text-align: center;
	border: lightgrey solid 1px;
	width: 45px;
	height: 45px;
	border-collapse: collapse;
}

p {
	margin-bottom: 20px;
	/* <p> 태그 아래 여백을 설정합니다. */
}

li {
	margin-bottom: 10px;
	/* <li> 태그 아래 여백을 설정합니다. */
}

.quan {
	width: 69px;
	height: 30px;
	margin-left: 6px;
	border-radius: 6px;
}
.count{
	font-size: 25px;
	font-weight: bold;
	color: #365A2D;
	margin-left: 10px;
}
.delete{
	width: 80px !important;
	height: 40px !important;
	line-height: 40px !important;
	text-align: center;
	color: #365A2D;
	background-color: #EBEFE8;
	border-radius: 9px;
}

.total_j{
	font-size: 37px;
	font-weight: bold;
	color: #365A2D;
	margin-left: 15px;
}
</style>


</head>

<body>

	<%
		String user_id = (String) session.getAttribute("user_id");
		System.out.println("장바구니창에서 " + user_id); // 회원 id
		CartDAO Cdao = new CartDAO();
		System.out.println("장바구니창에서 DAO" + Cdao);
		// 회원의 장바구니 모든 내역.
		ArrayList<CartDTO> AllCartList = Cdao.allCartList(user_id);
		System.out.println("장바구니목록 " + AllCartList);
		request.setAttribute("AllCartList", AllCartList); // 전달 안됨.
	%>
		
	
	
  <div id="jinheewrap">	
	<%@include file="Header2.jsp" %>  <!-- 우리 사이트 HEADER 파일 입니다. -->	

	<section class="cart">
		<div class="cart__information"></div>
		<table class="cart__list">
		   <form action="OrderCart.do" method="post">
				<thead>
					<tr>
						<td><input type="checkbox"></td>
						<td>전체선택
						<td>상품정보</td>
						<td>수량</td>
						<td>상품금액</td>
						<td>배송비</td>
						<td></td>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<% for (int i = 0; i < AllCartList.size(); i++) {%>
					<tr class="cart__list__detail">
						<td style="width: 2%;"><input type="checkbox" name="favIdx"
							value="<%=AllCartList.get(i).getFAV_IDX()%>"></td>
						<td style="width: 12%;"><img
							src="<%=AllCartList.get(i).getPF_IMAGE()%>" alt="향수 이미지"></td>
						<td style="width: 30%; font-size: 17px; text-align: center;"
							class="pfBrand"><%=AllCartList.get(i).getPF_BRAND()%> <span
							class="cart__list__smartstore"></span>
							<p class="ps_pfName"><%=AllCartList.get(i).getPF_NAME()%></p></td>
						<td class="cart__list__option ">
							<div style="text-align: center; padding: 10px;">
								수량 : <input type="number" name="quan" value="1" min="1" max="10"
									class="quan" />
							</div>

						</td>
						<td style="width:13%; font-size: 16px;"><span class="price"><%= AllCartList.get(i).getPF_PRICE()%>원</span><br></td>
						<td style="width: 11%; font-size: 16px;">무료</td>
						<td class="cart__list__option" style="font-size: 16px;">
						  <a class="delete" href="DeleteCart.do?fav_idx=<%=AllCartList.get(i).getFAV_IDX()%>">삭제</a>
						</td>
					</tr>
					<% } %>
				</tbody>
		
			</table>
			<br>
			<div class="bigtext right-align sumcount" id="sum_p_num"
				style="text-align: right; margin-top: 15px; font-size: 20px;">상품수량: <span class="count"><%= AllCartList.size()%></span>개</div>
			<br>
			<div class="bigtext right-align box blue summoney" id="sum_p_price"
				style="text-align: right; font-size: 28px;">결제 금액: <span class="total_j">205,520</span>원</div>
			<hr>
			<div class="cart__mainbtns">
				<button class="cart__bigorderbtn left">쇼핑 계속하기</button>
				<input type="submit" class="cart__bigorderbtn right" value="주문하기  " >
			</div>
	</>	
		
		<ul>
			<p><공지사항></p>
			<li>장바구니 상품은 최대 30일간 저장됩니다.</li>
			<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
			<li>
			   오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기
				바랍니다.
		   </li>
		</ul>
	</section>


	<!-- footer 페이지 입니다~!.  -->
    <%@include file="Footer.jsp" %>
    

 </div>




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
	/* 	let countUP = async (e, i) => {
			let cartinx = e.target.getAttribute('cartinx');
			console.log(cartinx);
			let now_quan = quantity[i].textContent;
			console.log(cartinx);
			const response = await fetch("QuantityUpdate.do?");
			const jsonData = await response.json();
			// res :서블릿에서 반환 받은 데이터.
			if (jsonData == 1) {
			//	alert("아이디 사용불가 합니다!.");
			} else {
			//	alert("아이디 사용가능 합니다!.");
			}
		}; */
		
		
		const finalOrder = () => { 
			const quantity = document.querySelectorAll(".cart__list__quantity").textContent;
		};
		
		
		
	//  버튼 클릭시 Ajax 사용.
		/* const id_doubleCK = () => {
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

		}; */
		
		
	    // 다른 ajax방식
	/* 	const id_doubleCK2 = async () => {

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

		} */

		const modalBtn = document.querySelector(".modal-Btn");
		const modal = document.querySelector(".modal");

		modalBtn.addEventListener("click", () => {
		    modal.showModal()
		})

		
		let basket = {
    totalCount: 0, 
    totalPrice: 0,
    //체크한 장바구니 상품 비우기
    delCheckedItem: function(){
        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
            item.parentElement.parentElement.parentElement.remove();
        });
        //AJAX 서버 업데이트 전송
    
        //전송 처리 결과가 성공이면
        this.reCalc();
        this.updateUI();
    },
    //장바구니 전체 비우기
    delAllItem: function(){
        document.querySelectorAll('.row.data').forEach(function (item) {
            item.remove();
          });
          //AJAX 서버 업데이트 전송
        
          //전송 처리 결과가 성공이면
          this.totalCount = 0;
          this.totalPrice = 0;
          this.reCalc();
          this.updateUI();
    },
    //재계산
    reCalc: function(){
        this.totalCount = 0;
        this.totalPrice = 0;
        document.querySelectorAll(".p_num").forEach(function (item) {
            if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
                var count = parseInt(item.getAttribute('value'));
                this.totalCount += count;
                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
                this.totalPrice += count * price;
            }
        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
    },
    //화면 업데이트
    updateUI: function () {
        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
    },
    //개별 수량 변경
    changePNum: function (pos) {
        var item = document.querySelector('input[name=p_num'+pos+']');
        var p_num = parseInt(item.getAttribute('value'));
        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
        
        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

        item.setAttribute('value', newval);
        item.value = newval;

        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
        //AJAX 업데이트 전송

        //전송 처리 결과가 성공이면    
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
    delItem: function () {
        event.target.parentElement.parentElement.parentElement.remove();
        this.reCalc();
        this.updateUI();
    }
}

// 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d{3})/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};
		
		

		
		
		
		
		
		
		
		
		
	</script>



</body>
</html>
