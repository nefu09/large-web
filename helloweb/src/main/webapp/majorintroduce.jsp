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
            color: cornflowerblue;
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
            background-image: url("resources/img/back6.png");
            background-size: 100% 100%;
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
                <div class="item2"><a href="majorintroduce.jsp" style="color: black;margin: 0px">专业简介</a></div>
                <div class="item2"><a href="majordirection.jsp" style="color: black;margin: 0px">专业方向</a></div>
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
           <img src="resources/img/front1.png">
        </div>
        <div class="card__face card__face--back">
            <h2 style="text-align: center">软件工程</h2>
            软件工程专业是2002年国家教育部新增专业，随
            着计算机应用领域的不断扩大及中国经济建设的
            不断发展，软件工程专业将成为一个新的热门专业
            。软件工程专业以计算机科学与技术学科为基础，
            强调软件开发的工程性，使学生在掌握计算机科学
            与技术方面知识和技能的基础上熟练掌握从事软件
            需求分析、软件设计、软件测试、软件维护和软件
            项目管理等工作所必需的基础知识、基本方法和基
            本技能，突出对学生专业知识和专业技能的培养，
            培养能够从事软件开发、测试、维护和软件项目管
            理的高级专门人才。
        </div>
    </div>

    <div class="card" >
        <div class="card__face card__face--front" style="margin-right:">
            <img src="resources/img/front2.png" />
        </div>
        <div class="card__face card__face--back">
            <h2 style="text-align: center">培养目标</h2>
            以满足国家经济建设和社会发展需求为导向，面向软
            件产业，以软件系统构思、设计、开发和运维的工程
            教育为办学特色，培养德智体等方面全面发展，信息
            素养和综合素质高，具有不懈探索精神、较强自主学
            习与创新能力的应用型软件工程专门人才。培养具有
            良好的社会公德和职业道德，具备基本的自然科学和
            人文社科素养，系统掌握软件工程的基本理论知识，
            具有成为软件工程师的能力与素质， 具备较强的实
            践能力、创新能力和团队合作能力，能够解决日趋复
            杂的工程问题， 具备持续成长的能力的人才。
        </div>
    </div>

    <div class="card" >
        <div class="card__face card__face--front" style="margin-right: 0px;margin-left: 0px">
            <img src="resources/img/front3.png" />
        </div>
        <div class="card__face card__face--back" style="margin-right:200px">
            <h2 style="text-align: center">学科地位</h2>
            软件工程学科是计算学科的分支，计算学科中理论、
            抽象、设计等三个学科形态，绑定、大问题的复杂
            性、概念和形式模型、一致性和完备性、效率、演
            化、抽象层次、按空间排序、按时间排序、重用、
            安全性、折衷与决策等十二个基本概念，数学方法、
            系统科学方法在软件工程学科中占有重要地位。此
            外，软件工程还十分重视管理过程，以提高软件产
            品的质量、降低开发成本、保证工程按时完成。系
            统性、规范性、可度量性也是软件工程非常关注的。
        </div>
    </div>

</div>
</body>
</html>
