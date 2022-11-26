<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
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
            float: left; width: 80px; text-align: center; margin-right: 10px;
        }
    </style>
    <!--메인-->
    <style type="text/css">
        #main-section{
            width: auto;
            margin-top: 160px;
            margin-left: 50px;
            margin-right: 50px;
        }
    </style>
    <!--movie holder-->
    <style type="text/css">
        .movie-container{
            margin-top: 20px;
            font-size: 20px;
            text-align: center;
            vertical-align:top;
            font-weight: bold;
            display: flex;
            flex-wrap: wrap;
        }
        .movie-holder{
            width: 250px; height: 350px;
            padding-left: 5px;
            padding-right: 5px; 
            padding-top: 10px;
            margin-top: 30px;
        }
        .movie-title{
            width: 230px;
            margin-left: 10px;
            margin-top: 8px;
        }
    </style>
</head>
<body>
<!--헤더-->
    <header id="main-header">
        <div class="header-title">
            <a><img width="400" src="../../../../image/logo.png"></a>
        </div>
        <nav class="header-menu">
            <ul>
                <li><a href="/mymovie/list">공지사항</a></li>
            </ul>
            <ul>
                <li><a href="#">마이페이지</a></li>
            </ul>
        </nav>
    </header>
    <!--영화 리스트 영역-->
    
    <!-- 영화 포스터 출력 및 링크(movieDetail로 이동) 완료 (채) 22.11.25.23:00-->
    <section id="main-section">
        <div class="movie-container">
            <div class="movie-holder">
                <a href="/mymovie/movieDetail?movieno=1"><img width="210" src="src/image/1917.jpg"></a>
                <p class="movie-title"> <a href="/mymovie/movieDetail?movieno=1">1917</a></p>
            </div>
            <div class="movie-holder">
            <a href="/mymovie/movieDetail?movieno=2"><img width="210" src="src/image/괴물.jpg"></a>
                <p class="movie-title"><a href="/mymovie/movieDetail?movieno=2">괴물</a></p>
            </div>
            <div class="movie-holder">
            	<a href="/mymovie/movieDetail?movieno=3"><img width="210" src="src/image/극한직업.jpg"></a>
                <p class="movie-title"><a href="/mymovie/movieDetail?movieno=3">극한직업</a></p>
            </div>
            <div class="movie-holder">
            <a href="/mymovie/movieDetail?movieno=4"><img width="210" src="src/image/기생충.jpg"></a>
                <p class="movie-title"><a href="/mymovie/movieDetail?movieno=4">기생충</a></p>
            </div>
            <div class="movie-holder">
            <a href="/mymovie/movieDetail?movieno=5"><img width="210" src="src/image/매드맥스.jpg"></a>
                <p class="movie-title"> <a href="/mymovie/movieDetail?movieno=5">매드맥스</a></p>
            </div>
            <div class="movie-holder">
            	<a href="/mymovie/movieDetail?movieno=6"><img width="210" src="src/image/벌새.jpg"></a>
                <p class="movie-title">	<a href="/mymovie/movieDetail?movieno=6">벌새</a></p>
            </div>
            <div class="movie-holder">
            	<a href="/mymovie/movieDetail?movieno=7"><img width="210" src="src/image/아바타.jpg"></a>
                <p class="movie-title">	<a href="/mymovie/movieDetail?movieno=7">아바타</a></p>
            </div>
            <div class="movie-holder">
            	<a href="/mymovie/movieDetail?movieno=8"><img width="210" src="src/image/어바웃타임.jpg"></a>
                <p class="movie-title"><a href="/mymovie/movieDetail?movieno=8">어바웃타임</a></p>
            </div>
            <div class="movie-holder">
            	<a href="/mymovie/movieDetail?movieno=9"><img width="210" src="src/image/코코.jpg"></a>
                <p class="movie-title"><a href="/mymovie/movieDetail?movieno=9">코코</a></p>
            </div>
            <div class="movie-holder">
            	<a href="/mymovie/movieDetail?movieno=10"><img width="210" src="src/image/해리포터.jpg"></a>
                <p class="movie-title"><a href="/mymovie/movieDetail?movieno=10">해리포터</a></p>
            </div>
            <div class="movie-holder">
            	<a href="/mymovie/movieDetail?movieno=11"><img width="210" src="src/image/화양연화.jpg"></a>
                <p class="movie-title"><a href="/mymovie/movieDetail?movieno=11">회양연화</a></p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="${dto.movieimg}"></a>
                <p class="movie-title">${dto.movietitle}</p>
            </div>
        </div>
    </section>
</body>
</html>