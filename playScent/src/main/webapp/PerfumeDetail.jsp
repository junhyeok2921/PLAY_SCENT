<%@page import="com.playscent.model.ReviewDAO"%>
<%@page import="com.playscent.model.ReveiwDTO"%>
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/main_style.css" type="text/css">
<link rel="stylesheet" href="css/pfDetail.css" type="text/css">
<link href="styles/detail.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/Review_style.css" type="text/css">
<link rel="stylesheet" href="css/reviewlist_style.css" type="text/css">
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
<style>
.pc_header {
	border-bottom: 1px solid rgba(151, 151, 151, 0.3) !important;
}

#one img {
	padding-top: 70px;
	width: 80%;
	padding-left: 50px;
}

.pf_img {
	width: 72%;
}
 .perfume1 {
	padding: 3px 0 0;
    font-size: 29px;
    font-weight: bold; 
    margin-bottom: 20px;
    color: #1E3B4A;
}

.perfume2{
  font-size: 21px;
  line-height: 29px;
  margin-bottom: 30px;
  margin-top: 15px;
}

.product_price {
	font-size: 17.5px;
	margin-bottom: 20px;
	margin-top: 9px;
}

.product_quan{
	font-size: 17.5px;
}

#priceSpan {
	margin-left: 33px;
	font-size: 31px;
}
.product_quan .my-input{
	position:relative;
	top: -3px;
	height:25px;
	margin-left: 10px;
}

.total_price{
	margin-top: 13px;
    font-size: 17.5px;
}

#totalPriceSpan{
	margin-left: 11px;
	font-size: 31px;
	font-weight: bold;
}
#review_modal {
	width: 100%;
	position: relative;
}

#review_modal .modal{
position: absolute;
top: 50%;
left: 36%;
transform: translateX(-50%);
transform: translateY(-50%);
}
#content {
    margin-top: 30px;
    margin-bottom: 100px;
}

.final_cart{
	display: flex;
	margin-bottom: 20px;
}

#review_tavleBox{
	width: 1200px;
	position: relative;
	margin: 0 auto;
}

.foo_intro {
	display: block !important;
}

.review-table {
	width: 1200px !important;
	margin-top: 50px !important;
	position: relative;
	overflow: visible;
}

.gocart {
	display: block;
	width: 100px;
    height: 30px;
    line-height: 30px;
    border-radius: 50px;
    background-color: #F2EFE5;
    color: #436850;
    font-size: 15px;
    font-weight: bold;
    border: 1.8px solid #436850;
    cursor: pointer;
    margin-top: 30px;
    margin-bottom: 15px;
}

.testSC{
	height: 35px;
	line-height: 35px;
	margin-left: 25px;
	position: relative;
	top: 22px;
}
#button {
	position: absolute; 
	right:0;
	top: -30px;
	text-align: right;
}

#button .buttonwr{
	display: block;
	width: 100px;
    height: 30px;
    line-height: 30px;
    border-radius: 50px;
    background-color: #F2EFE5;
    color: #436850;
    font-size: 15px;
    font-weight: bold;
    border: 1.8px solid #436850;
    cursor: pointer;
    position: relative;
    right: 0;
	top: -15px;
}
.scro_naum {
	display: block !important;
}

.star_box{
	width: 100%;
}
</style>
</head>


<body>

	<%
	DecimalFormat df = new DecimalFormat("###,###");
	String user_id = (String) session.getAttribute("user_id");
	System.out.println(user_id);
	String PFIDX = request.getParameter("pfIdx");
	System.out.print("pfidx확인" + PFIDX);
	int PF_IDX = Integer.parseInt(PFIDX);
	CartPerfumeDTO perfumes = new CartDAO().selectPerfume(PF_IDX);

	System.out.print(perfumes.getPf_accords());
	System.out.print(perfumes.getPf_name());
	System.out.print(perfumes.getPf_image());
	System.out.print(perfumes.getPf_price());
	//금액 .찍어서 여기서 변수 저장
	int price = (int) Math.round(perfumes.getPf_price());//double -> 정수형으로
	String money = df.format(price); // .찍어줌

	String pfIdx = request.getParameter("pfIdx");
	System.out.println(pfIdx);
	%>

	<div id="jinheewrap">
		<%@include file="Header2.jsp"%>
		<!-- 우리 사이트 HEADER 파일 입니다. -->

		<!-- <button id="btn">30ml button</button> -->
		<!-- <script src="script.js"></script> -->

		<section id="content">
			<!--중반부의 레이아웃-->

			<div class="container" id="one">
				<!-- 중반부 전체를 감싸는 div 태그-->

				<div class="first">
					<!--중반부 를 두개의 div태그로 나누어 왼쪽 절반의 구역으로 나눠줌-->

					<img src="<%=perfumes.getPf_image()%>" alt="디올" class="pf_img">

					<div class="image-wrapper"></div>
				</div>

				<div class="second">
					<!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->
					<br>
					<p class="gray">여성> 남성 >연령별 > 브랜드> 선물용 >향기네컷</p>

					<div id="fifth">
						<div class="perfume">
							<p class="perfume1"><%=perfumes.getPf_brand()%></p>
							<p class="perfume2"><%=perfumes.getPf_name()%></p>

							<!-- <tr heigh="35px" bgcolor="whitesmoke"> -->

							<td>
								<option value="">사이즈: 50ml</option> <!-- </select> -->
							</td>
							</tr>
							<form action="AddCart.do?pfIdx=<%=PFIDX%>" method="post" id="order">
								<div class="product_price"> 가격 : <span id="priceSpan"><%=price%></span>원</div>
								<div class="product_quan">수량 : <input type="number" class="my-input" name="quantity" value="1" min="1" max="10"> </div>
								<div class="total_price"> 총 가격 : <span id="totalPriceSpan"><%=price%></span>원</div>
								<!-- 총 가격 어떻게 보낼지 고민중   -->
								<input type="hidden" name="price" value="<%=money%>">
								<div class="final_cart">
									<button class="gocart" type="submit">장바구니</button>
									<div class="testSC">
										시향페이퍼 신청 : <input type="checkbox" />
									</div>
								</div>				
							
							</form>
						</div>
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

						<span class="ment"><%=perfumes.getPf_accords()%></span>
					</div>
					<hr>
					<!-- <div class="Allcomment"> -->
					<p class="reviewnav">Notes</p>
					<div class="comment">
						<!-- comment class는 각각 하나의 댓글을 담아냄 -->
						<div class="ment">
							<p>
								<strong>Top notes </strong><br>
								<%=perfumes.getPF_TOP()%>
							</p>
							<p>
								<strong>Mid notes </strong><br><%=perfumes.getPF_MID()%>
							</p>
							<p>
								<strong>Bottom notes </strong><br><%=perfumes.getPF_BOTTOM()%>
							</p>
						</div>
		</section>
		<!---------------------------------------------- 리뷰댓글칸-------------------------------------------------------------->

		<% List<ReveiwDTO> reviews = new ReviewDAO().allReviews();%>


		<div id="review_tavleBox">
			<div id="button">
				<button class="buttonwr">글쓰기</button>
			</div>
			<table class="review-table">
				
				<thead>
					<tr>
						<th>향수</th>
						<th>평점(1/10)</th>
						<th>후기</th>
						<th colspan="2">등록일자</th>
					
					</tr>
				</thead>
				<tbody>
					<%for (ReveiwDTO rev : reviews) {%>
						<tr>
							<td><%=rev.getPF_NAME()%></td>
							<td><%=rev.getREVIEW_STAR()%></td>
							<td><%=rev.getREVIEW_CONTENT()%></td>
							<td><%=rev.getREVIEWED_AT()%></td>
							<td><a href="ReviewDelete.do?REVIEW_CONTENT=<%=rev.getREVIEW_CONTENT()%>">삭제</a></td>
						</tr>
					<% }%>
				</tbody>
			</table>
		</div>



		<!-- 구분선   -->


		<div id="review_modal">

			<dialog class="modal">

			<h2>향수리뷰리뷰리뷰</h2>
			<form action="ReviewService.do" method="POST">
				<div class="star_rating">
					<fieldset class="rate">
						<input type="radio" id="rating10" name="rating" value="10"><label
							for="rating10" title="5점"></label> <input type="radio"
							id="rating9" name="rating" value="9"><label class="half"
							for="rating9" title="4.5점"></label> <input type="radio"
							id="rating8" name="rating" value="8"><label for="rating8"
							title="4점"></label> <input type="radio" id="rating7"
							name="rating" value="7"><label class="half" for="rating7"
							title="3.5점"></label> <input type="radio" id="rating6"
							name="rating" value="6"><label for="rating6" title="3점"></label>
						<input type="radio" id="rating5" name="rating" value="5"><label
							class="half" for="rating5" title="2.5점"></label> <input
							type="radio" id="rating4" name="rating" value="4"><label
							for="rating4" title="2점"></label> <input type="radio"
							id="rating3" name="rating" value="3"><label class="half"
							for="rating3" title="1.5점"></label> <input type="radio"
							id="rating2" name="rating" value="2"><label for="rating2"
							title="1점"></label> <input type="radio" id="rating1"
							name="rating" value="1"><label class="half" for="rating1"
							title="0.5점"></label>

					</fieldset>
					<br>


				</div>
				<%
				System.out.println(perfumes.getPf_name());
				%>
				<input type="text" name="contents" class="star_box"
					placeholder="리뷰내용을 입력해주세요"><br> <input type="hidden"
					name="MEM_ID" VALUE="<%=user_id%>"> <input type="hidden"
					name="PF_IDX" VALUE="<%=PF_IDX%>>"> <input type="hidden"
					name="PF_NAME" VALUE="<%=perfumes.getPf_name()%>"> <input
					type="submit" class="btn02" value="리뷰 등록">


			</form>
			<form method="dialog">
				<button>Close</button>
			</form>
			</dialog>
		</div>



		<!-- footer 페이지 입니다~!.  -->
		<%@include file="Footer.jsp"%>

	</div>


</body>


<script>

const modalBtn = document.querySelector(".buttonwr");
const modal = document.querySelector(".modal");

modalBtn.addEventListener("click", () => {
    modal.showModal();
})

//수량 input 태그 선택 
   const putCntInput = document.querySelector('input[type="number"]');
   //이벤트 추가
   //btn을 'change' 값이 바뀔때마다 'function()' 기능을 적용시킨다.
   //밑에 세 가지 모두 키보드를 누르고 뗄 때마다 의미함
    //keyup
   //keypress
   //keydown
   putCntInput.addEventListener('change', function(){
      const priceTag = document.querySelector('#priceSpan').innerText;//선택한 태그의 innerText 가격값을 가져온다.
      //alert(priceTag.innerText);
      const putCnt = document.querySelector('input[type="number"]').value;
      const result = priceTag * putCnt;
       document.querySelector('#totalPriceSpan').innerText = result;
   });
   
    putCntInput.addEventListener('keyup',function(){
      //총가격 변경시키기
      //1.가격정보 가져온다.
      const priceTag = document.querySelector('#priceSpan').innerText;//선택한 태그의 innerText 가격값을 가져온다.
      //alert(priceTag.innerText);
      
      //2.수량정보 가져온다.
      const putCnt = document.querySelector('input[type="number"]').value;
      
      //3.수량과 가격을 곱한다.
      const result = priceTag * putCnt;
      
      //4.총가격의 값을 바꾼다.
       document.querySelector('#totalPriceSpan').innerText = result;
   });
   



</script>

</html>