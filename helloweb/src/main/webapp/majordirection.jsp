<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:url var="base" value="/helloweb_war_exploded"></c:url>
    <base href="${base}">
    <title>Title</title>
    <style>
        *{
            box-sizing: border-box;
        }
        .header{
            width: 100%;
            display: flex;
            height:180px;
            padding: 0;
            margin: 0;
        }
        .header1{
            width: 30%;
        }
        .header11{
            margin:10px 50px 10px 20px;
        }
        .header12{
            height: 40%;
            font-size: 40px;
            padding-left: 90px;
           color: lightsteelblue;
        }
        .header2{
            width: 70%;
            height: 180px;
            display: flex;
        }
        .show{
            display: none;
        }
        .item{
            margin-top: 80px;
            margin-left: 70px;
            width: 100px;
        }
        .item a{
            color: black;
            font-size: 25px;
            text-decoration:none;
        }
        .item2{
            display: block;
            text-align: center;
            height: 40px;
        }
        .item2 a{
            color: black;
            background-color: lightblue;
        }
        .teacher:hover .show{
            display: block;
        }
        .column{
            display: flex;
            flex-direction: column;
        }
        .column:hover .show{
            display: flex;
            flex-direction: column;
        }
        body {
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: honeydew;
            background-image: url("resources/img/back5.png");
        }

        .scene {
            display: flex;
            justify-content: space-between;
            -webkit-perspective: 800px;
            perspective: 800px;
            margin-left: 150px;
            margin-top: 100px;
            padding-right:140px;
        }
        .scene .card {
            position: relative;
            width: 400px;
            height: 400px;
            color: white;
            cursor: pointer;
            transition: 1s ease-in-out;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
        }
        .scene .card:hover {
            -webkit-transform: rotateY(0.5turn);
            transform: rotateY(0.5turn);
        }
        .scene .card .card__face {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            transition: 1s ease-in-out;
        }
        .scene .card .card__face img {
            width: 380px;
            height: 380px;
            -o-object-fit: cover;
            object-fit: cover;
        }
        .scene .card .card__face--back {
            -webkit-transform: rotateY(0.5turn);
            transform: rotateY(0.5turn);
            width: 300px;
            height: 380px;
            color: black;
        }

    </style>
</head>

<body>

<div class="header" style="display: flex">
    <div class="header1">
        <div class="header11"><img src="resources/img/logo.png"></div>
        <div class="header12">软件工程</div>
    </div>
    <div class="header2">
        <div class="item" style="margin-left: 20px"><a href="index.jsp">首页</a></div>
        <div class="item column" >
            <a href="majorintroduce.jsp" >专业介绍</a>
            <div class="show">
                <div class="item2"><a href="majorintroduce.jsp" style="color: black">专业简介</a></div>
                <div class="item2"><a href="majordirection.jsp" style="color: black">专业方向</a></div>
            </div>
        </div>

        <div class="item " ><a href="professor.jsp" >教师队伍</a></div>
        <div class="item" ><a href="employment.jsp">就业指南</a></div>
        <div class="item"><a href="laboratory925.jsp">实验室</a></div>
        <div class="item"><a href="tologin">新闻管理</a></div>
    </div>
</div>

<div class="scene">

    <div class="card">
        <div class="card__face card__face--front" style="margin-right: 0px;margin-left: 0px">
            <img src="resources/img/front11.png">
        </div>
        <div class="card__face card__face--back">
            <h2 style="text-align: center">Web开发</h2>
            Web开发包括前端开发和后端开发两个大的岗位划分，
            前端开发主要以应用Html、CSS和JavaScript为主，
            而后端开发则可以使用Java、Python、PHP、C#等语
            言。早期大部分毕业生会选择以后端开发为主。目前也
            有不少同学会选择前端开发作为主要方向。Web开发在
            IT行业内有大量的就业岗位，从未来发展的前景来看也
            是不错的选择。
        </div>
    </div>

    <div class="card" >
        <div class="card__face card__face--front" ">
            <img src="resources/img/front22.png" />
        </div>
        <div class="card__face card__face--back">
            <h2 style="text-align: center">移动终端开发</h2>
            随着移动互联网的发展，目前有不少毕业生会专
            注于移动端App的开发，主要包括iOS终端开发和
            Android终端开发。随着5G标准的落地应用，未
            来移动终端的开发场景也会进一步得到拓展，比
            如与物联网的深度结合等。当前不少开发团队已
            经把移动端开发并入到前端开发团队，这就要求
            从事移动端开发的技术人员进一步丰富自身的知
            识结构。
        </div>
    </div>

    <div class="card" >
        <div class="card__face card__face--front" style="margin-right: 0px;margin-left: 0px">
            <img src="resources/img/front33.png" />
        </div>
        <div class="card__face card__face--back" style="margin-right:200px">
            <h2 style="text-align: center">大数据开发</h2>
            大数据技术已经发展多年，技术体系已经趋于成熟，
            当前正处在落地应用的初期，随着产业互联网的发展
            ，未来大数据领域将释放出大量的就业岗位。从近些
            年的就业情况来看，从事大数据相关岗位的毕业生还
            是比较多的，以大数据应用开发、大数据分析和大数
            据运维几个岗位为主。

        </div>
    </div>

</div>
</body>
</html>
