<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP; 
        IMP.init("imp26780202"); 
      
        // 카카오페이 결제
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
        

        function requestPay() {
            IMP.request_pay({
                pg : 'kakaopay',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : '조말론',
                amount : 14,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456'
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                } else {
                    console.log(rsp);
                }
            });
        }
        
        
        
        
        // kg이니시스 결제
       /*  var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds; */
        

        function requestPay2() {
            IMP.request_pay({
                pg : 'html5_inicis',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : '구딸파리',
                amount : 15,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456'
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                } else {
                    console.log(rsp);
                }
            });
        }
        
        
        
        
    </script>
    <meta charset="UTF-8">
    <title>Sample Payment</title>
</head>
<body>
	<h2>주문 결제 페이지 입니다.</h2>
	
    <button onclick="requestPay()">카카오페이 결제하기</button> <!-- 결제하기 버튼 생성 -->
    <button onclick="requestPay2()">kg이니시스 결제하기</button> <!-- 결제하기 버튼 생성 -->
</body>
</html>  