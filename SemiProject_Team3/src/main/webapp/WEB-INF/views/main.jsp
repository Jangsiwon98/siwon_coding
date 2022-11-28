<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a><img width="400" src="/image/logo.png"></a>
        </div>
        <nav class="header-menu">
            <ul>
                <li><a href="/mymovie/noticelist">공지사항</a></li>
            </ul>
            <ul>
                <li><a href="/member/mypage">마이페이지</a></li>
            </ul>
        </nav>
    </header>
    <!--영화 리스트 영역-->
    
    <!-- 영화 포스터 출력 및 링크(movieDetail로 이동) 수정 (고) 22.11.27.17:00-->
    <section id="main-section">
        <div class="movie-container">
            <c:forEach items="${movielist }" var="dto">
        		<div class="movie-holder">
                <a href="/mymovie/movieDetail?movieno=${dto.movieno }"><img width="210" src="${dto.movieimage }"></a>
                <p class="movie-title">${dto.movietitle }</p>
            </div>
        	</c:forEach>
        </div>
    </section>
</body>
</html>