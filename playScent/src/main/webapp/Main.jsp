<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.playscent.model.PerfumeDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.playscent.model.PerfumeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main_style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
   <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>


    <!-- <script
    src="https://code.jquery.com/jquery-3.5.1.js"
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"></script> -->
    <!-- <link rel="stylesheet" href="./slick-1.8.1/slick/slick.css">
    <link rel="stylesheet" href="./slick-1.8.1/slick/slick-theme.css" type="text/css">   -->  
    <script src="script/jquery-1.12.4.js"></script>
    <title>PLAY SCENT</title>
    <style>        
        swiper-container {
         width: 100%;
         margin-top: 15px;
       }

	   header .jin_up {
	      width: 38%;
	   }
	   
	   header .jin_up li {
		 width: 23.6666%;
	   }
	   
       .mySwiper2{
         margin-top: 0;
       }
       
       .mySwiper2 swiper-slide img{
         height: 615px;   
       }
       swiper-slide {
         background-position: center;
         background-size: cover;
         width: 23.5%;
         height: auto;
         overflow: hidden;
       }
   
       swiper-slide img {
         display: block;
         width: 100%;
       }
       
       #ex_container #product_jin li {
        width: 100%;
        height: 500px;
        background-color: rgb(241, 246, 235, .5);
        border-radius: 20px
      }
      
      .swiper-pagination-bullet-active {
         background: #51a90f;
      }
      
      .swiper-button-next svg, .swiper-button-prev svg {
          width: 60%;
       }
       
       .swiper-pagination-bullet-active {
        background: var(--swiper-pagination-color, #49a728);
       }
      footer #footer_content .footer_meddle .f_logo {
		width: 38%;
	  }
	  footer #footer_content .footer_meddle .f_logo img{
	    display:block;
	    width:210px;
	  	margin-top: 5px;
	  	margin: 0 auto;
	  }
    </style>
</head>
 
<body>
<%
	ArrayList<PerfumeDTO> perfumes = new PerfumeDAO().SweetsDAO();
	//System.out.println(perfumes.size()+"TEstset");
	// System.out.println(perfumes.get(0).getPF_IDX());
	DecimalFormat df = new DecimalFormat("###,###");
	ArrayList<PerfumeDTO> manperfume = new PerfumeDAO().manDAO(); /* 남자향수 */
	ArrayList<PerfumeDTO> womanperfume = new PerfumeDAO().womanDAO(); /* 여자향수 */
	ArrayList<PerfumeDTO> allperfume = new PerfumeDAO().allPerfumes(); /* 모든향수 */
	List<PerfumeDTO> summerperfume = new PerfumeDAO().summerDAO();/* 여름향수 */ 
	Random rdm = new Random();

%>

	<%-- <%
		// 로그인한 유저인지 확인하기 위해.
		String user_id = (String) session.getAttribute("user_id");  
	    System.out.println(user_id);
	    String check_user = user_id != "" ? "Mypage.jsp" : "Main.jsp";
	    System.out.println(check_user+ "지금");
	    String check_userPage = user_id != "" ? "마이페이지" : "고객 전용";
	%>
 --%>
	
    <div id="jinheewrap">
        <%@include file="Header2.jsp" %>  <!-- 우리 사이트 HEADER 파일 입니다. -->
        

        <!----------------------------header end--------------------------->

        <div id="jinhee_pcnav">
                <nav id="pc_nav">    
                    <ul class="semi_nav">
                        <li><a href="newneoSurvey.jsp" target='_blank' >향수 테스트</a></li>
                        <li><a href="Woman.jsp">여성</a></li>
                        <li><a href="Man.jsp">남성</a></li>
                        <li><a href="summer.jsp">여름추천향수</a></li>
                        <!-- <li><a href="#none">선물용</a></li> -->
                        <li><a href="Scent4cut.jsp">향기네컷</a></li>
                    </ul>
                </nav>
        </div>
                
        <!-------------------------pc nav  end----------------------------> 

        <div id="main_slider">
           <swiper-container class="mySwiper2" pagination="true" speed="800" loop="true" pagination-clickable="true" navigation="true" space-between="0"
              centered-slides="true" autoplay-delay="2500" autoplay-disable-on-interaction="false">
             <swiper-slide><a href="#none"><img src="https://image.sivillage.com/upload/C00001/dspl/banner/8820/740/240100000426740.jpg" alt=""> </a></swiper-slide>
             <swiper-slide><a href="#none"><img src="https://image.sivillage.com/upload/C00001/dspl/banner/8820/738/240100000426738.jpg" alt=""> </a></swiper-slide>
             <swiper-slide><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/919/2402151902139.jpg" alt=""> </a></swiper-slide>
             <swiper-slide><a href="#none"><img src="https://image.thehyundai.com/HM/HM039/20240306/183520/ban20240319113532.jpg" alt=""> </a></swiper-slide>
          </swiper-container>
          
           <!--  <ul class="jinhee_naum">
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
            </ul> -->
        </div>

       <!--------------------------pc slide  end-------------------------->
       
    
        <div id="jinhee_exhibition">
                <div class="exhi_jin cf">
                    <ul class="exhibition">
                        <li>
                            <div class="img_exh">
                                <img src="https://www.herbnoori.com/shopimages/herbnoori/0150060000212.jpg?1463021372" alt="">
                            </div>
                            <a href="FLORAL.jsp">플로럴</a>
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://d2gfz7wkiigkmv.cloudfront.net/pickin/2/1/2/sOBOdnVUSsWNegw74VOTsQ" alt="">
                            </div>
                            <a href="Citrus.jsp">시트러스</a>    
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/5c/7e/18/31/5c7e18310a00d2738de6.jpg" alt="">
                            </div>
                            <a href="Woody.jsp">우디</a>
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://p16-va.lemon8cdn.com/tos-maliva-v-ac5634-us/ooQhIseeAzJHXxpQBAnDQiKWtRlQkCB1AEDIbc~tplv-tej9nj120t-origin.webp" alt="">
                            </div>
                            <a href="Sweets.jsp">스위트</a>
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnysVjqH3Z360ovLduazJ5M-yyoAACWV0eWuWp6o0iS5BiP0yMtKYEu__iB548I3VrxPE&usqp=CAU" alt="">
                            </div>
                            <a href="Musk.jsp">머스크</a>
                        </li>

                        <li>
                            <div class="img_exh">
                                <img src="imges/scent4cut.jpg" alt="향기4컷">
                            </div>
                            <a href="Scent4cut.jsp">향기네컷</a>    
                        </li>
                    </ul> 
                </div>            
        </div>

    <!---------------------기획전 edn ---------------------------->       

        <div id="ex_container" class="cf">
            <div class="jinhee_nct">
                <h2 class="repres_title">대표향 추천상품</h2>
                <div id="representative">
                   <img src="https://image.jtbcplus.kr/data/contents/jam_photo/202110/11/834a7806-d24c-4c11-b24e-c6060139377b.jpg" alt="" />
                </div>
                
              <!--   <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul> -->

                <ul id="product_jin">
                   <swiper-container class="mySwiper"  pagination="true" effect="coverflow" grab-cursor="true" centered-slides="false"
                      slides-per-view="auto" coverflow-effect-rotate="50" coverflow-effect-stretch="0" coverflow-effect-depth="100"
                      coverflow-effect-modifier="1" coverflow-effect-slide-shadows="true">
                       <% for(int i=0; i<10; i++){int rd = rdm.nextInt(310);%>
                        <swiper-slide>
                            <li><a href="PerfumeDetail.jsp?pfIdx=<%= allperfume.get(rd).getPF_IDX()%>">
                                 <div class="product_img">
                                     <img class="jinhee_img" src="<%= allperfume.get(rd).getPF_Image() %>" alt="">
                                 </div>
         
                                 <h3 class="per_brand"><%= allperfume.get(rd).getPF_BRAND() %></h3>
                                 <p><%= allperfume.get(rd).getPF_NAME() %></p>
                                 <p class="ptd"><%= allperfume.get(rd).getPF_Accords() %></p>
         
                                 <div class="product_price">
                                     <div class="ohjinhee_point"><%
                                        //금액 .찍어서 여기서 변수 저장
                                          int price = (int)Math.round(allperfume.get(i).getPF_PRICE());//double -> 정수형으로
                                          String money = df.format(price); // .찍어줌 %>
                                        <h3 class="per_price"><%= money %>원<span></span></h3>
                                      </div>
                                    <!-- <h2 class="sale">12%</h2> -->
                                 </div>         
                             </a></li>
                           </swiper-slide>
                         <%}%>                 
                 </swiper-container>                 
                </ul>
            </div>    


            <!------------------------------이슈머 최고추천상품 end------------------------------>
            
            
            <div class="jinhee_nct jinhee_nct2" >
                <h2 class="repres_title rt23">여성 베스트상품</h2> <span class="sub"></span>
                
              <!--   <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul> -->

                <ul id="product_jin">
                   <swiper-container class="mySwiper" pagination="true" effect="coverflow" grab-cursor="true" centered-slides="false"
                   slides-per-view="auto" coverflow-effect-rotate="50" coverflow-effect-stretch="0" coverflow-effect-depth="100"
                   coverflow-effect-modifier="1" coverflow-effect-slide-shadows="true">
                    <% for(int i=0; i<10; i++){int rd = rdm.nextInt(123);%>
                     <swiper-slide>
                         <li><a href="PerfumeDetail.jsp?pfIdx=<%= womanperfume.get(rd).getPF_IDX()%>">
                              <div class="product_img">
                                  <img class="jinhee_img" src="<%= womanperfume.get(rd).getPF_Image()%>" alt="여자향수">
                              </div>
      
                              <h3 class="per_brand"><%= womanperfume.get(rd).getPF_BRAND()%> </h3>
                              <p><%= womanperfume.get(rd).getPF_NAME()%></p>
                              <p class="ptd"><%= womanperfume.get(rd).getPF_Accords()%></p>
      
                              <div class="product_price">
                                 <div class="ohjinhee_point"><%
                                        //금액 .찍어서 여기서 변수 저장
                                          int price = (int)Math.round(womanperfume.get(rd).getPF_PRICE());//double -> 정수형으로
                                          String money = df.format(price); // .찍어줌 %>
                                        <h3 class="per_price"><%= money %>원<span></span></h3>
                                      </div>
                                 <!-- <h2 class="sale">42%</h2> -->
                              </div>         
                          </a></li>
                        </swiper-slide>
                      <%}%>                 
                 </swiper-container>        
                </ul>
            </div> 

            <!------------------------------고객 추천상품 end----------------------------------->


            <div class="jinhee_nct jinhee_nct2 nct3" >
                <h2 class="repres_title rt23">남성 베스트상품</h2> <span class="sub"></span>
             <!--    
                <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul> -->

                <ul id="product_jin">
                  <swiper-container class="mySwiper" pagination="true" effect="coverflow" grab-cursor="true" centered-slides="false"
                   slides-per-view="auto" coverflow-effect-rotate="50" coverflow-effect-stretch="0" coverflow-effect-depth="100"
                   coverflow-effect-modifier="1" coverflow-effect-slide-shadows="true">
                    <% for(int i=0; i<10; i++){int rd = rdm.nextInt(192);%>
                     <swiper-slide>
                         <li><a href="PerfumeDetail.jsp?pfIdx=<%= manperfume.get(rd).getPF_IDX()%>">
                              <div class="product_img">
                                  <img class="jinhee_img" src="<%= manperfume.get(rd).getPF_Image()%>" alt="여자향수">
                              </div>
      
                              <h3 class="per_brand"><%= manperfume.get(rd).getPF_BRAND()%> </h3>
                              <p><%= manperfume.get(rd).getPF_NAME()%></p>
                              <p class="ptd"><%= manperfume.get(rd).getPF_Accords()%></p>
      
                              <div class="product_price">
                                 <div class="ohjinhee_point"><%
                                        //금액 .찍어서 여기서 변수 저장
                                          int price = (int)Math.round(manperfume.get(rd).getPF_PRICE());//double -> 정수형으로
                                          String money = df.format(price); // .찍어줌 %>
                                        <h3 class="per_price"><%= money %>원<span></span></h3>
                                      </div>
                                 <!-- <h2 class="sale">42%</h2> -->
                              </div>         
                          </a></li>
                        </swiper-slide>
                      <%}%>                  
               </swiper-container>
                </ul>
            </div>

             
              <div class="jinhee_nct jinhee_nct2" >
				<h2 class="repres_title rt23">여름맞이 추천 향수</h2> <span class="sub"></span>
                
                <!-- <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul> -->

                <ul id="product_jin">
                <swiper-container class="mySwiper" pagination="true" effect="coverflow" grab-cursor="true" centered-slides="false"
	                slides-per-view="auto" coverflow-effect-rotate="50" coverflow-effect-stretch="0" coverflow-effect-depth="100"
	                coverflow-effect-modifier="1" coverflow-effect-slide-shadows="true">
	                 <% for(int i=0; i<summerperfume.size(); i++){%>
	                  <swiper-slide>
	                      <li><a href="PerfumeDetail.jsp?pfIdx=<%= summerperfume.get(i).getPF_IDX()%>">
	                           <div class="product_img">
	                               <img class="jinhee_img" src="<%= summerperfume.get(i).getPF_Image()%>" alt="여름 향수">
	                           </div>
	   
	                           <h3 class="per_brand"><%= summerperfume.get(i).getPF_BRAND()%></h3>
	                           <p><%= summerperfume.get(i).getPF_NAME()%></p>
	                           <p class="ptd"><%= summerperfume.get(i).getPF_Accords()%></p>
	   
	                           <div class="product_price">
	                               <div class="ohjinhee_point"><%
                                      //금액 .찍어서 여기서 변수 저장
                                        int price = (int)Math.round(summerperfume.get(i).getPF_PRICE());//double -> 정수형으로
                                        String money = df.format(price); // .찍어줌 %>
                                      <h3 class="per_price"><%= money %>원<span></span></h3>
                                    </div>
	                       </a></li>
	                    </swiper-slide> 
	                  <%}%>                 
              </swiper-container>
                </ul>
            </div> 
       
        </div>
        <a href="#none" class="top_but">
            <img src="imges/up1.png" alt="">
        </a>
        
        <!-- footer 페이지 입니다~!.  -->
        <%@include file="Footer.jsp" %>
        

        <!-------------------------------------footer end------------------------------------>
          
        <div id="jin_navwrawp">
                      
        </div>
    </div>


   <!--    <script src="./slick-1.8.1/slick/slick.js" type="text/javascript"></script> -->
      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
      

        <script type="text/javascript">
           /*  $(".jinhee_naum").slick(
                {
                   dots: true,
                    sldie: 'div',
                    lazyLoad: 'ondemand',
                    infinite: true,
                    speed : 2000,
                    autoplay : true,
                    autoplaySpeed : 3000,
                    pauseOnHover : true,
                    dots: false,
                    prevArrow: false,
                    nextArrow: false
                    // fade: true,
              });  */
            
            
            


        </script>

   
    <script src="script/script.js"></script>

</body>   
</html>