<%@page import="com.playscent.model.PerfumeDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.playscent.model.PerfumeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">




<title>Insert title here</title>
</head>
<body>
<%-- <%
							
						List<PerfumeDTO> myperfumes = new PerfumeDAO().showperfume(Myperfume);
							
							
							%> --%>


					
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
  <%--  <%for(PerfumeDTO myp: myperfumes ){ %>
							<tr>
							
							<td><%=myp.getPF_NAME()%></td>
								<td><%=myp.getPF_BRAND()%></td>
								<td><%=myp.getPF_Accords() %></td>
								<td><%=myp.getPF_Image() %></td>	
													
							</tr>
							<%} %>
							 --%>
						
    </tbody>
</table>
		





</body>



<script type="text/javascript">

function showPopup() { window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50"); }


</script>



</html>