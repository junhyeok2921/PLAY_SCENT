<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>가로줄 2개와 세로줄 2개 그리기</title>
    <style>
        html,
        body {
            height: 100%;
            /* HTML과 BODY의 높이를 100%로 설정 */
            margin: 0;
            /* 기본 마진 제거 */
        }

        .container {
            position: relative;
            width: 100%;
            height: 100%;
            background-color: rgb(235, 239, 232, 0.9);
            /* 배경색 */
        }

        .container::before,
        .container::after,
        .vertical-line {
            content: "hi";
            position: absolute;
            background-color: rgb(5, 81, 31, 0.2);
        }

        .container::before {
            /* 첫 번째 가로줄 */
            top: 150px;
            left: 0;
            width: 100%;
            height: 30px;
        }

        .container::after {
            /* 두 번째 가로줄 */
            bottom: 150px;
            left: 0;
            width: 100%;
            height: 30px;
        }

        .vertical-line {

            height: 100%;
            background-color: rgb(5, 81, 31, 0.2);

            margin-left: 200px;
            width: 30px;
        }

        .vertical-line:first-child {
            /* 첫 번째 세로줄 */
            left: 50px;
            width: 40px;
            /* 세로줄의 너비를 조정 */
        }


        .center-content {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin-left: 50px;

        }

        .center-content img {
            border-radius: 10px;
        }

        .image-description {
            margin-left: 50px;
        }

        h2 {
            color: rgb(6, 49, 21);
        }

        p {
            font-size: 20px;
            color: rgb(65, 61, 36);
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="vertical-line"></div>
        <div class="vertical-line"></div>
        <div class="center-content">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR16yQv-9-oNuHQbZ-_MUlN7Ru6h6iCkfFrg&usqp=CAU"
                alt="" width="300"> <!-- 이미지 URL과 크기를 조정하세요 -->
            <div class="image-description">
                <h2>잉글리쉬 페어 앤 프리지아 코롱</h2>
                <p>탑 노트: <b>Mandarin Orange blossom</b></p>
                <p>미들 노트: <b>Mimosa Ylang-Ylang</b></p>
                <p>베이스 노트: <b>Bergamot</b></p>
            </div>
        </div>
    </div>

</body>

</html>