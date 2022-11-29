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
        width: 80px;
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

.likebt{
    margin-left: 1040px;
    margin-top: 20px;
}
.writebt{
	margin-left: 1100px;
}


</style>
<script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script>

</script>
   <a><img width="400" src="/image/logo.png"></a>
    <br><br><br><br><hr><br>
    <div class="hjreview">
        
            <br><br><br><br>
            <div class="writebt">
        	<input type="button" value="한 줄 리뷰 작성하기" onclick="location.href='/mymovie/reviewinsert'">
        </div><br><br>
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
        <c:forEach items="${reviewlist }" var="dto">
        <div class="board">
            <div class="bd0">${dto.memberid }</div>
            <div class="bd1">${dto.reviewcontent }</div>
            <div class="bd2">${dto.reviewstar }</div>
            <div class="bd3">${dto.reviewdate }</div>
            <div class="bd4">${dto.likecount }</div>
            <input type="button" value="추 천" class="likebt" onclick="clicklike()">
            <hr>
        </div>
        </c:forEach>
        
       
    </div>
        <br><br>

        <br><br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br>

        
        </div>
        


   

    

</html>
</body>
</html>