<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.playscent.model.PerfumeDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.playscent.model.PerfumeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main_style.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Perfume List</title>
<style>
.pc_header {
	border-bottom: 1px solid rgba(151, 151, 151, 0.3) !important;
}

img {

    width: 115px;

}
body {
  background: #f5f5f5
}

table {
    margin: auto;
    border: 1px #a39485 solid;
    font-size: .9em;
    box-shadow: 0 2px 5px rgba(0,0,0,.25);
    width: 1220px;
    border-collapse: collapse;
    border-radius: 5px;
    overflow: hidden;
    margin-top: 30px;
}

th {
  text-align: left;
}
  
thead {
  font-weight: bold;
  color: #fff;
  background: #73685d;
}
  
 td, th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
}

a {
  color: #73685d;
}


th, td {
  text-align: center;
}




  
 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
  }
  
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
  
  thead {
    float: left;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
  
  tr {
    display: inline-block;
    vertical-align: top;
  }
  
  th {
    border-bottom: 1px solid #a39485;
  }
  
  td {
    border-bottom: 1px solid #e5e5e5;
  }
  
  
  
  }
</style>
</head>
<body>
<%                  
ArrayList<PerfumeDTO> perfumes = new PerfumeDAO().SweetsDAO();                  
                     %>
                     <%DecimalFormat df = new DecimalFormat("###,###"); %>
<div id="jinheewrap">
		<%@include file="Header2.jsp"%>
		<!-- 우리 사이트 HEADER 파일 입니다. -->
	
<table class="review-table">
    <thead>
    <tr>
        <th>향수</th>
        <th>브랜드</th>
        <th>가격</th>
        <th>향수향기</th>
        <th colspan='2'>이미지</th>
    </tr>
    </thead>
    <tbody>
   <%for(PerfumeDTO per: perfumes){
      String money = df.format(per.getPF_PRICE());%>
                     <tr>
                     
                     <td><%=per.getPF_NAME()%></td>
                        <td><%=per.getPF_BRAND()%></td>
                        <td><%=money%></td>
                        <td><%=per.getPF_Accords() %></td>   
                        <td onClick="location.href='PerfumeDetail.jsp?pfIdx=<%= per.getPF_IDX()%>'" style="cursor:pointer;"><img src=<%=per.getPF_Image()%>></td>               
                     </tr>
                     <%} %>               
    </tbody>
</table>
<!-- footer 페이지 입니다~!.  -->
		<%@include file="Footer.jsp"%>

</div>




</body>
</html>