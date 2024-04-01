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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Perfume List</title>
<style>
img {

    width: 150px;

}}
body {
  padding:1.5em;
  background: #f5f5f5
}

table {
  border: 1px #a39485 solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 80%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
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

</style>
</head>
<body>
<%						


ArrayList<PerfumeDTO> perfumes = new PerfumeDAO().manDAO();
DecimalFormat df = new DecimalFormat("###,###");											
							%>
<table class="review-table">
    <thead>
    <tr>
        <th>향수</th>
        <th>브랜드</th>
        <th>가격</th>
        <th>향기</th>
        <th colspan='2'>이미지</th>
    </tr>
    </thead>
    <tbody>
   <%for(PerfumeDTO per: perfumes){
	   String money = df.format(per.getPF_PRICE()); %>
							<tr>
							
							<td><%=per.getPF_NAME()%></td>
								<td><%=per.getPF_BRAND()%></td>
								<td><%=money %></td>
								<td><%=per.getPF_Accords() %></td>	
								<td onClick="location.href='PerfumeDetail.jsp?pfIdx=<%= per.getPF_IDX()%>'" style="cursor:pointer;"><img src=<%=per.getPF_Image()%>></td>					
							</tr>
							<%} %>					
    </tbody>
</table>

</body>
</html>