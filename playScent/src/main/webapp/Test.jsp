<%@page import="java.util.List"%>
<%@page import="com.playscent.model.PerfumeDAO"%>
<%@page import="com.playscent.model.PerfumeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
img {
  width: 300px;
  height: 150px;
  object-fit: cover;
}
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




  
 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
  }
  
  th {
    text-align: right;
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
request.setCharacterEncoding("utf-8");
PerfumeDAO dao = new PerfumeDAO();
ArrayList<PerfumeDTO> list  = (ArrayList)request.getAttribute("myperfume");
System.out.println("LIST "+ list);

%>



<table class="review-table">
    <thead>
    <tr>
        <th>향수향수</th>
        <th>향수브랜드</th>
        <th>향수가격</th>
        <th>향수향기</th>
        <th colspan='2'>이미지</th>

    </tr>
    </thead>
    <tbody>
   <%for(PerfumeDTO per: list){ %>

							<tr>
							<td><%=per.getPF_NAME()%></td>
								<td><%=per.getPF_BRAND()%></td>
								<td><%=per.getPF_PRICE() %></td>
								<td><%=per.getPF_Accords() %></td>	
								
								<td onClick="location.href='PerfumeDetail.jsp?pfIdx=<%= per.getPF_IDX()%>'" style="cursor:pointer;"><img src=<%=per.getPF_Image()%>></td>
							</tr>
								
							<%} %>
						
						
    </tbody>
</table>





</body>


</html>