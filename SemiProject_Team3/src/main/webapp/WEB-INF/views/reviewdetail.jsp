<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        </head>
        <style>
            body{
        background-color: #121319;
    }
                textarea{
                margin-left: 370px;
                font-size: 20px;
            }
            #myform fieldset{
            display: inline-block; 
            border: 0; 
        }
        #myform input[type=radio]{
            display: none; 
        }
        #myform label{
            font-size: 3em;
            color: transparent;
            text-shadow: 0 0 0 #f0f0f0; 
        }
        #myform label:hover{
            text-shadow: 0 0 0 rgb(186, 186, 0); 
        }
        #myform label:hover ~ label{
            text-shadow: 0 0 0 rgb(186, 186, 0);; 
        }
        #myform fieldset{
            display: inline-block; 
            direction: rtl; 
            border: 0; 
        }
        #myform input[type=radio]:checked ~ label{
            text-shadow: 0 0 0 rgb(186, 186, 0);
        }
        #myform{
            margin-left: 560px;
        }
        #smbt{
            margin-left: 950px;
        }
        .hjhead{
        color: #3cd1a3;
        margin-left: 380px;
    }
    .reviewname{
        color:#3cd1a3
    }
    .mover{
        margin-left: 370px;
    }
    img{
        position: absolute;
            width: 400px; height: 100px;
            left: 50%; 
            margin-left: -150px;
    }
        </style>
        <body>
        <a><img width="400" src="/image/logo.png"></a>
            <br><br><br><br><hr><br><br>
            <div class="hjhead"><h2>리뷰 및 평점 등록</h2></div><br>
                <div class="reviewWrite">
                    <form action="/mymovie/insertform" method="post">
                    <input type="hidden" value="${reviewno }">
                    <div class="reviewname">
                        <div class="mover">
                        <tr>
                            <div>아이디: </div>
                            <div><input type="text" name="memberid"></div>
                        </tr>
                    </div>
                    <br><br>
                </div>
                    <div>
                        <textarea rows="5" cols="70"  placeholder="리뷰를 작성해주세요." name="reviewcontent"></textarea>
                        <input id="smbt" type="submit" value="한 줄 리뷰 작성">
                </form>
                    </div>
                    <div name="myform" id="myform">
                        <fieldset>
                            <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
                            <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
                            <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
                            <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
                            <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
                        </fieldset>
                    </div>
                    <br><br>
                    
        </body>
</html>