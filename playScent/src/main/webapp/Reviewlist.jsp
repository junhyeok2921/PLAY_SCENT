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
<link rel="stylesheet" href="css/Review_style.css" type="text/css">
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
						
						
								
						
						<table class="review-table">
    <thead>
    <tr>
        <th>게시글 번호</th>
        <th>평점(1/10)</th>
        <th>후기</th>
        <th>등록일자</th>
        <th> </th>

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
						
						
						
						
<!-- 구분선                             -->			
						
						
<div id="review_modal">
    <button class="modal-Btn">글쓰기</button>
    <dialog class="modal">
        
	<h2>향수리뷰리뷰리뷰</h2>
	<form action= "ReviewService.do" method= "POST">
	<div class ="star_rating">
	 <fieldset class="rate">
                                <input type="radio" id="rating10" name="rating" value="10"><label for="rating10" title="5점"></label>
                                <input type="radio" id="rating9" name="rating" value="9"><label class="half" for="rating9" title="4.5점"></label>
                                <input type="radio" id="rating8" name="rating" value="8"><label for="rating8" title="4점"></label>
                                <input type="radio" id="rating7" name="rating" value="7"><label class="half" for="rating7" title="3.5점"></label>
                                <input type="radio" id="rating6" name="rating" value="6"><label for="rating6" title="3점"></label>
                                <input type="radio" id="rating5" name="rating" value="5"><label class="half" for="rating5" title="2.5점"></label>
                                <input type="radio" id="rating4" name="rating" value="4"><label for="rating4" title="2점"></label>
                                <input type="radio" id="rating3" name="rating" value="3"><label class="half" for="rating3" title="1.5점"></label>
                                <input type="radio" id="rating2" name="rating" value="2"><label for="rating2" title="1점"></label>
                                <input type="radio" id="rating1" name="rating" value="1"><label class="half" for="rating1" title="0.5점"></label>
								
                            </fieldset><br>
                            

</div>

<input type = "text" name = "contents" class="star_box" placeholder = "리뷰내용을 입력해주세요"><br>
<input type = "hidden" name = "MEM_ID" VALUE = "Ef-8R3fBQ9V7oNLNfOv7gHjUqXb9k7pn6QkITa77XvE">
<input type="submit" class="btn02" value="리뷰 등록">


</form>
        <form method="dialog">
            <button>Close</button>
        </form>
    </dialog>
</div>
			 <!----------------------------- 모달창 끝----------------------------  -->

</body>


<script>

const modalBtn = document.querySelector(".modal-Btn");
const modal = document.querySelector(".modal");

modalBtn.addEventListener("click", () => {
    modal.showModal()
})

</script>





</html>