<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    
    <link rel="stylesheet" href="login.css">

</head>
<body>

    <div class="t_box">
        <h1 class="title" >회원 등록 페이지</h1>

    </div>
    
    <div class="t_box" id="container">

        <form action="/DRAW/dynamic/registrationPro.jsp" method="post">


            <div class="post_element">
                <label for="id">아이디</label>
                <input type="text" name="id">
                <button>아이디 확인</button>

            </div>
            <div class="post_element">
                <label for="password">비밀번호</label>
                <input type="text" name="password">
            </div>

            <div class="post_element">
                <label for="password">비밀번호 확인</label>
                <input type="text" name="config">
            </div>
            

            <div class="post_element" id="submit">
                <input type="submit">
            </div>

            

        </form>

    </div>


    
</body>
</html>