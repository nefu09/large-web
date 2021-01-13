<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <c:url var="base" value="/helloweb_war_exploded"></c:url>
    <base href="${base}">
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            background-image: url("resources/img/back1.jpg");
            background-size: 100vh 100vw;
        }
        form{
            margin-left:500px;
            margin-top: 250px;
        }
        .middle{
            width: 480px;
            height: 300px;
            background-color: lightblue;
            opacity: 65%;
            border-radius: 10px;
        }
    </style>
</head>
<body>

<form action="submit" method="post">
    <div class="middle">
        <div style="margin-left: 200px;padding-top:30px;font-size: 25px;margin-left: 180px">新闻管理</div>
     <div style="display: block;font-size: 20px;padding-top:45px;padding-left: 78px;font-size: 50px"><input type="text" name="useName" style="font-size: 25px" placeholder="Username/Email"></div>
    <div style="display: block;font-size: 20px;padding-left: 78px;font-size: 25px;padding-top: 30px"><input type="password" name="psw" style="font-size: 25px" placeholder="Password"></div>
          <div style="padding-top: 30px;padding-left: 110px"><button type="submit" style="font-size: 25px;width: 250px;color:white;background-color: lightskyblue">Login</button></div>
    </div>
</form>

</body>
</html>
