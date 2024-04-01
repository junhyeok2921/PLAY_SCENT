<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>향수4컷</title>
<link rel="stylesheet" href="css/scent4img.css" type="text/css">
<style>

element.style {
    --scale: 7;
}
#scent_wrap{
	overflow: hidden !important;
}
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
<svg class="root">
    <defs>
      <filter id="f" width="200" height="200" x="-100" y="-100">
        <feGaussianBlur in="SourceAlpha" stdDeviation="3" result="blur"></feGaussianBlur>
        <feFlood flood-color="rgb(60,10,60)" result="color" />
        <feComposite in="color" in2="blur" operator="in" result="shadow" />
        <feOffset in="shadow" dx="3" dy="3" result="offset"></feOffset>
        <feMerge>
          <feMergeNode in="offset" />
          <feMergeNode in="SourceGraphic" />
        </feMerge>
      </filter>
      <symbol id="petal2" viewBox="0 -100 200 200">
        <!--<polygon points="0,0 120,80 200,0 120,-80 0,0" />-->
        <path transform="translate(0,-100)"
          d="M25.91,-15.12 Q0,0 25.91,15.12L94.09,54.889 Q120,70 142.58,50.24L177.42,19.76 Q200,0 177.42,-19.756L142.58,-50.24 Q120,-70 94.087,-54.88Z">
        </path>
      </symbol>

      <symbol id="petal3" viewBox="0 -100 200 200">
        <!--<polygon points="0,0 120,50 200,0 120,-50 0,0" />-->
        <path transform="translate(0,-100)"
          d="M27.69,-11.54  Q0,0 27.69,11.54  L92.3,38.46  Q120,50 145.44,34.1 L174.56,15.9  Q200,0 174.56,-15.9 L145.44,-34.1 Q120,-50 92.3,-38.46Z">
        </path>
      </symbol>

      <symbol id="petal4" viewBox="0 -100 200 200">
        <!--<polygon points="0,0 120,50 200,0 120,-50 0,0" />-->
        <path transform="translate(0,-100)"
          d="M28.09,-10.53 Q0,0 28.09,10.53L91.91,34.47 Q120,45 146.147,30.29L173.85,14.7 Q200,0 173.85,-14.7L146.15,-30.29 Q120,-45 91.91,-34.467Z">
        </path>
      </symbol>
      <symbol id="petal5" viewBox="0 -100 200 200">
        <!--<polygon points="0,0 140,40 200,0 140,-40 0,0" />-->
        <path transform="translate(0,-100)"
          d="M28.85,-8.24 Q0,0 28.85,8.24L111.15,31.76 Q140,40 164.96,23.36L175.04,16.64 Q200,0 175.038,-16.64L164.96,-23.36 Q140,-40 111.15,-31.76Z">
        </path>
      </symbol>
    </defs>
  </svg>

  <svg viewBox="0 0 10000 10000" id="svg" preserveAspectRatio="xMidYMid slice">

  </svg>

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
    