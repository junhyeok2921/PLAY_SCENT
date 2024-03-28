<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/scent4img.css" type="text/css">
<title>향수4컷</title>
</head>
<body>

 <div id="scent_wrap">
        <form method="post" enctype="multipart/form-data">
        <div id="scentIMGbox">
            <h3 class="title">PLAY SCENT</h3>
            <ul class="sc_imgFrame">
                <li>
                    <div id="box">
                      <label for="img1">IMG</label>
                    </div>
                    <img src="" />
                    <input type="file" id="img1" name="scentImg1"/>
                    <span class="ll">KEEP YOUER SCENT</span>
                </li>
                <li> 
                    <h3 class="date">2024.4.2</h3>
                    <div id="box">
                     <label for="img2">IMG</label>
                   </div>
                   <img src="" />
                   <input type="file" id="img2" name="scentImg1"/>
                   <span class="ll">KEEP YOUER SCENT</span>
                </li>
                 <li> 
                    <h3 class="date">2024.4.2</h3>
                    <div id="box">
                     <label for="img3">IMG</label>
                   </div>
                   <img src="" />
                   <input type="file" id="img3" name="scentImg1"/>
                   <span class="ll">KEEP YOUER SCENT</span>
                </li>
                <li>
                    <div id="box">
                     <label for="img4">IMG</label>
                   </div>
                   <img src="" />
                   <input type="file" id="img4" name="scentImg1" placeholder="IMG"/>
                   <span class="ll">KEEP YOUER SCENT</span>
                </li>
            </ul>
        </div>
     </form>
     <button>버튼</button>
    </div>



</body>
</html>