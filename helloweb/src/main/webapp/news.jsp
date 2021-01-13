<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            background-color: lightblue;
            background-size: 100% 100%;
        }
        .header{
            display: flex;
            height: 200px;
            width: 100%;
        }
        .header1{
            display: flex;
            flex-direction: column;
            color: white;
            font-size: 30px;
            width: 400px;
            height: 200px;
            color: #c3c3c3;
        }
        .header2 {
            color: white;
            font-size: 25px;
            list-style: none;
            margin-left: 50px;
            margin-top: 20px;
        }
        .header11{
        margin:10px 20px 10px 50px;
        }
        .header12{
            height: 40%;
            font-size: 40px;
            padding-left: 50px;
            color: white;
            margin-left: 70px;
        }
        .head a{
            margin-left: 20px;
            margin-top: 60px;
            font-size: 23px;
            color: white;
            text-decoration:none;
        }
        .item{
            margin-top: 60px;
            display: inline-block;
            height: 150px;
            width: 150px;
            text-align:center;

        }
        .item a{
            padding-right: 50px;
            text-decoration: none;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="header1">
        <div class="header11"><img src="resources/img/logo.png"></div>
        <div class="header12">软件工程</div>
    </div>
    <div class="header2">
        <div class="item" ><a href="index.jsp">首页</a></div>
        <div class="item" ><a href="majorintroduce.jsp" >专业介绍</a></div>
        <div class="item" ><a href="professor.jsp" >教师队伍</a></div>
        <div class="item" ><a href="employment.jsp">就业指南</a></div>
        <div class="item"><a href="laboratory923.jsp" >实验室</a></div>
        <div class="item"><a href="tologin">新闻管理</a></div>
    </div>
</div>
<c:set var="news" value="${showNews}"/>

<div style="color: black;width: 100%;text-align: center;margin-top: 30px;font-size: 35px">${news.title}</div>
<div style="color: black;width: 100%;text-align: center;font-size: 30px">${news.date}</div>
<div style="color: black;width: 60%;text-align: center;font-size: 26px;margin-left: 305px;height: auto">${news.content}</div>
</body>
</html>
