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
    <link rel="stylesheet" href="css/pfDetail.css" type="text/css">
    <link href="styles/detail.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/Review_style.css" type="text/css">
    <link rel="stylesheet" href="css/reviewlist_style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
    <title>상세 페이지</title>
    <style>
    #one img {
    padding-top: 70px;
    width: 80%;
    padding-left: 50px;
}
  
    
     .pf_img{
      width: 72%;
     }
     
     #review_modal{
     margin-right : auto;}   
     
     #button{
     text-align : right;
     margin-right : 190px;} 
   </style>

</head>
<body>

   <%
      DecimalFormat df = new DecimalFormat("###,###");
      String user_id = (String) session.getAttribute("user_id");
      System.out.println(user_id);
      String PFIDX = request.getParameter("pfIdx");
      System.out.print("pfidx확인"+PFIDX);
      int PF_IDX = Integer.parseInt(PFIDX);
      CartPerfumeDTO perfumes = new CartDAO().selectPerfume(PF_IDX);
      
     System.out.print(perfumes.getPf_accords());
     System.out.print(perfumes.getPf_name());
     System.out.print(perfumes.getPf_image());
     System.out.print(perfumes.getPf_price());
     //금액 .찍어서 여기서 변수 저장
     int price = (int)Math.round(perfumes.getPf_price());//double -> 정수형으로
     String money = df.format(price); // .찍어줌
   

   
   String pfIdx = request.getParameter("pfIdx");
   System.out.println(pfIdx);
   %>

   <nav>
      <!--최상단의 배너-->
      <div class="menu">
         <a href="Main.jsp" class="logo">PLAY SCENT</a>
         <ul>
            <li><a href="Login.jsp" class="li">LOGIN |</a></li>
            <li><a href="Login.jsp" class="li">JOIN |</a></li>
            <li><a href="Mypage.jsp" class="li">마이페이지 |</a></li>
            <li><a href="Cart.jsp" class="li">장바구니</a></li>
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

         <div>가격 :
            <span id="priceSpan"><%= price %></span>
            
         </div>
         <div>수량 : 
            <input type="number" class="my-input" name="quantity" value="1" min="1" max="10">
         </div>
         <div>총 가격 : 
         <span id="totalPriceSpan"><%= price %></span></div>
         <!-- 총 가격 어떻게 보낼지 고민중   -->
         <input type="hidden" name="price" value="<%=money%>">
         <div>
            <div class="btnDiv">
               <input type="submit" class="btn" value="장바구니">
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
<!---------------------------------------------- 리뷰댓글칸-------------------------------------------------------------->

   <%
                     
                  List<ReveiwDTO> reviews = new ReviewDAO().allReviews();
                     
                     
                     %>

                  
            <div >      
                  <div id="button"><button class="modal-Btn">글쓰기</button></div>
                  <table class="review-table" >
    <thead>
    <tr>
        <th>향수</th>
        <th>평점(1/10)</th>
        <th>후기</th>
        <th>등록일자</th>
        <th> </th>

    </tr>
    </thead>
    <tbody>
   <%for(ReveiwDTO rev:reviews){ %>
                     <tr>
                     
                     <td><%=rev.getPF_NAME()%></td>
                        <td><%=rev.getREVIEW_STAR()%></td>
                        <td><%=rev.getREVIEW_CONTENT() %></td>
                        <td><%=rev.getREVIEWED_AT() %></td>   
                        <td><a href = "ReviewDelete.do?REVIEW_CONTENT=<%=rev.getREVIEW_CONTENT()%>">삭제</a></td>
                                       
                     </tr>
                     <%} %>
                     
                  
    </tbody>
</table>
         </div>         
                  
                  
                  
<!-- 구분선                             -->         
                  
                  
<div id="review_modal">
    
    <dialog class="modal">
        
   <h2>향수리뷰리뷰리뷰</h2>
   <form action= "ReviewService.do" method= "POST">
   <div class ="star_rating">
    <fieldset class="rate">
                                <input type="radio" id="rating10" name="rating" value="10"><label for="rating10" title="5점"></label>
                                <input type="radio" id="rating9" name="rating" value="9"><label class="half" for="rating9" title="4.5점"></label>
                                <input type="radio" id="rating8" name="rating" value="8"><label for="rating8" title="4점"></label>
                                <input type="radio" id="rating7" name="rating" value="7"><label class="half" for="rating7" title="3.5점"></label>
                                <input type="radio" id="rating6" name="rating" value="6"><label for="rating6" title="3점"></label>
                                <input type="radio" id="rating5" name="rating" value="5"><label class="half" for="rating5" title="2.5점"></label>
                                <input type="radio" id="rating4" name="rating" value="4"><label for="rating4" title="2점"></label>
                                <input type="radio" id="rating3" name="rating" value="3"><label class="half" for="rating3" title="1.5점"></label>
                                <input type="radio" id="rating2" name="rating" value="2"><label for="rating2" title="1점"></label>
                                <input type="radio" id="rating1" name="rating" value="1"><label class="half" for="rating1" title="0.5점"></label>
                        
                            </fieldset><br>
                            

</div>
<%System.out.println(perfumes.getPf_name()); %>
<input type = "text" name = "contents" class="star_box" placeholder = "리뷰내용을 입력해주세요"><br>
<input type = "hidden" name = "MEM_ID" VALUE = "<%= user_id %>">
<input type = "hidden" name = "PF_IDX" VALUE = "<%= PF_IDX %>>">
<input type = "hidden" name = "PF_NAME" VALUE = "<%= perfumes.getPf_name() %>">
<input type="submit" class="btn02" value="리뷰 등록">


</form>
        <form method="dialog">
            <button>Close</button>
        </form>
    </dialog>
</div>



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

<script>

const modalBtn = document.querySelector(".modal-Btn");
const modal = document.querySelector(".modal");

modalBtn.addEventListener("click", () => {
    modal.showModal()
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