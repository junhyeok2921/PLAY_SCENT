<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style>
	#jin_medium .jin_search .naum_button {
		border: none;
	}
	
</style>
</head>
<body>

	 <!-- 우리 사이트 HEADER 입니다. -->
  	
	<%
		// 로그인한 유저인지 확인하기 위해.
		String user_id2 = (String) session.getAttribute("user_id");  
	    System.out.println("userid 있나요? "+user_id2);
	    String check_user = user_id2 != null ? "Mypage.jsp" : "Main.jsp";
	    System.out.println(check_user+ "지금");
	    String check_userPage = user_id2 != null ? "마이페이지" : "고객 전용";
	%>
  	
  
	   <header class="pc_header">
                <ul class="jin_up">
                    <!-- <li><a href="#none">
                        <img src="imges/n9.png" alt=""> <span class="jine1">지갑</span></a></li> -->
                    <li><a href="Login.jsp">LOGIN</a></li>
                    <li><a href="Login.jsp">JOIN</a></li>
                    <li><a href="<%= check_user %>"><span class="jine2"><%= check_userPage %></span></a></li>
                    <!-- <li><a href="#none"><span class="jine2">고객센터</span></a></li> -->
                    <li><a href="Cart.jsp"><img src="imges/nm4.png" alt=""><span class="jine1">장바구니</span></a></li>
                </ul>

                <div id="jin_medium">
                        <a href="Main.jsp" class="naunlogo">
                            <img src="imges/playScent_logo.png" alt="logo">
                        </a>

                        <div class="jin_search">
                            <form action="Search" method="get" class="search cf">
                                <input type="text" id="naum_search" name="keyword" placeholder="검색어를 입력하세요.">
                                <button class="naum_button" type="submit">
                                    <img src="imges/nm55.png" alt="">
                                </button>
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

</body>
</html>