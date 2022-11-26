<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body{
        background-color: #121319;
    }
    *{
        box-sizing: border-box;
    }
    .wrapper{
        width: 1100px;
        margin: 0 auto;
        text-align: center;
    }
    .listhead > div{
        display: inline-block;
    }
    .hjlist .userid{
        width: 7%
    }
    .hjlist .hj1{
        width: 52%;
    }
    .hjlist .hj2{
        width: 15%;
    }
    .hjlist .hj3{
        width: 11%;
    }
    .hjlist .hj4{
        width: 11%;
    }
    .hjhead{
        color: #3cd1a3;
        margin-left: 380px;
    }
    .listhead{
        color: #3cd1a3
    }
    .board > div{
        display: inline-block;
    }
    .board{
        color: lightgray;
    }
    .board .bd0{
        width: 5%
    }
    .board .bd1{
        width: 40.8%
    }
    .board .bd2{
        width: 17%
    }
    .board .bd3{
        width: 10%
    }
    .board .bd4{
        width: 10%
    }
    .board.likebt{
        width: 5%
    }
    .bd{
        margin-left: 30px;
    }
    .bd1{
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        margin-left: 120px;
    }
    .bd2{
        color: rgb(186, 186, 0)
    }
    img{
        position: absolute;
            width: 400px; height: 100px;
            left: 50%; 
            margin-left: -150px;
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
.likebt{
    margin-left: 1040px;
    margin-top: 20px;
}


</style>


    <img src="img/KakaoTalk_20221125_113943655.png" width="400px">
    <br><br><br><br><br><hr><br><br><br><br><br><br>
    <div class="hjreview">
        <div class="hjhead"><h2>리뷰 및 평점 등록</h2></div>
        <div class="reviewWrite">
            <form action="/mymovie/reviewlist" method="post">
            <div>
                <textarea rows="5" cols="70"  placeholder="리뷰를 작성해주세요."></textarea>
                
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
            <input id="smbt" type="submit" value="한 줄 리뷰 작성">
        </form>
            <br><br><br><br>
        </div>
        <div class="wrapper">
        <div class="hjlist">
            <div class="listhead">
            <div class="userid"><b>아이디</b></div>
            <div class="hj1"><b>한줄평</b></div>
            <div class="hj2"><b>별점</b></div>
            <div class="hj3"><b>작성 날짜</b></div>
            <div class="hj4"><b>좋아요 수</b></div>
        </div>
        <br><hr><br>
        
        <div class="board">
            <div class="bd0">${reviewid }</div>
            <div class="bd1">${reviewcontent }</div>
            <div class="bd2">${reviewstar }</div>
            <div class="bd3">${reviewdate }</div>
            <div class="bd4">${likecount }</div>
            <input type="button" value="추 천" class="likebt">
            <hr>
        </div>
        
        
       
    </div>
        <br><br>

        <br><br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br>

        
        </div>
        


   

    

</html>
</body>
</html>