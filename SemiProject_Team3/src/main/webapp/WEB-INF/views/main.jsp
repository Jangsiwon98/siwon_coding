<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
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
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $(".movie-holder").mouseenter(function(){
                $(this).css({'padding-top': '0px'});
            });
            $(".movie-holder").mouseleave(function(){
                $(this).css({'padding-top': '20px'});
            });
        });
    </script>
</head>
<body>
<!--헤더-->
    <%@ include file="./header.jsp"%>
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