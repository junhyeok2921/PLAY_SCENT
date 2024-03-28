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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">


    <!-- <script
    src="https://code.jquery.com/jquery-3.5.1.js"
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"></script> -->
    <link rel="stylesheet" href="./slick-1.8.1/slick/slick.css">
    <link rel="stylesheet" href="./slick-1.8.1/slick/slick-theme.css" type="text/css">    
    <script src="script/jquery-1.12.4.js"></script>
    <title>PLAY SCENT</title>
</head>
 
<body>
    <div id="jinheewrap">
        <header class="pc_header">
                <ul class="jin_up">
                    <!-- <li><a href="#none">
                        <img src="imges/n9.png" alt=""> <span class="jine1">지갑</span></a></li> -->
                    <li><a href="Login.jsp">LOGIN</a></li>
                    <li><a href="Login.jsp">JOIN</a></li>
                    <li><a href="#none"><span class="jine2">마이페이지</span><img class="np2" src="imges/nm77.png" alt=""></a></li>
                    <li><a href="#none"><span class="jine2">고객센터</span><img class="np2" src="imges/nm77.png" alt=""></a></li>
                    <li><a href="Cart.jsp"><img src="imges/nm4.png" alt=""><span class="jine1">장바구니</span></a></li>
                </ul>

                <div id="jin_medium">
                        <div class="naunlogo">
                            <img src="imges/playScent_logo.png" alt="logo">
                        </div>

                        <div class="jin_search">
                            <form action="" class="search cf">
                                <input type="text" id="naum_search" placeholder="검색어를 입력하세요.">
                                <div class="naum_button">
                                    <img src="imges/nm55.png" alt="">
                                </div>
                            </form>    
                        </div>

                        <div class="ranking_slide">
                           <!--  <div class="slide_title">이슈머 랭킹</div>

                            <div class="rank_box cf">
                                <span class="r_number">1</span>                         
                                
                                <div class="ranker_info_box cf">
                                    <span class="ranker_info">유**</span>
                                    <span class="ranker_info"> 01031****50</span>
                                    <span class="ranker_info op1">P</span>
                                    <span class="ranker_info">56,103</span>
                                </div>
                                <div class="n_arrow">
                                    <img src="imges/nm77.png" style="width: 13px; height: 9px;" alt="">
                                </div>
                            </div>    -->
                        </div>                         

                </div>
        </header>   

        <!----------------------------header end--------------------------->

        <div id="jinhee_pcnav">
                <nav id="pc_nav">
                    <div class="all_menu">
                        <img src="imges/nm1.png" alt="">
                        <span>전체카테고리</span>
                    </div>     
                    <ul class="semi_nav">
                        <li><a href="#none">여성</a></li>
                        <li><a href="#none">남성</a></li>
                        <li><a href="#none">연령별</a></li>
                        <li><a href="#none">브랜드</a></li>
                        <li><a href="#none">선물용</a></li>
                        <li><a href="#none">향기네컷</a></li>
                    </ul>
                </nav>
        </div>
                
        <!-------------------------pc nav  end----------------------------> 

        <div id="main_slider">
            <ul class="jinhee_naum">
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
                <li><a href="#none"><img src="https://cdn2.galleria.co.kr/cmd/RL_0x0/src/https://image.galleria.co.kr/C00001/dspl/banner/90/444/2403081928773.jpg" alt=""> </a></li>
            </ul>

            <ul class="pont">
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
            </ul>
        </div>

       <!--------------------------pc slide  end-------------------------->

       <div id="main_slider" class="molie_slide">
            <ul class="jinhee_naum moblie_banner">
                <li><a href="#none"><img src="imges/nm_moblie.png" alt=""> </a></li>
                <li><a href="#none"><img src="imges/nm_moblie.png" alt=""> </a></li>
                <li><a href="#none"><img src="imges/nm_moblie.png" alt=""> </a></li>
                <li><a href="#none"><img src="imges/nm_moblie.png" alt=""> </a></li>
            </ul>

            <ul class="pont">
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
                <li><a href="#none"></a></li>
            </ul>
        </div>

    <!-------------------------moblie-slide end-------------------------------->
    
        <div id="jinhee_exhibition">
                <div class="exhi_jin cf">
                    <ul class="exhibition">
                        <li>
                            <div class="img_exh">
                                <img src="https://www.herbnoori.com/shopimages/herbnoori/0150060000212.jpg?1463021372" alt="">
                            </div>
                            <a href="http://localhost:8081/playScent/PERFUMES/FLORAL.jsp">플로럴</a>    
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://d2gfz7wkiigkmv.cloudfront.net/pickin/2/1/2/sOBOdnVUSsWNegw74VOTsQ" alt="">
                            </div>
                            <a href="http://localhost:8081/playScent/PERFUMES/Citrus.jsp">시트러스</a>    
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/5c/7e/18/31/5c7e18310a00d2738de6.jpg" alt="">
                            </div>
                            <a href="http://localhost:8081/playScent/PERFUMES/Woody.jsp">우디</a>    
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://p16-va.lemon8cdn.com/tos-maliva-v-ac5634-us/ooQhIseeAzJHXxpQBAnDQiKWtRlQkCB1AEDIbc~tplv-tej9nj120t-origin.webp" alt="">
                            </div>
                            <a href="http://localhost:8081/playScent/PERFUMES/Sweets.jsp">스위트</a>    
                        </li>
                        <li>
                            <div class="img_exh">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnysVjqH3Z360ovLduazJ5M-yyoAACWV0eWuWp6o0iS5BiP0yMtKYEu__iB548I3VrxPE&usqp=CAU" alt="">
                            </div>
                            <a href="http://localhost:8081/playScent/PERFUMES/Musk.jsp">머스크</a>    
                        </li>

                        <li>
                            <div class="img_exh">
                                <img src="imges/mmm1.png" alt="">
                            </div>
                            <a href="none">향기네컷</a>    
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
                
                <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul>

                <ul id="product_jin">
                <% for(int i=0; i<4; i++){%>
                	<li><a href="PerfumeDetail.jsp?pfIdx=">
                        <div class="product_img">
                            <img class="jinhee_img" src="https://www.newstap.co.kr/news/photo/202209/173599_281311_1556.jpg" alt="">
                        </div>

                        <h3 class="per_brand">구딸파리 </h3>
                        <p>오 드 아드리앙 EDP</p>
                        <p class="ptd">태양 아래 레몬 과실을 바구니에 툭 담아낼 때 퍼지는 아로마틱한 향기</p>

                        <div class="product_price">
                            <div class="ohjinhee_point">
                                <h3 class="per_price">148,800원<span>189,800원</span></h3>
                            </div>
                           <h2 class="sale">42%</h2>
                        </div>         
                    </a></li>
                <%}%>
                    
                   <!--  <li><a href="#none">
                        <div class="product_img">
                            <img class="jinhee_img" src="https://lh3.googleusercontent.com/proxy/jeN1OGWBrdQsNPOUnSFjS3yce7EgJ_1KSsXYb59yW16mbpA-rPCnkqDZkbvqZg0K20UZbVnBvv4r3qW9JA4fDNsfr0Jw9x9Q_76rwDeq9dYvfq3ApXJiseQs66wUEA" alt="">
                        </div>

                        <h3 class="per_brand">구딸파리</h3>
                        <p>오 드 아드리앙 EDP</p>
                        <p class="ptd">태양 아래 레몬 과실을 바구니에 툭 담아낼 때 퍼지는 아로마틱한 향기</p>

                        <div class="product_price">
                            <div class="ohjinhee_point">
                                <h3 class="per_price">148,800원<span>189,800원</span></h3>
                            </div>
                           <h2 class="sale">42%</h2>
                        </div>         
                    </a></li> -->
                   
                </ul>
            </div>    


            <!------------------------------이슈머 최고추천상품 end------------------------------>
            
            <div class="jinhee_nct jinhee_nct2" >
                <h2 class="repres_title rt23">여성 베스트상품</h2> <span class="sub"></span>
                
                <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul>

                <ul id="product_jin">
                    <% for(int i=0; i<4; i++){%>
	                	<li><a href="PerfumeDetail.jsp?">
	                        <div class="product_img">
	                            <img class="jinhee_img" src="https://www.newstap.co.kr/news/photo/202209/173599_281311_1556.jpg" alt="">
	                        </div>
	
	                        <h3 class="per_brand">구딸파리 </h3>
	                        <p>오 드 아드리앙 EDP</p>
	                        <p class="ptd">태양 아래 레몬 과실을 바구니에 툭 담아낼 때 퍼지는 아로마틱한 향기</p>
	
	                        <div class="product_price">
	                            <div class="ohjinhee_point">
	                                <h3 class="per_price">148,800원<span>189,800원</span></h3>
	                            </div>
	                           <h2 class="sale">42%</h2>
	                        </div>         
	                    </a></li>
	                <%}%>
                </ul>
            </div> 

            <!------------------------------고객 추천상품 end----------------------------------->


            <div class="jinhee_nct jinhee_nct2 nct3" >
                <h2 class="repres_title rt23">남성 베스트상품</h2> <span class="sub"></span>
                
                <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul>

                <ul id="product_jin">
                   <% for(int i=0; i<4; i++){%>
	                	<li><a href="PerfumeDetail.jsp?">
	                        <div class="product_img">
	                            <img class="jinhee_img" src="https://www.newstap.co.kr/news/photo/202209/173599_281311_1556.jpg" alt="">
	                        </div>
	
	                        <h3 class="per_brand">구딸파리 </h3>
	                        <p>오 드 아드리앙 EDP</p>
	                        <p class="ptd">태양 아래 레몬 과실을 바구니에 툭 담아낼 때 퍼지는 아로마틱한 향기</p>
	
	                        <div class="product_price">
	                            <div class="ohjinhee_point">
	                                <h3 class="per_price">148,800원<span>189,800원</span></h3>
	                            </div>
	                           <h2 class="sale">42%</h2>
	                        </div>         
	                    </a></li>
	                <%}%>
                </ul>
            </div>


			 <div class="jinhee_nct jinhee_nct2" >
                <h2 class="repres_title rt23">연령별 베스트상품</h2> <span class="sub"></span>
                
                <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul>

                <ul id="product_jin">
                    <% for(int i=0; i<4; i++){%>
	                	<li><a href="PerfumeDetail.jsp?">
	                        <div class="product_img">
	                            <img class="jinhee_img" src="https://www.newstap.co.kr/news/photo/202209/173599_281311_1556.jpg" alt="">
	                        </div>
	
	                        <h3 class="per_brand">구딸파리 </h3>
	                        <p>오 드 아드리앙 EDP</p>
	                        <p class="ptd">태양 아래 레몬 과실을 바구니에 툭 담아낼 때 퍼지는 아로마틱한 향기</p>
	
	                        <div class="product_price">
	                            <div class="ohjinhee_point">
	                                <h3 class="per_price">148,800원<span>189,800원</span></h3>
	                            </div>
	                           <h2 class="sale">42%</h2>
	                        </div>         
	                    </a></li>
	                <%}%>
                </ul>
            </div> 
       		
       		   <div class="jinhee_nct jinhee_nct2" >
                <h2 class="repres_title rt23">브랜드 베스트상품</h2> <span class="sub"></span>
                
                <ul class="pont">
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul>

                <ul id="product_jin">
                    <% for(int i=0; i<4; i++){%>
	                	<li><a href="PerfumeDetail.jsp?">
	                        <div class="product_img">
	                            <img class="jinhee_img" src="https://www.newstap.co.kr/news/photo/202209/173599_281311_1556.jpg" alt="">
	                        </div>
	
	                        <h3 class="per_brand">구딸파리 </h3>
	                        <p>오 드 아드리앙 EDP</p>
	                        <p class="ptd">태양 아래 레몬 과실을 바구니에 툭 담아낼 때 퍼지는 아로마틱한 향기</p>
	
	                        <div class="product_price">
	                            <div class="ohjinhee_point">
	                                <h3 class="per_price">148,800원<span>189,800원</span></h3>
	                            </div>
	                           <h2 class="sale">42%</h2>
	                        </div>         
	                    </a></li>
	                <%}%>
                </ul>
            </div> 
       
        </div>

        

    

        <a href="#none" class="top_but">
            <img src="imges/up1.png" alt="">
        </a>


        <footer>
            <ul class="footer_up">
                <li><a href="#none">1:1문의</a></li>
                <li><a href="#none">이용안내</a></li>
                <li><a href="#none">개인정보처리방침</a></li>
                <li><a href="#none">FAQ</a></li>
            </ul>

             <div id="footer_content">                  
                    <div class="footer_meddle">
                         <div class="f_logo tt1">
                             <img src="imges/pcnm_logo.png" alt="">
                         </div>

                         <ul class="foo_intro tt1">
                             <li><a href="#none">NAUM mall</a></li>
                             <li><a href="#none">대표자명: 박원석   문의전화: 1577-7450   팩스: 061-284-6607</a></li>
                             <li><a href="#none">전라남도 목포시 석현로 46 벤처지원센터 204호</a></li>
                             <li><a href="#none">나음SE 사업자등록번호: 111-25-77011 <span class="naum_b">사업자정보확인</span></a></li>
                             <li><a href="#none">개인정보관리책임자: 김대갑 (info@naumse.com)</a></li>
                             <li><a href="#none">통신판매신고: 제2020-전남목포-0058호 </a></li>
                         </ul>

                         <div class="sevice_naumjin tt1">
                                <img src="imges/bheb.png" alt="">

                                <ul class="scro_naum">
                                    <li><span class="oh_jin">[INICIS]</span>  구매안전(에스크로)서비스</li>
                                    <li>고객님의 안전거래를 위해 현금 등으로 결제 시, 저희 사이트에서 <br>
                                        가입한 구매안전 서비스를 이용하실 수 있습니다.
                                    </li>

                                    <a href="#none">서비스가입확인</a>
                                </ul>
                         </div>
                    </div>

                    <div class="footer_lower">
                         <h5>COPYRIGHT ⓒ BY 나음Mall ALL RIGHTS RESERVED.</h5>
                    </div>
             </div>
        </footer>
        
        
        

        <!-------------------------------------footer end------------------------------------>
          


        <div id="jin_navwrawp">
            <div id="ohjinhee_ca">
                <ul class="jin_mainmenu">
                    <li>
                        <a href="#none" class="opop5">패션의류 · 잡화</a>
                        <div id="sub_nav" class="hi_jin1 jinhee_oh">
                                <ul class="sub_sub">
                                    <li><a href="none">여성패션</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">아우터</a></li>
                                                <li><a href="#none">상의/탑</a></li>
                                                <li><a href="#none">드레스/스커트</a></li>
                                                <li><a href="#none">하의/팬츠</a></li>
                                                <li><a href="#none">파자마</a></li>
                                                <li><a href="#none">스포츠의류</a></li>
                                            </ul>                                    
                                    </li>
                                    <li><a href="none">남성패션</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">아우터</a></li>
                                                <li><a href="#none">상의/탑</a></li>                                  
                                                <li><a href="#none">하의/팬츠</a></li>
                                                <li><a href="#none">수트/정장</a></li>
                                                <li><a href="#none">스포츠의류</a></li>
                                                <li><a href="#none">커플룩</a></li>
                                            </ul> 
                                    </li>
                                    <li><a href="none">잡화</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">가방</a></li>
                                                <li><a href="#none">지갑</a></li>                                  
                                                <li><a href="#none">주얼리/시계</a></li>
                                                <li><a href="#none">선글라스/안경테</a></li>
                                                <li><a href="#none">양말/속옷</a></li>
                                                <li><a href="#none">벨트/넥타이</a></li>
                                                <li><a href="#none">장갑/머플러</a></li>
                                                <li><a href="#none">신발</a></li>                                           
                                            </ul> 
                                    </li>
                                    <li><a href="none">유아동패션</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">아우터</a></li>
                                                <li><a href="#none">상하세트</a></li>                                  
                                                <li><a href="#none">티셔츠</a></li>
                                                <li><a href="#none">바지</a></li>
                                                <li><a href="#none">원피스</a></li>
                                                <li><a href="#none">셔츠/블라우스</a></li>
                                                <li><a href="#none">아동내의</a></li>
                                                <li><a href="#none">우비</a></li>                                                  
                                                <li><a href="#none">한복</a></li>
                                                <li><a href="#none">수영복</a></li>
                                                <li><a href="#none">발레복</a></li>
                                                <li><a href="#none">스키복</a></li> 
                                                <li><a href="#none">매장용품</a></li>       
                                                <li><a href="#none">잡화</a></li>
                                                <li><a href="#none">유아복(돌/백일)</a></li>
                                                <li><a href="#none">엄마/아빠</a></li>                            
                                            </ul> 
                                    </li>
                                </ul>                            
                        </div>                    
                    </li>

                    <li><a href="#none" class="opop5">디지털 · 가전</a>
                        <div id="sub_nav" class="jinhee_oh">
                            <ul class="sub_sub">
                                <li><a href="#none">디지털</a>
                                        <ul class="hi_4nav">
                                            <li><a href="#none">자동차기기</a></li>
                                            <li><a href="#none">태블릿PC</a></li>
                                            <li><a href="#none">워치/웨어러블</a></li>
                                            <li><a href="#none">휴대폰악세서리</a></li>
                                        </ul>
                                </li>
                                <li><a href="#none">가전</a>
                                        <ul class="hi_4nav">
                                            <li><a href="#none">생활가전</a></li>
                                            <li><a href="#none">주방가전</a></li>
                                            <li><a href="#none">계절가전</a></li>
                                            <li><a href="#none">이미용가전</a></li>
                                            <li><a href="#none">음향가전</a></li>
                                            <li><a href="#none">영상가전</a></li>
                                        </ul>
                                </li>
                            </ul>                        
                        </div>            
                    </li>

                    <li><a href="#none" class="opop5"> 생활 · 건강 · 식품 </a>
                        <div id="sub_nav" class="jinhee_oh">
                                <ul class="sub_sub">
                                    <li><a href="#none">생활</a>
                                        <ul class="hi_4nav">
                                            <li><a href="#none">생활용품</a></li>
                                            <li><a href="#none">욕실용품</a></li>
                                            <li><a href="#none">주방용품</a></li>
                                            <li><a href="#none">문구/사무용품</a></li>
                                            <li><a href="#none">세탁용품</a></li>
                                            <li><a href="#none">실버용품</a></li>
                                            <li><a href="#none">수납/정리용품</a></li>
                                            <li><a href="#none">청소용품</a></li>
                                            <li><a href="#none">파티용품</a></li>
                                            <li><a href="#none">수조용품</a></li>
                                            <li><a href="#none">공구</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#none">건강</a>
                                        <ul class="hi_4nav">
                                            <li><a href="#none">건강관리용품</a></li>
                                            <li><a href="#none">안마용품</a></li>
                                            <li><a href="#none">스포츠/레저용품</a></li>
                                            <li><a href="#none">건강측정용품</a></li>
                                            <li><a href="#none">물리치료/저주파</a></li>
                                            <li><a href="#none">냉온/찜질용품</a></li>
                                            <li><a href="#none">수납/정리용품</a></li>
                                            <li><a href="#none">구강위생용품</a></li>
                                            <li><a href="#none">발건강용품</a></li>
                                            <li><a href="#none">좌욕/좌훈용품</a></li>                               
                                        </ul>
                                    </li>

                                    <li><a href="#none">식품</a>
                                        <ul class="hi_4nav">
                                            <li><a href="#none">즉석식품</a></li>
                                            <li><a href="#none">건강식품</a></li>
                                            <li><a href="#none">수산</a></li>
                                            <li><a href="#none">다이어트</a></li>
                                            <li><a href="#none">가공식품</a></li>
                                            <li><a href="#none">농산물</a></li>
                                            <li><a href="#none">축산</a></li>
                                            <li><a href="#none">과자</a></li>
                                            <li><a href="#none">음료</a></li>
                                            <li><a href="#none">냉동/간편조리식품</a></li>
                                            <li><a href="#none">김치</a></li>
                                        </ul>                                    
                                    </li>
                                </ul>

                        </div>
                    </li>

                    <li><a href="#none" class="opop5">가구 · 인테리어</a>
                        <div id="sub_nav" class="jinhee_oh">
                                <ul class="sub_sub">
                                    <li><a href="#none">가구</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">안방가구</a></li>
                                                <li><a href="#none">거실가구</a></li>
                                                <li><a href="#none">서재/사무용가구</a></li>
                                                <li><a href="#none">수납가구</a></li>
                                                <li><a href="#none">주방가구</a></li>                                           
                                            </ul>                              
                                    </li>
                                    <li><a href="#none">인테리어</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">침구</a></li>
                                                <li><a href="#none">홈데코</a></li>
                                                <li><a href="#none">페브릭/잡화</a></li>                                            
                                            </ul>                              
                                    </li>
                                </ul>
                        </div>                                    
                    </li>

                    <li><a href="#none" class="opop5">출산 · 육아 · 유아</a>
                        <div id="sub_nav" class="jinhee_oh">
                                <ul class="sub_sub">
                                    <li><a href="#none">스킨바디용품</a></li>
                                    <li><a href="#none">유아</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">완구</a></li>
                                                <li><a href="#none">키즈키친</a></li>
                                                <li><a href="#none">키즈침구</a></li>       
                                                <li><a href="#none">키즈기타</a></li>                                        
                                            </ul>                                 
                                    </li>
                                </ul>
                        </div>                
                    </li>

                    <li><a href="#none" class="opop5">뷰티</a>
                        <div id="sub_nav" class="jinhee_oh">
                                <ul class="sub_sub">
                                    <li><a href="#none">화장품 · 미용</a>
                                            <ul class="hi_4nav">
                                                <li><a href="#none">기초케어</a></li>
                                                <li><a href="#none">색조메이크업</a></li>
                                                <li><a href="#none">스킨케어</a></li>
                                                <li><a href="#none">바디케어</a></li>
                                                <li><a href="#none">헤어케어</a></li>   
                                                <li><a href="#none">선케어</a></li>    
                                                <li><a href="#none">향수</a></li>       
                                                <li><a href="#none">립밤</a></li> 
                                                <li><a href="#none">남성화장품</a></li>                               
                                            </ul>                                 
                                    </li>
                                </ul>
                        </div>
                    </li>       

                    <li><a href="#none" class="opop5">브랜드관</a>
                        <div id="sub_nav" class="jinhee_oh">
                            <ul class="sub_sub">
                                <li><a href="#none">삼성전자</a>
                                        <ul class="hi_4nav">
                                            <li><a href="#none">생활가전</a></li>
                                            <li><a href="#none">주방가전</a></li>
                                            <li><a href="#none">IT제품</a></li>
                                            <li><a href="#none">음향기기</a></li>
                                            <li><a href="#none">B2B전용</a></li>                                                  
                                        </ul>                                 
                                </li>
                                <li><a href="#none">전남생협</a>
                                        <ul class="hi_4nav">
                                            <li><a href="#none">신선식품</a></li>
                                            <li><a href="#none">가공식품</a></li>
                                            <li><a href="#none">커피/음료</a></li>
                                            <li><a href="#none">꽃/이벤트용품</a></li>
                                            <li><a href="#none">생필품</a></li>    
                                            <li><a href="#none">명절세트</a></li>                                               
                                        </ul>                      
                                </li>
                            </ul>
                        </div>                    
                    </li>
                </ul>

                <div class="sub_menubox">
                        <img src="imges/nm92.png" alt="">
                </div>

            </div>                
        </div>
    </div>


        <script src="./slick-1.8.1/slick/slick.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(".jinhee_naum").slick(
                {
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
                });

                $(".moblie_lineband").slick(
                    {
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
                        
                    });


                // $("#product_jin").slick(
                // {
                //     sldie: 'div',
                //     lazyLoad: 'ondemand',
                //     infinite: true,
                //     slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
			    // 	   slidesToScroll : 4,
                //     speed : 2000,                
                //     autoplay : true,
                //     autoplaySpeed : 3500,
                //     pauseOnHover : true,
                //     // fade: true,
                // });


        </script>


    <script src="script/script.js"></script>

</body>	
</html>