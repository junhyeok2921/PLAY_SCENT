
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.playscent.model.CartPerfumeDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.playscent.model.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/pfDetail.css" type="text/css">
    <link href="styles/detail.css" rel="stylesheet" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
    <title>상세 페이지</title>
    <style>
     .pf_img{
      width: 72%;
     }    
   </style>

</head>
<body>

	<%
	   DecimalFormat df = new DecimalFormat("###,###");
	   String user_id = (String) session.getAttribute("user_id");
	   System.out.println(user_id);
	   String PFIDX = request.getParameter("pfIdx");
	   System.out.print(PFIDX);
	   int PF_IDX = Integer.parseInt(PFIDX);
	   CartPerfumeDTO perfumes = new CartDAO().selectPerfume(PF_IDX);
	   
	  System.out.print(perfumes.getPf_accords());
	  System.out.print(perfumes.getPf_name());
	  System.out.print(perfumes.getPf_image());
	  System.out.print(perfumes.getPf_price());
	  //금액 .찍어서 여기서 변수 저장
	  int price = (int)Math.round(perfumes.getPf_price());//double -> 정수형으로
	  String money = df.format(price); // .찍어줌
	%>

	
	String pfIdx = request.getParameter("pfIdx");
	System.out.println(pfIdx);
	%>

	<nav>
		<!--최상단의 배너-->
		<div class="menu">
			<a href="#" class="logo">PLAY SCENT</a>
			<ul>
				<li><a href="" class="li">LOGIN |</a></li>
				<li><a href="" class="li">JOIN |</a></li>
				<li><a href="" class="li">마이페이지 |</a></li>
				<li><a href="" class="li">고객센터 |</a></li>
				<li><a href="" class="li">장바구니</a></li>
			</ul>
		</div>
	</nav>

	<!-- <button id="btn">30ml button</button> -->
	<!-- <script src="script.js"></script> -->

	<section>
		<!--중반부의 레이아웃-->

		<div class="container" id="one">
			<!-- 중반부 전체를 감싸는 div 태그-->

			<div class="first">
				<!--중반부 를 두개의 div태그로 나누어 왼쪽 절반의 구역으로 나눠줌-->

				<img src="<%= perfumes.getPf_image()%>" alt="디올" class="pf_img">

				<div class="image-wrapper">
					
				</div>
			</div>

			<div class="second">
				<!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->
				<br>
				<p class="gray">여성> 남성 >연령별 > 브랜드> 선물용 >향기네컷</p>

				<div id="fifth">
					<div class="perfume">
						<p class="perfume1"><%=perfumes.getPf_brand() %></p>
						<p class="perfume1"><%=perfumes.getPf_name() %></p>

						<!-- <tr heigh="35px" bgcolor="whitesmoke"> -->

						<td>
							<option value="">사이즈: 30ml</option> <!-- </select> -->
						</td>
						</tr>
						<form action="AddCart.do?pfIdx=<%=PFIDX%>" method="post" id="order">
							<div class="sell_quan">
								수량 : 
								<!-- <input type="text" name="amount" value="1" size="3" onchange="change();">  -->
								<input type="number" name="quantity" value="1" min="1" max="10" />
								<!-- <input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();" class="up"><br> -->
							</div>
							<div class="sell_price">금액 : <%= money %><input type="hidden" name="price" value="<%=price%>">원 </div>

							<input type="submit" value="장바구니에 추가">
						</form>
					</div>





					<!-- <div class="productdetail">
                    <a href="" target="_blank" rel="noopener" class="add-to-cart" padding="100px">
                        장바구니에 담기
                    </a>
                </div> -->



					<!-- <div class="productdetail">
                    <a href="" target="_blank" rel="noopener" class="add-to-cart" padding="100px">
                        장바구니에 담기
                    </a>

                </div> -->

					<!-- <div class="Allcomment"> -->
					<p class="reviewnav">Main Accords</p>
					<div class="comment">
						<!-- comment class는 각각 하나의 댓글을 담아냄 -->

						<span class="ment"><%=perfumes.getPf_accords() %></span>
					</div>
				<hr>
							<!-- <div class="Allcomment"> -->
							<p class="reviewnav">Notes</p>
							<div class="comment">
								<!-- comment class는 각각 하나의 댓글을 담아냄 -->
								<div class="ment">
									<p>
										<strong>Top notes </strong><br> <%=perfumes.getPF_TOP() %>
									</p>
									<p>
										<strong>Mid notes </strong><br><%=perfumes.getPF_MID() %>
									</p>
									<p>
										<strong>Bottom notes </strong><br><%=perfumes.getPF_BOTTOM() %>
									</p>
								</div>
	</section>

	<footer>
		<!-- 최하단부의 배너를 담는 fotter 태그 -->
		<div class="bottomzone">
			<div id="bottomLine"></div>
			<div id="botzone">


				<div text-align: center; class="guide">1:1 문의 이용안내 개인정보처리방침
					FAQ</div>
				<div text-align: center; class="guide"></div>


			</div>
			<hr>
			<div id="footer_text">

				<div>
					<p>NAUM mail</p>

					<ul>
						<li>대표자명: 박원석</li>
						<li>주소:전라남도 목포시 석현로 46 벤처지원센터 204호</li>
						<li>나음SE 사업자등록번호: 111-25-77011</li>
						<li>개인정보관리책임자: 김대갑 (info@naumse.com)</li>
						<li>통신판매신고: 제2020-전남목포-0058호</li>
						<ul>
							<h5>COPYRIGHT ⓒ BY 나음Mall ALL RIGHTS RESERVED.</h5>
				</div>
				<div>
					<p>[INICIS] 구매안전(에스크로)서비스</p>

					<ul>
						<li>고객님의 안전거래를 위해 현금 등으로 결제 시, 저희 사이트에서 <br> 가입한 구매안전
							서비스를 이용하실 수 있습니다.
						</li>
					</ul>

				</div>


			</div>


		</div>
	</footer>




</body>
</html>