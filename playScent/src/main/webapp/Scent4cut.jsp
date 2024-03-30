<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>향수4컷</title>
<link rel="stylesheet" href="css/scent4img.css" type="text/css">
<style>
.img-size {
    width: 117%;
    height: auto;
    position: absolute;
    left:-5%;
    top:50%;
    transform: translateY(-50%);
    
}

#uploadButton {
    font-size: 20px;
    padding: 10px 20px;
    border: none;
    background-color: rgb(30, 59, 74);
    color: white;
    cursor: pointer;
    margin-top: 20px;
    border-radius: 10px;
}


  /* 마우스 오버 시 버튼 스타일 변경 */
  #uploadButton:hover {
    background-color: rgb(217, 185, 18, 0.51);
    font-size: 22px;
  }
  
  .upbtn {
  	
	position: absolute;
    left: 50%;
    transform: translateX(-50%);
    top: 101%; /* 하단 여백 조절 */	
  }
  
  .date{
  	z-index: 45678;
  }

</style>
</head>
<body>

<div id="scent_wrap">
    <form  method="post" enctype="multipart/form-data">
        <div id="scentIMGbox">
            <h3 class="title">PLAY SCENT</h3>
            <ul class="sc_imgFrame">
                <li>
                  <div class="jinhee_scent">
                    <div id="box">
                        <label for="img1">IMG</label>
                    </div>
                    <input type="file" id="img1" onchange="previewImage(event, 'preview1')">
                    <img id="preview1" class="img-size">
                  </div>
                  <span class="ll">KEEP YOUR SCENT</span>
                </li>
                <li> 
                  <div class="jinhee_scent">
                    <h3 class="date">2024.4.2</h3>
                    <div id="box">
                        <label for="img2">IMG</label>
                    </div>
                    <img id="preview2" class="img-size">
                    <input type="file" id="img2" name="scentImg2" onchange="previewImage(event, 'preview2')"/>
                  </div>
                  <span class="ll">KEEP YOUR SCENT</span>
                </li>
                <li> 
                  <div class="jinhee_scent">
                    <h3 class="date">2024.4.2</h3>
                    <div id="box">
                        <label for="img3">IMG</label>
                    </div>
                    <img id="preview3" class="img-size">
                    <input type="file" id="img3" name="scentImg3" onchange="previewImage(event, 'preview3')"/>
                  </div>
                  <span class="ll">KEEP YOUR SCENT</span>
                </li>
                <li>
                  <div class="jinhee_scent">
                    <div id="box">
                        <label for="img4">IMG</label>
                    </div>
                    <img id="preview4" class="img-size">
                    <input type="file" id="img4" name="scentImg4" onchange="previewImage(event, 'preview4')" placeholder="IMG"/>
                  </div>
                  <span class="ll">KEEP YOUR SCENT</span>
                </li>
            </ul>
        </div>
        
        <div class="upbtn"><button id="uploadButton" type="submit">Upload</button></div>
    </form>
</div>

<script src="script/previewImage.js"></script>


</body>
</html>
    