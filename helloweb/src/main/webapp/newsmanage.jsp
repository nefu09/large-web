<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:url var="base" value="/"></c:url>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    .head{
        background-color: black;
        width: 100%;
        height: 140px;
        display: flex;
    }
    .head a{
        margin-left: 100px;
        margin-top: 60px;
        font-size: 23px;
        color: white;
        text-decoration:none;
    }
    .up{
        width: 100%;
        height: 280px;
        background-image: url(resources/img/ch3.jpg);
        background-size: 100% 200px;
    }

    .main{
        width: 100%;
        height: auto;
        position: relative;
    }
    .footer{
        background-image: url(resources/img/footer.jpg);
        width: 100%;
        height: 200px;
        background-size: 100% 200px;
    }
    .first{
        margin-left: 50px;
        font-size: 20px;
    }
    .second{
       position: absolute;
        right: 60px;
        font-size: 20px;
    }
    .third{
        position: absolute;
        right: 10px;
        font-size: 20px;
        margin-right:0px;
    }
    .titles{
        margin-top: 80px;
        margin-left:260px;
        width: 1000px;
        height: auto;
        border: 1px black solid;
        position: relative;
    }
    .add{
        position: absolute;
        right: 100px;
        top:100px;
        font-size: 30px;
    }
</style>
<body>
<div class="head">
    <img src="resources/img/logo.png" alt="logo" style="margin: 30px 0px 30px 80px">
    <a href="index.jsp">首页</a>
    <a href="majorintroduce.jsp">专业介绍</a>
    <a href="professor.jsp">教师队伍</a>
    <a href="employment.jsp">就业指南</a>
    <a href="laboratory925.jsp">实验室</a>
    <a href="tologin">新闻管理</a>
</div>
<div class="up"></div>

<div class="main">
    <hr style="width: 800px;color: saddlebrown">
    <div class="add"><a href="addnews.jsp">添加新闻</a></div>
    <div class="titles">
    <c:forEach items="${newslist}" var="n">
        <div style="display: flex">
        <a href="news?id=${n.id}" style="text-decoration: none"><div class="first" style="width: 600px;display: flex;">${n.title}</div></a>
        <div class="second"><a href="delete?id=${n.id}" style="text-decoration: none">删除</a></div>
        <div class="third"><a href="modify?id=${n.id}" style="text-decoration: none">修改</a></div>
        </div>
    </c:forEach>
    </div>
</div>

<div class="footer">
</div>
</body>
</html>