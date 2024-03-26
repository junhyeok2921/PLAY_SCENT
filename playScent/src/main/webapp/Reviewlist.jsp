<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.playscent.model.ReviewDAO"%>
<%@page import="com.playscent.model.ReveiwDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

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

</head>
<body>

					
							<%
							
						List<ReveiwDTO> reviews = new ReviewDAO().allReviews();
							
							
							%>
						<%-- 	
							   <tr>
      <td scope="col">게시글 번호</td>
      <td scope="col">평점(1/10)</td>
      <td scope="col">리뷰내용</td>
      <td scope="col">등록일자</td>
    </tr>
							
							
							<%for(ReveiwDTO rev:reviews){ %>
							<tr>
							
							<td><%=rev.getREVIEW_IDX()%></td>
								<td><%=rev.getREVIEW_STAR()%></td>
								<td><%=rev.getREVIEW_CONTENT() %></td>
								<td><%=rev.getREVIEWED_AT() %></td>	
								<td><a href = "ReviewDelete.do?MEM_ID=<%=rev.getMEM_ID()%>">삭제</a></td>					
							</tr>
							<%} %>
							
						</table>
						
						 --%>
						
						
						<!--구분--------------------------------------------------------------  -->
						
						
						
						<table class="review-table">
    <thead>
    <tr>
        <th>게시글 번호</th>
        <th>평점(1/10)</th>
        <th>후기</th>
        <th colspan='2'>등록일자</th>

    </tr>
    </thead>
    <tbody>
   <%for(ReveiwDTO rev:reviews){ %>
							<tr>
							
							<td><%=rev.getREVIEW_IDX()%></td>
								<td><%=rev.getREVIEW_STAR()%></td>
								<td><%=rev.getREVIEW_CONTENT() %></td>
								<td><%=rev.getREVIEWED_AT() %></td>	
								<td><a href = "ReviewDelete.do?MEM_ID=<%=rev.getMEM_ID()%>">삭제</a></td>					
							</tr>
							<%} %>
							
						
    </tbody>
</table>
						
						
						
						
						
						
						
						



</body>






</html>