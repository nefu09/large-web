<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <title>Title</title>
    <style>
        body{
            background-color: lightslategray;
            height: 1000px;
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
            z-index: 5;
        }
        .item2{
            display: block;
            text-align: center;
            height: 40px;
            width: 100%;

        }
        .teacher:hover .show{
            display: block;
            z-index: 5;
            width: 100%;
        }
        .item2 a{
            width:100px;
            color: paleturquoise;
            background-color: lightsteelblue;
        }
        html {
            height: 100%;
            overflow: hidden;
        }
        body {
            background: black;
            margin: 0;
            width: 100%;
            height: 100%;
        }

        h1 {
            text-align: center;
        }

        .scene {
            width: 45%;
            height: 90%;
            margin: 0 5% 5% 50%;
            perspective: 1000px;
            z-index: 1;
        }

        .book {
            position: relative;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
        }

        .page {
            z-index: 1;
            cursor: pointer;
            position: absolute;
            color: black;
            width: 100%;
            height: 100%;
            transition: 1.5s transform;
            transform: translateZ(-1px);
            transform-style: preserve-3d;
            transform-origin: left center;
        }
        .front,
        .back {
            z-index: 1;
            position: absolute;
            width: 100%;
            height: 100%;
            padding: 3% 5% 3%;
            box-sizing: border-box;
            backface-visibility: hidden;
            background: -webkit-gradient(linear, 0% 0%, 100% 100%, from(#FFFFFF), to(#CCCCCC));
            background: linear-gradient(to bottom right, #fff, #ccc);
        }
        .back {
            transform: rotateY(180deg);
        }

        .page.active {
            z-index: 1;
            transform: translateZ(0);
        }
        .page.flipped {
            transform: translateZ(0) rotateY(-180deg);
        }
        .page.flipped:last-of-type {
            z-index: 1;
        }
        .qr img {
            display: block;
        }
        @media only screen
        and (min-device-width : 768px)
        and (max-device-width : 1024px)
        and (orientation : portrait) {
            .scene {
                width: 90%;
                height: 90%;
                margin: 1%;

            }
        }
        .imgd{
            width:280px;
            height: 330px;
            margin-left: 170px;
            margin-top: 15px;
        }
        .imgd img{
            width: 100%;
            height: 100%;
        }
        .page p{
            margin-top: 20px;
            font-size: 19px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="head">
    <img src="resources/img/logo.png" alt="logo" style="margin: 30px 0px 30px 80px">
    <div class="item"><a href="index.jsp">首页</a></div>
    <div class="item"><a href="majorintroduce.jsp">专业介绍</a></div>
    <div class="item teacher" >
        <a href="professor.jsp" >教师队伍</a>
        <div class="show">
            <div class="item2"><a href="professor.jsp" >教授</a></div>
            <div class="item2"><a href="vice-professor.jsp" >副教授</a></div>
            <div class="item2"><a href="lecturer.jsp" >讲师</a></div>
        </div>
    </div>
    <div class="item"><a href="employment.jsp">就业指南</a></div>
    <div class="item"><a href="laboratory925.jsp">实验室</a></div>
    <div class="item" ><a href="tologin">新闻管理</a></div>
</div>


<div class="scene">
    <article class="book">
        <section class="page active">
            <div class="front">
                <h1 style="font-size: 30px;margin-bottom: 20px;margin-top: 20px">讲师相册</h1>
                <p style="font-size:18px;margin-top:0px">
                    【师资力量】 学院现有教职工111人，其中专任教师101人，具有博士学位的教师占50%。教授10人、副教授43人，博士生导师10人，硕士生导师43人。外聘国内外兼职教授12人，特聘中国工程院院士1人，柔性引进特聘教授1人；国务院特殊津贴获得者1人，新世纪优秀人才支持计划2人，东北林业大学教学名师1人， 2名教师荣获黑龙江省高校“师德先进个人”荣誉称号。
                </p>
                <br>
                <p style="font-size:18px;margin-top:0px">
                    【教研平台】 拥有“林业大数据与云计算国家林业重点实验室”、“黑龙江省林业智能装备工程研究中心”、“黑龙江省林业大数据存储与高性能（云）计算工程技术研究中心”3个省部级科研平台，以及“东北林业大学数字资源产业研究院”。拥有1个省级“TRIZ理论研究室”和3个研究生创新培养示范基地。学院共拥有面向本科生课程的专业实验室20个、创新实验室12个，实验室总面积4500余平方米，设备资产总额5000余万元。
                </p>
                <br>
                <p style="font-size:18px;margin-top:0px">
                    【人才培养】 学院注重学生的创新思维、创新能力和创业精神的培养，重视工程能力的培训。学生可以根据个人意愿参加国家、省、校、院四级大学生创新创业项目，参加“ACM国际大学生程序设计竞赛”、“全国大学生电子设计竞赛”、“机器人竞赛”等竞赛的集训，也可参加导师所设立的“大学生科研训练项目”，锻炼实际动手能力和科学研究能力。历届学生中70%以上通过上述课外实践活动受益，在择业、升学过程中，展现出极大竞争力。
                </p>
            </div>
            <div class="back">
                <h1>– 1 –</h1>
                <div class="imgd">
                    <img src="resources/img/lecturer01.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    王波
                </p>
                <p >
                硕士,主要研究方向:计算数学,软件
                     开发。发表学术论文3篇。
                </p>
            </div>
        </section>
        <section class="page">
            <div class="front">
                <h1>– 2 –</h1>
                <div class="imgd">
                    <img src="resources/img/lecturer03.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    单颖
                </p>
                <p >
                    博士,主要研究方向:软件工程,林业信息。
                    参与科研项目多项,并发表相关论文。
                </p>
            </div>
            <div class="back">
                <h1>– 3 –</h1>
                <div class="imgd">
                    <img src="resources/img/lecturer02.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    李琰
                </p>
                <p >
                    主要研究方向:软件工程,遥感和林业信息。
                    参与科研项目多项,参编教材1部,并发表部
                    分相关论文。
                </p>
            </div>
        </section>
        <section class="page">
            <div class="front">
                <h1>– 4 –</h1>
                <div class="imgd">
                    <img src="resources/img/lecturer04.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    边继龙
                </p>
                <p>
                    博士,主要研究方向:立体匹配、矢量地图压
                    缩。曾参与或负责的科研项目包括:矢量地图
                    版权保护技术研究、小基高比立体测绘图像匹
                    配处理方法研究及十二五科研项目等。在国内
                    外期刊上发表学术论文7篇,其中被EI收录5篇;
                    申请发明专利3项。
                </p>
            </div>
            <div class="back">
                <h1>– 5 –</h1>
                <div class="imgd">
                    <img src="resources/img/lecturer05.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    赵旭东
                </p>
                <p>
                    硕士生导师,东北林业大学5211人才计划获得者
                    ,香港中文大学计算机科学与工程系博士后,哈尔
                    滨工业大学计算机学院人工智能与信息处理专业
                    博士毕业,分别于2003、2007年在哈尔滨工业大
                    学自动化测试与控制专业、计算机科学与技术专
                    业获得工学学士、硕士学位。
                </p>
            </div>
        </section>

    </article>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        var currentPage = 0;

        $('.book')
            .on('click', '.active', nextPage)
            .on('click', '.flipped', prevPage);

        $('.book').hammer().on("swipeleft", nextPage);
        $('.book').hammer().on("swiperight", prevPage);

        function prevPage() {

            $('.flipped')
                .last()
                .removeClass('flipped')
                .addClass('active')
                .siblings('.page')
                .removeClass('active');
        }
        function nextPage() {

            $('.active')
                .removeClass('active')
                .addClass('flipped')
                .next('.page')
                .addClass('active')
                .siblings();


        }
    </script>
</div>
</body>
</html>