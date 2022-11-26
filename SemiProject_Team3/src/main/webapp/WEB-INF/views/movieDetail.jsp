<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>MOVIE DETAIL</title>
  
     <!--기본 초기화-->
     <style type="text/css">
        *{
            margin: 100; padding: 50;
            background-color: #121319;
            color: #f5f7ff;
            font-family: sans-serif;
        }
        a{ text-decoration: none;  
            color: lightgray;
            cursor: pointer;
        }
        img{ border: 0; }
        li{ display: inline-block; }
    </style>
     <!--헤더-->
     <style type="text/css">
        #main-header{
            height: 100px;
            position: relative;
            margin-top: 100px;
        }
        .header-title{
            position: absolute;
            width: 400px; height: 100px;
            left: 50%; 
            margin-left: -150px;
        }
        .header-menu{
            float: right; 
            margin-top: 10px;
            margin-right: 20px;
        }
        ul{
            float: left; width: 120px; text-align: center; margin-right: 10px;
        }
    </style>
    <style type="text/css">
        .poster{
            width: 20%;
            height : 90%;
            float:left;
        }
        .video{
            width:50%;
            height: 90%;
            float:left;
        }
        .detail{
            width: 30%;
            height: 90%;
            float:right;
        }
    </style>

</head>

<!-- moiveDetail -->

  <body>
    <!--헤더-->
    <header id="main-header">
        <div class="header-title">
            <a><img width="400" src="src/logo.png"></a></p>
        </div>
        <nav class="header-menu">
            <ul>
                <li><a href="#">공지사항</a></li>
            </ul>
            <ul>
                <li><a href="#">마이페이지</a></li>
            </ul>
        </nav>
    </header>
<br>
<hr color="#6BCDA5" size="5px">
<section id="main-section">
    <div class="poster">
        <a href="#"><img width="340" src=${dto.movieimage}></a><br>
        <a href="#"><p calss="movie-title" style="font-size: 25px;">${dto.movietitle}</p></a>
    </div>

    <div class="detail">
        <p>제목 : ${dto.movietitle}</p>
        <p>감독 : ${dto.moviedirector}</p>
        <p>장르 : ${dto.moviegenre}</p>
        <p>개봉일 : ${dto.moviedate}</p>
    </div>
    <br>
    <br>
    <div>
    <button style="color:white; background-color: #6BCDA5; width:100px; height:30px;">한줄평</button>
    </div>

</section>

    

  </body>
</html>