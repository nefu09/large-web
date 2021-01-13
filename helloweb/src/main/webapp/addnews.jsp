<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <%-- <c:url var="base" value="/helloweb_war_exploded/"></c:url>
    <base href="${base}">--%>
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
        height: 600px;
        display: flex;
    }
    .footer{
        background-image: url(resources/img/footer.jpg);
        width: 100%;
        height: 200px;
        background-size: 100% 200px;
    }
</style>
<body>
<div class="head">
    <img src="resources/img/logo.png" alt="logo" style="margin: 30px 0px 30px 80px">
    <a href="index.jsp">首页</a>
    <a href="majorintroduce.jsp">专业介绍</a>
    <a href="professor.jsp">教师队伍</a>
    <a href="employment.jsp">结业指南</a>
    <a href="laboratory925.jsp">实验室</a>
    <a href="tologin">新闻管理</a>
</div>
<div class="up"></div>

<div class="main">

      <form action="add" method="post">
       <input  type="text" name="title" style="width: 400px;height: 40px;margin-left: 500px;margin-top: 20px;font-size:20px" placeholder="title">
        <br>
        <textarea name="content" style="width: 400px;height: 400px;margin-top: 20px;margin-left: 500px;font-size:20px" placeholder="content"></textarea>
        <br>
        <input type="text" name="date" style="width: 400px;height: 40px;margin-left: 500px;margin-top:20px;font-size:20px"placeholder="date">
                                                   <input type="submit" style="font-size: 25px">
      </form>

</div>

<div class="footer">
</div>
</body>
</html>