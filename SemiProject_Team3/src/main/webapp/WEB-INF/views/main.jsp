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
    <section id="main-section">
        <div class="movie-container">
            <div class="movie-holder">
                <a><img width="210" src="https://upload.wikimedia.org/wikipedia/ko/e/ea/%EA%B4%B4%EB%AC%BC_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg"></a>
                <p class="movie-title">괴물</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="https://upload.wikimedia.org/wikipedia/ko/d/dd/%ED%95%B4%EB%A6%AC_%ED%8F%AC%ED%84%B0%EC%99%80_%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%98_%EB%8F%8C_%EC%98%81%ED%99%94.jpg"></a>
                <p class="movie-title">해리포터</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="https://t1.daumcdn.net/movie/4ac650521929b5e6f9f202ec873f29f86b683069"></a>
                <p class="movie-title">아바타</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="https://w.namu.la/s/a7a617283a97b567b4d206f350a0eaffb1402eeb07ebd4133d7ca3b80ac8bb7cc4baccd42d41be5e8279cf73c4f2895a80ca7f9b47c03ded40ab2a4dec26ffdd31f0d7c0387cc415b9dbed4a8f2da2018521b44cf28cea04ca7ac64ed7a60dc628b4fb0a167da365b17f2eaf749ae29e"></a>
                <p class="movie-title">매드맥스</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="http://t1.daumcdn.net/movie/4e00e81f2b6f4d2eb65b3387240cc3c01547608409838"></a>
                <p class="movie-title">극한직업</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="http://t1.daumcdn.net/movie/cab3b02a7b274bd6838b80a5e481fedf1559021787090"></a>
                <p class="movie-title">기생충</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="https://upload.wikimedia.org/wikipedia/ko/b/b8/1917%EC%98%81%ED%99%94_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg"></a>
                <p class="movie-title">1917</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="https://upload.wikimedia.org/wikipedia/ko/thumb/0/03/%EC%98%81%ED%99%94_%EC%BD%94%EC%BD%94.jpg/220px-%EC%98%81%ED%99%94_%EC%BD%94%EC%BD%94.jpg"></a>
                <p class="movie-title">코코</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="http://t1.daumcdn.net/cfile/2653C44F5285D86E2D"></a>
                <p class="movie-title">어바웃 타임</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="https://upload.wikimedia.org/wikipedia/ko/c/c8/%EB%B2%8C%EC%83%88_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg"></a>
                <p class="movie-title">벌새</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="https://t1.daumcdn.net/movie/84ee1d6c105971563641182144d8c373f4831865"></a>
                <p class="movie-title">회양연화</p>
            </div>
            <div class="movie-holder">
                <a><img width="210" src="${dto.movieimg}"></a>
                <p class="movie-title">${dto.movietitle}</p>
            </div>
        </div>
    </section>
</body>
</html>