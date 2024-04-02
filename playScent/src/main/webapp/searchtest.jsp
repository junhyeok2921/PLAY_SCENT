<%@page import="com.playscent.model.ParseDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.playscent.model.PerfumeDAO"%>
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

    <h1>검색 결과</h1>
    <%
    PerfumeDTO pdto = new PerfumeDTO();
    PerfumeDAO pdao = new PerfumeDAO();
    List<PerfumeDTO> searchResults = (List<PerfumeDTO>)request.getAttribute("searchResults");           

            for (PerfumeDTO perfumes : searchResults) {
    %>
                <p><%= perfumes.getPF_NAME() %></p>
    <%
            }
        
    %>
            
</body>
</html>