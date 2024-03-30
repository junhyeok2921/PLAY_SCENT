<html lang="ko">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<head>

<title>설문조사</title>
<style>
a {
   font-weight: bold;
}

img {
   display: block;
   margin: auto;
}

.survey {
    display: inline;
    margin: auto;
    width: 15%;
}

.question {
   position: relative;
   top: 3.5px;
}

.container {
   width: 300px;
   border: 2px solid #000;
   /* 테두리 설정 */
   padding: 20px;
   margin: 20px auto;
   /* 페이지 중앙 정렬 */
   border-radius: 15px;
   /* 컨테이너 모서리 둥글게 */
}

.main-title {
   text-align: center;
}

.season-title {
   margin: 10px 0;
   /* 위아래 마진 */
   padding: 10px;
   border: 1px solid #444;
   /* 계절별 테두리 */
   text-align: center;
   /* 텍스트 중앙 정렬 */
   display: flex;
   justify-content: center;
   align-items: center;
   cursor: pointer;
   /* 커서 모양 변경 */
   border-radius: 5px;
   /* 질문 영역 모서리 둥글게 */
   background-color: rgb(228, 242, 220);
}

.season {
   margin: 10px 0;
   /* 위아래 마진 */
   padding: 10px;
   border: 1px solid #444;
   /* 계절별 테두리 */
   text-align: center;
   /* 텍스트 중앙 정렬 */
   display: flex;
   justify-content: center;
   align-items: center;
   cursor: pointer;
   /* 커서 모양 변경 */
   border-radius: 5px;
   /* 계절 선택 영역 모서리 둥글게 */
}

.season input[type="radio"] {
   display: none;
   /* 라디오 버튼 숨김 */
}

.season input[type="radio"]:checked+span {
   background-color: lightblue;
   /* 선택된 라벨의 배경색 변경 */
   color: white;
   /* 선택된 라벨의 텍스트 색상 변경 */
}

.season span {
   display: block;
   width: 100%;
}
</style>
</head>

<body>
   <div class="container">
      <h3 class="main-title">뉴향수추천시스템ver.3</h3>
      <div class="mt-7 overflow-hidden">
         <img
            src="https://png.pngtree.com/png-clipart/20230405/original/pngtree-perfume-line-icon-png-image_9028785.png"
            style="max-width: 70%; height: auto;">
      </div>
<br>
      <div class="question">
         <a><img src="https://img.parfumo.de/notes/ec/ec_9521cd014d9ab5dd5f19e44f8f28b74a27b670f9_40.jpg" class = "survey">플로럴(꽃향기)</a>
         <input type='checkbox' name='perfume'
            value='Jasmine,Rose,Lilac,flower' />  
      </div>
      <br>
      <div class="question">
         <a><img src="https://img.parfumo.de/notes/0e/0e_b7c51c373eec23f53f1778ff1f03a8d97a39c9d7_40.jpg" class = "survey">프루티(과일)</a>
         <input type='checkbox' name='perfume'
            value='Fruity,berry,Peach,Apple' />

      </div>
      <br>
      <div class="question">
         <a><img src="https://img.parfumo.de/notes/32/32_b4a04bb2576ba9290de8a32967091b458bae858f_40.jpg" class = "survey">그린(잎사귀 , 풀향)</a>
          <input type='checkbox' name='perfume'
            value='Green,leaf,tea' /> </div> 
            <br>
         <div class="question">
            <a><img src="https://img.parfumo.de/notes/9d/9d_f2a15111e9fb8a35e24c42695743676dcb538ab1_40.jpg" class = "survey">시프레(지중해)</a>
             <input type='checkbox' name='perfume'
               value='Aqua,Chypre,Aquatic,Fresh' /> 
               <br>
         </div>
      <br>
         <div class="question">
            <a><img src="https://img.parfumo.de/notes/b4/b4_c6854150b95c7cbab32290d3dbef20102980aec8_40.jpg" class = "survey">시트러스(감귤류)</a>
             <input type='checkbox' name='perfume'
               value='Citrus,orange,mandarin,lime,Grapefruit,Tangerine' /> <br>
         </div>
         <br>
         <div class="question">
            <a><img src="https://img.parfumo.de/notes/1b/1b_b0e2efde984535e950e7404fefc3d180bf3cc9c1_40.jpg" class = "survey">타바코&레더(담뱃잎,가죽향)</a>
            <input type='checkbox' name='perfume'
               value='Tobacco,Leathery,smoky' /> <br>
         </div>
         <br>
         <div class="question">
            <a><img src="https://img.parfumo.de/notes/d6/d6_499f383074c790f1cf0bad01fb3ded04e4628b1f_40.jpg" class = "survey">구르망(달달한 향)</a>
             <input type='checkbox' name='perfume'
               value='Vanila,cinnamon' /> <br>
         </div>
         <br>
         <div class="question">
            <a><img src="https://img.parfumo.de/notes/00/00_d33d0e20a70f34469d27c00a9b1727cd81790f0d_40.jpg" class = "survey">우디(나무향)</a>
            <input type='checkbox' name='perfume'
               value='Woody,Cedarwood,Amberwood,Patchouli,' /> <br>
         </div>
         <br>
         <div class="question">
            <a><img src="https://img.parfumo.de/notes/05/05_cc84bdbe94b3f2cc11418cb5c96856395faee3ef_40.jpg" class = "survey">스파이시(계피,생강향)</a>
             <input type='checkbox' name='perfume'
               value='Spicy,ginger,Cardamom,cinnamon,' /> <br>
         </div>
         <br>
         <div class="question">
            <a><img src="https://img.parfumo.de/notes/d9/d9_615fd2e0d14196b8001eeee8868b7707c233a3e9_40.jpg" class = "survey">머스크(사향노루향)</a>
            <input type='checkbox' name='perfume' value='Musk' /> <br>
         </div>
         <br> <br>
         <div id='result'></div>

         <div style="text-align: center; margin-top: 20px;">
            <button onclick='getCheckboxValue()'>제출</button>

         </div>
         </div>
</body>

</html>



<script>
   function getCheckboxValue() {
      // 선택된 목록 가져오기
      const query = 'input[name="perfume"]:checked';
      const selectedEls =
         document.querySelectorAll(query);

      // 선택된 목록에서 value 찾기
      let result = '';
      selectedEls.forEach((el) => {
         result += el.value + ' ';
      });

      // 출력
      document.getElementById('result').innerText
         = result;
      
      <!--flask 서버로 데이터 전송-->
      
      window.location.replace('http://127.0.0.1:5000/?perfume='+result);
      
   }

</script>



</html>