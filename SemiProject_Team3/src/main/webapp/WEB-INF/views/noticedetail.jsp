<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    <!-- 공지사항 -->
    <style tyoe="text/css">
        h2{ 
            margin-left: 100px;
            margin-top: 100px;
            color : rgb(107, 205, 165);
        }
        table {
            border-collapse: collapse;
            border-spacing: 0;
            text-align: center;
        }
        .board-table{
            font-size: 18px;
            margin-left: 200px;
            margin-top: 50px;
            width: 80%;
            border-top: 3px solid lightgray;
            border-bottom: 3px solid lightgray;
        }
        .board-table th{
            padding: 14px 0; 
            border-top: 2px solid lightgray;
            border-bottom: 2px solid lightgray;
            }
        .board-table td{
            padding: 14px 0; 
            text-align: left; 
            border-top: 2px solid lightgray;
            border-bottom: 2px solid lightgray;
        }
    </style>
</head>
<body>
<!--헤더-->
    <header id="main-header">
        <div class="header-title">
            <a><img width="400" src="src/Logo.png"></a>
        </div>
        <nav class="header-menu">
            <ul>
                <li><a href="mymovie/noticelist">공지사항</a></li>
            </ul>
            <ul>
                <li><a href="#">마이페이지</a></li>
            </ul>
        </nav>
    </header>
    <!--공지사항-->
    <h2>공지사항</h2>
    <div id="board-list">
        <div class="container">
            <table class="board-table">
                <tr>
                    <th>제목</th>
                    <td>${dto.boardtitle }</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${dto.memberid }</td>
                    <th>날짜</th>
                    <td>${dto.boarddate }</td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td><textarea rows="10" cols="40" readonly="readonly">${dto.boardcontent }</textarea></td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>