<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <title>Title</title>
    <meta charset="GBK">
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            color: paleturquoise;
            background-color: lightsteelblue;
            height:1200px
        }
        .header{
            display: flex;
            height: 200px;
        }
        .header1{
            display: flex;
            flex-direction: column;
            font-size: 30px;
            width: 30%;
            color: #c3c3c3;

        }
        .header2 li{
            color: white;
            font-size: 25px;
            list-style: none;
            margin-left: 100px;
            margin-top: 20px;
        }
        .header11{

            margin:10px 50px 10px 100px;
        }
        .header12{
            height: 40%;
            font-size: 40px;
            padding-left: 180px;
            color: white;
        }
        .header2{
            width: 70%;
            height: 140px;
            display: flex;
            margin-top: 30px;
        }
        .head a{
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
            display: inline-block;
            height: 150px;
            width: 200px;
            text-align:center;
        }
        .item2{
            display: block;
            text-align: center;
            height: 35px;
        }
        .teacher:hover .show{
            display: block;
            text-align: center;
            background-color: lightskyblue;
            width: 50%;
            margin-left: 65px;
        }
        .content{
            width: 100%;
            display: flex;
            height: 1100px;
        }
        .aside{
            width: 16%;
            height: 1100px;
            position: relative;
            background-color: #66677c;
        }
        .right{
            width: 84%;
            height: 1000px;
        }
        .up{
            width: 99.5%;
            height: 170px;
            background-color: #66677c;
            margin-left: 5px;
        }
        .middle{
            width: 99.5%;
            height: 600px;
            margin-left: 5px;
        }
        .down{
            width: 99.5%;
            height: 330px;
            margin-left: 5px;
            background-color: #66677c;
            position: relative;
        }
        .lun{
            width: 100%;
            height: 100%;
            position: relative;


        }
        .circle{
            width: 20px;
            height: 20px;
            box-sizing: border-box;
            line-height: 20px;
            text-align: center;
            border-radius: 20px;
            background-color: white;
            z-index: 10;
            margin-right: 500px;
            margin-bottom: 10px;

        }
        #circle1{
            position:absolute;
            right: 250px;
            bottom: 10px;
        }
        #circle2{
            position:absolute;
            right: 190px;
            bottom: 10px;
        }
        #circle3{
            position: absolute;
            right: 130px;
            bottom: 10px;

        }
        #circle4 {
            position: absolute;
            right: 70px;
            bottom: 10px;
        }
        .lun .img{
            z-index:1;
            width:100%;
            height: 100%;
            position:absolute;
        }
        #img1{
            position:absolute;
            z-index:2;

        }
        .circle img{
            width: 50px;
            height: 30px;
            border-radius: 10px;
        }
        .word{
            position: absolute;
            opacity: 0;
            font-size:30px;
        }
        .word1{
            opacity: 1;
        }
        .aside img{
            width: 200px;
            height: 150px;
            margin-left: 20px;
        }
        .item a{
            text-decoration: none;
            font-size: 20px;
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
        <div class="item teacher" style="width: 250px;text-align: center" >
            <a href="laboratory923.jsp" >实验室</a>
            <div class="show">
                <div class="item2"><a href="laboratory925.jsp" style="color: white;margin: 0px">925实验室</a></div>
                <div class="item2"><a href="laboratory923.jsp" style="color: white;margin: 0px">923实验室</a></div>
            </div>
        </div>
        <div class="item"><a href="tologin">新闻管理</a></div>
    </div>
</div>
<div class="content">
    <div class="aside">
        <div  style="margin-top: 180px;"><img src="resources/img/aside1.png"></div>
        <div style="margin-top: 60px"><img src="resources/img/aside2.png" ></div>
        <div style="margin-top: 60px"><img src="resources/img/aside3.png"></div>
    </div>
    <div class="right">
        <div class="up">
            <h1 style="margin-left: 550px;font-size: 40px;padding-top: 60px">925实验室</h1>
        </div>
        <div class="middle">
            <div class="lun">
                <div id="circle1" class="circle"><img src="resources/img/92501.png" ></div>
                <div id="circle2" class="circle"><img src="resources/img/92502.png" ></div>
                <div id="circle3" class="circle"><img src="resources/img/92503.png" ></div>
                <div id="circle4" class="circle"><img src="resources/img/92504.png" ></div>
                <img id="img1" class="img" src="resources/img/92501.png">
                <img id="img2" class="img" src="resources/img/92502.png">
                <img id="img3" class="img" src="resources/img/92503.png">
                <img id="img4" class="img" src="resources/img/92504.png">
            </div>
        </div>
        <div class="down">
            <div class="word word1">
                计算机和处理器是信息社会的基础，是信息领域的核心技术；计算机体系结构主要研究计算机和处理器的结
                构与设计方法，是推动信息技术发展的核心“引擎”。随着摩尔定律
                放缓，计算机和处理器发展正面临着越来越严峻的可靠设计、性能
                优化、低功耗设计等挑战，亟需体系结构层次创新。另一方面，核
                心芯片研制能力弱也是我国信息产业的短板，处理器、系统软件等
                核心技术被个别发达国家控制，导致我国企业在国际产业链中核心
                竞争力弱、缺乏话语权。如何让我国企业在IT领域具有国际竞争力
                ，避免芯片制裁事件再次发生，亟需科研人员为我国企业提供在国
                际开放产业生态中具有竞争力的核心技术。</div>
            <div class="word word2">计算机体系结构国家重点实验室于2011年10月批准成立，
                2013年5月通过验收，在2017年国家重点实验室评估中，实验室获得了“优秀”。主
                要从事计算机体系结构和系统设计方法领域的应用基础研究，侧重于研究超并行计
                算机系统和多核处理器。目前承担的基础性研究项目包含：973项目[高通量计算系
                统的构建原理、支撑技术及云服务应用]；基金委创新群体项目[超并行高效能计算
                机体系结构与设计方法研究]及多项基金杰青及重点项目。五年来，围绕以数据为中
                心的新型体系结构和系统设计，在国际上率先开展了深度学习处理器、高通量计算的
                新方向研究，得到国际计算机体系结构界的广泛认同和跟随。获得基金委创新群体，
                并于2012年、2015年连续两次获得延续资助。</div>
            <div class="word word3">　本国重定位于计算机体系结构领域的应用基础研究，目标
                是立足于国际学科发展前沿，围绕国家信息领域对高端计算装备的重大需求,在高端
                计算体系结构、微体系结构、测试与容错计算、编译与编程研究方向保持国内领先水
                平，在非传统体系结构的某些关键领域取得国际引领性成果，在超并行计算机系统、
                高性能高可靠处理器相关领域服务于国家战略目标，为未来计算机系统的发展提供科
                学技术依据。以满足高性能计算、智能计算和人机物三元计算的需求为突破口，研究
                十万亿次级芯片体系结构、千线程级芯片体系结构、千万亿次智能计算芯片体系结构、
                十万亿次/瓦高能效物端芯片体系结构，芯片的测试验证和自修复方法，基于新工艺、
                新器件的芯片设计方法。</div>
            <div class="word word4">①高端计算体系结构：研究超艾级高端计算机的体系结构、面向云计
                算和网络计算的新型计算机体系结构、新型并行结构及数据中心的互连技术、海云计算体系结
                构以及面向体系结构的算法优化等。 微体系结构：研究面向高通量计算的多核处理器的新型
                体系结构、XPU处理器体系结构和数据组织方法、可重塑异构处理器芯片及体系结构等。编译
                与编程：研究面向大众用户的并行编程语言及环境、全生存周期的应用程序优化及并行程序分
                析方法/错误检测和调试技术、数据密集型应用的编程模型等。 VLSI与容错计算：研究纳米/
                三维芯片的设计自动化/验证/测试技术、面向高通量计算的容错计算模型和设计方法、硅基光
                导/射频等新型片上互连和可靠设计技术等。</div>
        </div>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script>
    $(function () {
        $("#circle1").click(function () {
            $("#img1").css( "z-index",3)
            $("#img2").css( "z-index",1)
            $("#img3").css( "z-index",1)
            $("#img4").css( "z-index",1)
            $(".word1").css( "opacity",1)
            $(".word2").css( "opacity",0)
            $(".word3").css( "opacity",0)
            $(".word4").css( "opacity",0)
        }),
            $("#circle2").click(function () {
                $("#img1").css( "z-index",1)
                $("#img2").css( "z-index",3)
                $("#img3").css( "z-index",1)
                $("#img4").css( "z-index",1)
                $(".word1").css( "opacity",0)
                $(".word2").css( "opacity",1)
                $(".word3").css( "opacity",0)
                $(".word4").css( "opacity",0)
            }),
            $("#circle3").click(function () {
                $("#img1").css( "z-index",1)
                $("#img2").css( "z-index",1)
                $("#img3").css( "z-index",3)
                $("#img4").css( "z-index",1)
                $(".word1").css( "opacity",0)
                $(".word2").css( "opacity",0)
                $(".word3").css( "opacity",1)
                $(".word4").css( "opacity",0)
            }),
            $("#circle4").click(function () {
                $("#img1").css( "z-index",1)
                $("#img2").css( "z-index",1)
                $("#img3").css( "z-index",1)
                $("#img4").css( "z-index",3)
                $(".word1").css( "opacity",0)
                $(".word2").css( "opacity",0)
                $(".word3").css( "opacity",0)
                $(".word4").css( "opacity",1)
            })
    })
</script>
</body>
</html>
