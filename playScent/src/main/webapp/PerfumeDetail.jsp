<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap"
	rel="stylesheet">
<title>상세 페이지</title>
</head>
<body>

	<%
	String user_id = (String) session.getAttribute("user_id");
	System.out.println(user_id);
	
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

				<img src="디올.jpg" alt="디올">

				<div class="image-wrapper">
					<img src="디올이미지2.jpg" alt="디올"> <img src="디올이미지.jpg" alt="디올">
				</div>
			</div>

			<div class="second">
				<!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->
				<br>
				<p class="gray">여성> 남성 >연령별 > 브랜드> 선물용 >향기네컷</p>

				<div id="fifth">
					<div class="perfume">
						<p class="perfume1">미스 디올 블루밍 부케</p>
						<p class="perfume1">오 드 뚜왈렛 - 산뜻하고 부드러운 노트</p>



						<!-- <tr heigh="35px" bgcolor="whitesmoke"> -->

						<td>
							<option value="">사이즈: 30ml</option> <!-- </select> -->
						</td>
						</tr>


						<form action="AddCart.do?pfIdx=" method="get" id="order">
							<div class="sell_quan">
								수량 : <input type=hidden name="quantity" value="96000">
								<!-- <input type="text" name="amount" value="1" size="3" onchange="change();">  -->
								<input type="number" name="" value="1" min="1" max="10" />
								<!-- <input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();" class="up"><br> -->
							</div>
							<div class="sell_price">
								금액 : 96,000<input type="hidden" name="price" value="96000">원
							</div>
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
					<p class="reviewnav">상품정보</p>
					<div class="comment">
						<!-- comment class는 각각 하나의 댓글을 담아냄 -->

						<span class="ment">미스 디올 오 드 뚜왈렛은 산뜻하고 황홀한 향기가 돋보입니다. 탑
							노트에서 블러드 오렌지와 만다린이 눈 부신 매력을 더해주며, 미들 노트의 은방울꽃 어코드가 그라스산 로즈의 스파이시한
							향에 가볍고 산뜻한 향기를 더해줍니다. 베이스 노트의 선명한 패츌리 어코드가 행복으로 가득한 노트를 조화롭게
							이어줍니다.</span>
					</div>
					<hr>

					<p class="reviewnav">전성분</p>
					<div class="comment">
						<!-- comment class는 각각 하나의 댓글을 담아냄 -->
						<div class="ment">
							<p>
								에탄올 정제수 향료 부틸메톡시디벤조일메탄 적색504호 황색4호 자색401호 리모넨 헥실신남알 리날룰 벤질살리실레이트
								알파-아이소메틸아이오논 시트로넬올 아이소유제놀 하이드록시시트로넬알 시트랄 제라니올 벤질알코올<br>
							</p>
							<hr>



							<!-- <div class="Allcomment"> -->
							<p class="reviewnav">향기노트보기</p>
							<div class="comment">
								<!-- comment class는 각각 하나의 댓글을 담아냄 -->
								<div class="ment">
									<p>
										<strong>베르가못 에센스는 </strong><br> 이탈리아 남부에서 나는 열매껍질을 냉각
										압축시켜 추출합니다. 향수에 부드럽고 상쾌한 느낌을 선사하며, 특히 시트러스 노트를 돋보이게 해줍니다.
									</p>
									<p>
										<strong>다마스크 로즈 에센스와 피오니 노트 </strong><br>은은한 스파이시함이 감도는
										플로럴 노트를 만들어 냅니다.
									</p>
									<p>
										<strong>화이트 머스크 </strong><br>파우더리한 향기가 마치 코튼이 피부를 부드럽게
										감싸는 듯한 포근함을 선사합니다.
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