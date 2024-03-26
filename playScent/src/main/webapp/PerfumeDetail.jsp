<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	 String user_id = (String) session.getAttribute("user_id");
	 System.out.println(user_id);
	%>

	<div>
		<div>
			<img />
		</div>

		<div></div>
		<form action="AddCart.do" method="get">향수 정보내용. 향수 브랜드 이름 향수 이름
			향수 수량 향수 가격 넘어가고</form>
		<h4 class="quantity">2</h4>
		<button id="gocart" onclick="goCart()">장바구니 넣기</button>
	</div>


	<script src="script/jquery-1.12.4.js"></script>

	<script type="text/javascript">
	
	const quantity = document.querySelector(".quantity").textContent;
	const goCart = () => {
		// 먼저 서버 서블릿으로 이동후 서버에서 향수 데이터 찾아서 request객체 셋팅후 cart페이지로 간다.
		window.location.replace("AddCart.do?pfIdx=30&quantity="+ quantity);
	};
	
	/* let idinp = document.querySelector('#idinp'); */

	//  버튼 클릭시 Ajax 사용.
	/* const id_doubleCK = () => {
		$.ajax({
			url: "AddCart.do",
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
	 */
	// 다른 ajax방식
	/* const cartAdd = async () => {
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
	
	
	</script>








</body>
</html>