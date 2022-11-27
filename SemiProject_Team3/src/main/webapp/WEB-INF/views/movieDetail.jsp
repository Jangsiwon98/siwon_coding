<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
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
    
    
     <!--유튜브API-->
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script type=text/javascript>
    
    var work = "<c:out value='${dto.movietitle}'/>" + "공식 예고편";
    
    $.ajax({
  method: "GET",
  datatype: "json",
  url: "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResult=1&q="+work+"&type=video&key=키",
  success : function(data){
	  data.items.forEach(element,index){$('body').append(
			 '<iframe id="ytpLayer" type="text/html" width="720" height="405" src="https://www.youtube.com/embed" '+element.id.videoId+' frameborder="0" allow="autoplay;" allowfullscreen></iframe>'
				  
	  )}
  }
  });
    </script>
    
    



    <div class="detail">
    <div>
        <p>제목 : ${dto.movietitle}</p>
        <p>감독 : ${dto.moviedirector}</p>
        <p>장르 : ${dto.moviegenre}</p>
        <p>개봉일 : ${dto.moviedate}</p>
    </div>
    <br>
    <div id="moive-player">
    	
    </div>
    <br>
    <div>
    <button style="color:white; background-color: #6BCDA5; width:100px; height:30px;">한줄평</button>
    </div>
    </div>
</div>

</section>

    

  </body>
</html>