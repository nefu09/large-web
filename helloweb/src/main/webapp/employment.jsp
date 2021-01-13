<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <title>Title</title>
    <style>
        *{
            box-sizing: border-box;
        }
        .head{
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
        .show{
            display: none;
        }
        .item{
            margin-top: 60px;

        }
        .item a{
            color: black;
        }
        .item2{
            display: block;
            text-align: center;
            height: 40px;

        }
        body{
            background-image: url("resources/img/back10.jpg");
        }
        .teacher:hover .show{
            display: block;
        }
        .item2 a{
            color: lightblue;
        }
        .lefttop{
            width: 300px;
            height: 400px;
            display: inline-block;
            position: absolute;
            right: 802px;
            top:200px;
            background-color: honeydew;
            transition: transform 1s;
            font-size: 16px;
            border-radius: 10px;
        }

        .lefttop1:hover{
            transform: translate(20px,20px);
        }
        .lefttop1{
            width: 400px;
            height: 350px;
            background-color: lavender;
            display: inline-block;
            position: absolute;
            right: 802px;
            top:200px;
            transition: transform 1s;
        }

        .righttop{
            width: 300px;
            height: 400px;
            display: inline-block;
            position: absolute;
            right: 335px;
            top:200px;
            transition: transform 1s;
           background-color: lightcyan;
            font-size: 16px;
            border-radius: 10px;
        }
        .righttop1:hover{
            transform: translate(-20px,20px);
        }
        .righttop1{
            width: 400px;
            height: 350px;
            display: inline-block;
            position: absolute;
            right: 335px;
            top:200px;
            background-color: lavender;
            transition: transform 1s;
        }
        .leftbottom{
            width: 300px;
            height: 400px;
            display: inline-block;
            position: absolute;
            right: 810px;
            top:680px;
            transition: transform 1s;
            background-color: lavender;
            font-size: 16px;
            border-radius: 10px;
        }
        .leftbottom1:hover{
            transform: translate(20px,-20px);
        }
        .leftbottom1{
            width: 400px;
            height: 350px;
            display: inline-block;
            position: absolute;
            right: 810px;
            top:680px;
            background-color: lavender;
            transition: transform 1s;
        }
        .rightbottom{
            width: 300px;
            height: 400px;
            display: inline-block;
            position: absolute;
            right:350px;
            top:680px;
            transition:1s;
            background-color: lightsteelblue;
            font-size: 16px;
            border-radius: 10px;
        }
        .rightbottom1:hover {
            transform: translate(-20px,-20px);
        }
        .rightbottom1{
            width: 400px;
            height: 350px;
            display: inline-block;
            position: absolute;
            right: 350px;
            top:680px;
            background-color: lavender;
        }
        .content{
            height: 1050px;

        }
    </style>
</head>
<body>
<div class="head">
    <img src="resources/img/logo.png" alt="logo" style="margin: 30px 0px 30px 80px">
    <div class="item"><a href="index.jsp">首页</a></div>
    <div class="item"><a href="majorintroduce.jsp">专业介绍</a></div>
    <div class="item " ><a href="professor.jsp" >教师队伍</a></div>
    <div class="item"><a href="employment.jsp">就业指南</a></div>
    <div class="item"><a href="laboratory923.jsp">实验室</a></div>
    <div class="item"><a href="tologin">新闻管理</a></div>
</div>
<div class="content">
<div class="lefttop">
    Spring框架是一个开放源代码的J2EE应用程序框架，由Rod Jo
    hnson发起，是针对bean的生命周期进行管理的轻量级容器（li
    ghtweight container）。 Spring解决了开发者在J2EE开发
    中遇到的许多常见的问题，提供了功能强大IOC、AOP及Web MVC
    等功能。Spring可以单独应用于构筑应用程序，也可以和Struts
    、Webwork、Tapestry等众多Web框架组合使用，并且可以与 Sw
    ing等桌面应用程序AP组合。因此， Spring不仅仅能应用于JEE
    应用程序之中，也可以应用于桌面应用程序以及小应用程序之中。
    Spring框架主要由七部分组成，分别是 Spring Core、 Sprin
    g AOP、 Spring ORM、 Spring DAO、Spring Context、 Sp
    ring Web和 Spring Web MVC。
</div>
    <div class="lefttop1">
        <img src="resources/img/Spring.jpg" style="width:420px;height: 420px;margin-left: 15px;margin-top: 15px">
    </div>
<div class="righttop">
    MyBatis 本是apache的一个开源项目iBatis, 2010年这个项目
    由apache software foundation 迁移到了google code，并
    且改名为MyBatis 。2013年11月迁移到Github。iBATIS一词来
    源于“internet”和“abatis”的组合，是一个基于Java的持久层
    框架。iBATIS提供的持久层框架包括SQL Maps和Data Access
    Objects（DAOs）MyBatis 是一款优秀的持久层框架，它支持定
    制化 SQL、存储过程以及高级映射。MyBatis 避免了几乎所有的
    JDBC 代码和手动设置参数以及获取结果集。MyBatis 可以使用
    简单的 XML 或注解来配置和映射原生信息，将接口和 Java 的
    POJOs(Plain Ordinary Java Object,普通的 Java对象)映射
    成数据库中的记录。
</div>
    <div class="righttop1">
        <img src="resources/img/MyBatis.png" style="width:420px;height: 420px;margin-left: 15px;margin-top: 15px">
    </div>
<div class="leftbottom">
    MySQL是一个关系型数据库管理系统，由瑞典MySQL AB 公司开发 ，
    属于 Oracle 旗下产品。MySQL 是最流行的关系型数据库管理 系
    统之一，在 WEB 应用方面，MySQL是最好的 RDBMS (Relational
    Database Management System，关系数据库管理系统) 应用 软
    件之一。MySQL是一种关系型数据库管理系统，关系数据库将数据保
    存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加
    了速度并提高了灵活性。MySQL所使用的 SQL 语言是用于访问数据
    库的最常用标准化语言。MySQL 软件采用了双授权政策，分为社区版
    和商业版，由于其体积小、速度快、总体拥有成本低，尤其是开放源
    码这一特点，一般中小型网站的开发都选择 MySQL 作为网站数据库。
</div>
    <div class="leftbottom1">
        <img src="resources/img/mysql.png" style="width:420px;height: 420px;margin-left: 15px;margin-top: 15px">
    </div>
<div class="rightbottom">
    Docker 是一个开源的应用容器引擎，让开发者可以打包他们的应用
    以及依赖包到一个可移植的镜像中，然后发布到任何流行的 Linux或
    Windows 机器上，也可以实现虚拟化。容器是完全使用沙箱机制，相
    互之间不会有任何接口。Docker是PaaS提供商dotCloud开源的一个
    基于LXC的高级容器引擎，源代码托管在Github上,基于go语言并遵从
    Apache2.0协议开源。Docker自2013年以来非常火热，无论是从git
    hub上的代码活跃度，还是Redhat在RHEL6.5中集成对Docker的支持,
    就连Google的Compute Engine也支持docker在其之上运行。dotCl
    oud之家的PaaS 产品建立在docker之上，长期维护且有大量的用户，
    社区也十分活跃。
</div>
    <div class="rightbottom1">
        <img src="resources/img/docker.png" style="width:420px;height: 420px;margin-left: 15px;margin-top: 15px">
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script>
    $(function () {
       $(".lefttop1").hover(function () {
           $('.lefttop').css("transform","translate(-395px,0px)");
       },function () {
           $('.lefttop').css("transform","translate(0px,0px)");
       })
        $(".righttop1").hover(function () {
            $('.righttop').css("transform","translate(330px,0px)");
        },function () {
            $('.righttop').css("transform","translate(0px,0px)");
        })
        $(".leftbottom1").hover(function () {
            $('.leftbottom').css("transform","translate(-400px,0px)");
        },function () {
            $('.leftbottom').css("transform","translate(0px,0px)");
        })
        $(".rightbottom1").hover(function () {
            $('.rightbottom').css("transform","translate(330px,0px)");
        },function () {
            $('.rightbottom').css("transform","translate(0px,0px)");
        })
    })

</script>
</body>
</html>
