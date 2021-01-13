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

        }
        .teacher:hover .show{
            display: block;
        }
        .item2 a{
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
        }

        .book {
            position: relative;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
        }

        .page {
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
            <div class="item2"><a href="professor.jsp">教授</a></div>
            <div class="item2"><a href="vice-professor.jsp">副教授</a></div>
            <div class="item2"><a href="lecturer.jsp">讲师</a></div>
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
                <h1 style="font-size: 30px;margin-bottom: 20px;margin-top: 20px">副教授相册</h1>
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
                    <img src="resources/img/vice-professor01.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    罗嗣卿
                </p>
                <p >
                    硕士，硕士生导师。主要研究方向：信
                    息系统析与设计、图像处理、软件服务
                    与应用。主持和参加省攻关重点、省自
                    然基金、国家林业公益性行业专项、省
                    教改项目15项，发表论文20余篇，教材
                    3部。
                </p>
            </div>
        </section>
        <section class="page">
            <div class="front">
                <h1>– 2 –</h1>
                <div class="imgd">
                    <img src="resources/img/vice-professor02.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    李莉
                </p>
                <p >
                    博士，软件工程专业主任，专业教工党支
                    部书记，硕士生导师。主要研究方向：先
                    进软件工程技术、群智能优化、大型分布
                    式计算。多次获得东北 林业大学教学质
                    量优秀奖、教书育人先进个人，获得东北
                    林业大学青年教师授课大赛二等奖，信息
                    与计算机工程学院教师授课精英赛第一名。
                </p>
            </div>
            <div class="back">
                <h1>– 3 –</h1>
                <div class="imgd">
                    <img src="resources/img/vice-professor03.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    刘丹
                </p>
                <p >
                    工学博士，硕士生导师，软件工程专业副主
                    任。主要研究方向：无线传感器网络相关技
                    术、数据仓库，数据挖掘。主持或参与科技
                    部支撑计划项目、教学项目20余项，出版教
                    材7部，发表论文10余篇，其中 EI收录论文
                    7篇。获黑龙江省科技进步三等奖 1项，省级
                    奖励2项。授权发明专利、实用新型专利、软
                    件著作权10余项。
                </p>
            </div>
        </section>
        <section class="page">
            <div class="front">
                <h1>– 4 –</h1>
                <div class="imgd">
                    <img src="resources/img/vice-professor04.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    张锡英
                </p>
                <p>
                    硕士，硕士生导师。主要研究方向：现代信
                    息技术及网络应用，数据库技术、图像检索。
                    主持或参加科研项目11 项，发表论文9篇，
                    出版教材2部。获得省级科学技术进步奖1次，
                    2 门课精品课主讲教师。
                </p>
            </div>
            <div class="back">
                <h1>– 5 –</h1>
                <div class="imgd">
                    <img src="resources/img/vice-professor05.png" alt="lecture">
                </div>
                <p style="text-align: center;font-size: 23px">
                    赵玉茗
                </p>
                <p>
                    博士，副教授，硕士生导师，专业副主任。主要
                    研究方向：人工智能、数据挖掘、生物信息学。
                    主持国家自然科学基金、黑龙江省自然科学基金
                    、林木遗传育种国家重点实验室开放基金、主持
                    精品在线 课程建设1门。获得专利3项。发表学
                    术论文20余篇 ，其中EI、SCI收录10余篇，参与
                    编写教材1部。
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