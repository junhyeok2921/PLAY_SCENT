<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

	<h1>추천 향수 번호</h1>
	<%
	
	/* 플라스크 데이터 받아주기 */
	
		String data = request.getParameter("perfume");
		String [] data2 = data.split(",",0);
	/* 	// , 기준으로 잘라봄 
		 for (String s : data2) {
			 int i = 0;
			 i++;
			 data2[i]=s;
			 System.out.println(s);
		 ;	 
		 } */
		 
		out.print(data);
		String data3= data.toString();
		out.print("데이타3탄" + data3);
		data3 = data3.replace("[","");
		data3 = data3.replace("]","");
		out.print("데이타3탄 슬라이스" + data3);
		
        
		
		
	%>

</body>
</html>
