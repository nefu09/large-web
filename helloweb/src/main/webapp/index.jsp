<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<%--  <c:url var="base" value="${pageContext.request.contextPath}"></c:url>
  <base href="${pageContext.request.contextPath}">--%>
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
      background-image: url("resources/img/back5.png");
    }
    .header{
      display: flex;
      background-color: lightsteelblue;
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

    .header12{
      height: 40%;
      font-size: 40px;
      padding-left: 110px;
      margin-top: 20px;
      color: white;
    }

    a{
      text-decoration: none;
      color: white;
    }
    a:hover{
      color: black;
    }

    .lun{
      width: 500px;
      height: 400px;
      position: relative;
      margin-top:10px;
      margin-left: 45px;

    }
    .circle{
      width: 20px;
      height: 20px;
      box-sizing: border-box;
      opacity:0.5;
      line-height: 20px;
      text-align: center;
      border-radius: 20px;
      background-color: paleturquoise;
      z-index: 10;
      color: darkslateblue;
    }
    #circle1{
      position:absolute;
      right: 280px;
      bottom: 50px;
    }
    #circle2{
      position:absolute;
      right: 250px;
      bottom: 50px;
    }
    #circle3{
      position: absolute;
      right: 220px;
      bottom: 50px;

    }
    #circle4 {
      position: absolute;
      right: 190px;
      bottom: 50px;
    }
    .img{
      z-index:1;
      margin-left: 30px;
      margin-bottom: 40px;
      width:300px;
      height: 300px;
      position:absolute;
    }
    #img1{
      position:absolute;
      z-index:2;

    }
    .main3{
      width: 100%;
      height: 1500px;
      margin-top: 20px;
    }
    .material-icons{
      font-size: 60px;
      display: inline-block;
      color: cornflowerblue;
      margin-top: 20px;
    }

    .inform{
      display: flex;
      width: 100%;
      padding-top:15px;
      text-align: center;
    }
    .inform1 li{
      width:500px;
      margin-top: 0px;
      list-style: none;
    }
    .inform1 li a{
      color: darkcyan;
      font-size: 20px;
      font-family: "HP Simplified Light";
      overflow:hidden;
      text-overflow:ellipsis;
      display: block;
      white-space:nowrap;/* 不换行 */
      color: white;
    }
    .topLeft{
      margin-top: 130px;
      margin-left: 50px;
      width: 500px;
      height: 400px;
      position: relative;
    }
    .topLeft a{
      position:absolute;
    }
    .tu{
      width: 450px;
      height: 400px;
      margin-left: 100px;
      z-index: 1;
      border-radius: 10px;
    }
    .bottomLeft{
      margin-top: 20px;
      height: 500px;
      margin-left: 150px;
      width: 500px;
    }
    .news{
      width: 100%;
      height: 600px;
    }
    .newsMain{
      display: flex;
    }
    .topRight{
      margin-top: 50px;
      margin-left:280px;
    }
    .topRight li{
      background-size:10px;
      color:black;
      padding-left: 15px;
      list-style: none;
    }
    .topRight li a{
      color:black;
      transition: translate 1s;

    }
    .topRight li a:hover{
      transform: translate(0,-60px);
    }

    .bottomRight{
      width: 600px;
      height: 500px;
      display: flex;
      margin-left: 200px;
      margin-top: 20px;
    }
    .front{
      width:420px;
      height: 450px;
      margin-left: 80px;
      background-color: aliceblue;
      margin-top: 50px;
    }
    .footerUp {
      width: 100%;
      height: 300px;
      border: black 1px solid;
      margin-top: 20px;
      display: flex;
    }
    .up1{
      width: 300px;
      height: 250px;

      margin-left:110px;
      margin-top: 20px;
      position: relative;
      box-shadow:0px 0px 0px black;
    }

    .up2{
      width: 300px;
      height: 250px;

      margin-left: 200px;
      margin-top: 20px;
      position: relative;
      box-shadow:0px 0px 0px black;
    }
    .up3{
      width: 300px;
      height: 250px;

      margin-left: 200px;
      margin-top: 20px;
      position: relative;
      box-shadow:0px 0px 0px black;
    }
    .up1:hover{
      box-shadow: 10px 10px 10px #000;
    }
    .up2:hover{
      box-shadow: 10px 8px 8px #000;
    }
    .up3:hover{
      box-shadow: 8px 8px 8px #000;
    }
    .imgD{
      width: 300px;
      height: 250px;
    }
    .upp1{
      position: absolute;
      opacity: 0;
    }
    .upp2{
      position: absolute;
      opacity: 0;
    }
    .upp3{
      position: absolute;
      opacity: 0;
    }
    .aside{
      position: fixed;
      right:0px;
      top:170px;
      margin-right:5px;
      height: 600px;
      width: 90px;
      border-radius: 20%;
    }
    .biao{
      font-size: 30px;
      margin-bottom: 0px;
      margin-top: 0px;
      margin-left: 20px;

    }
    .footer{
      width: 100%;
      height: 120px;
      background-color: cadetblue;
    }
    .footer1{
      margin-left: 600px;
    }
    .footer2{
      margin-left: 600px;
      color: white;
      font-size: 20px;
      margin-top: 4px;
    }
    .head{
      width: 80%;
      height: 140px;
      display: flex;
      margin-top: 25px;
    }
    .head a{
      margin-left: 50px;
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
      width: 160px;
      text-align:center;
    }
    .item a{
      font-size: 20px;
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
    .header11{

      margin:10px 50px 10px 100px;
    }
    .header12{
      height: 40%;
      font-size: 40px;
      padding-left: 180px;
      color: white;
    }
  </style>
</head>
<body>
<div class="header">
  <div class="header1">
    <div class="header11"><img src="resources/img/logo.png"></div>
    <div class="header12">软件工程</div>
  </div>
  <div class="head">
    <div class="item" ><a href="index.jsp">首页</a></div>
    <div class="item" >
      <a href="majorintroduce.jsp" >专业介绍</a>
      <div class="show">
        <div class="item2"><a href="majorintroduce.jsp" style="color: white;margin: 0px">专业简介</a></div>
        <div class="item2"><a href="majordirection.jsp" style="color: white;margin: 0px">专业方向</a></div>
      </div>
    </div>

    <div class="item teacher" >
      <a href="professor.jsp" >教师队伍</a>
      <div class="show">
        <div class="item2"><a href="professor.jsp" style="color: white;margin: 0px">教授</a></div>
        <div class="item2"><a href="vice-professor.jsp" style="color: white;margin: 0px">副教授</a></div>
        <div class="item2"><a href="lecturer.jsp" style="color: white;margin: 0px">讲师</a></div>
      </div>
    </div>

    <div class="item" ><a href="employment.jsp">就业指南</a></div>
    <div class="item teacher" style="width: 250px;text-align: center" >
      <a href="laboratory925.jsp" >实验室</a>
      <div class="show" style="margin-left: 75px">
        <div class="item2"><a href="laboratory925.jsp" style="color: white;margin: 0px">925实验室</a></div>
        <div class="item2"><a href="laboratory923.jsp" style="color: white;margin: 0px">923实验室</a></div>
      </div>
    </div>
    <div class="item" ><a href="tologin">新闻管理</a></div>
  </div>
</div>

<div class="aside">
  <div style="height: 100px;border: 4px darkcyan solid;width:80px;background-color: darkcyan;"><a href="majorintroduce.jsp" style="font-size: 20px;color: white"><i class="material-icons biao">desktop_windows</i><br><h3 style="margin-top:0px;padding-left: 10px">专业介绍</h3></a></div>
  <div style="height: 100px;border: 4px darkcyan solid;width:80px;background-color: darkcyan;"><a href="professor.jsp" style="font-size: 20px;color: white"><i class="material-icons biao">pregnant_woman</i><br><h3 style="margin-top:0px;padding-left: 10px">教师队伍</h3></a></div>
  <div style="height: 100px;border: 4px darkcyan solid;width:80px;background-color: darkcyan;"><a href="employment.jsp" style="font-size: 20px;color: white"><i class="material-icons biao">rate_review</i><br><h3 style="margin-top:0px;padding-left: 10px">就业指南</h3></a></div>
  <div style="height: 100px;border: 4px darkcyan solid;width:80px;background-color: darkcyan;"><a href="laboratory925.jsp" style="font-size: 20px;color: white"><i class="material-icons biao">account_balance</i><br><h3 style="margin-top:0px;padding-left: 10px"><span style="text-align: center">实验 室</span></h3></a></div>
</div>

<div class="main3">


  <div class="news">

    <div style="display:flex;font-size: 40px;margin-left: 150px;width: 50%;">
    </div>
    <div ><hr style="width:1300px;margin-left: 150px;"></div>
    <div class="newsMain">
      <div class="topLeft">
        <div class="n" ><a href="https://github.com/bwhyman/web-course/" ><img id="img9" class="tu" src="resources/img/img1.jpg" alt="tu"></a> </div>
        <div class="n"><a href="https://www.iteye.com/resource/wbandzlhgod-3507838/" ><img id="img6" class="tu" src="resources/img/img2.jpg"  alt="tu"></a></div>
        <div class="n"><a href="https://www.baidu.com/" ><img id="img7" class="tu" src="resources/img/img3.jpg"  alt="tu"></a></div>
        <div class="n"><a href="http://chrome.taobaoremai.top/"><img id="img8" class="tu" src="resources/img/img5.jpg"  alt="tu"></a></div>
      </div>
      <div class="topRight">
        <div style="font-size: 50px;text-align: center;margin-right: 100px">
          东林新闻
        </div>
       <c:forEach items="${newslist}" var="news" varStatus="newssta">
       <div style="font-size: 20px;color: white">
         <br>
         <c:if test="${newssta.count<=7}" >
           <a href="news?id=${news.id}"  style="width:550px;display:flex;margin-left: 50px">${news.title}</a>
         </c:if>
       </div>
       </c:forEach>
        <br><br>
      </div>
    </div>

  </div>

  <div class="bottom" style="display: flex">
    <div class="bottomLeft">
      <div class="inform">
        <i class="material-icons" style="margin-top: 10px">notifications_active</i><h1 style="font-size: 40px;margin-top: 10px">通知公告</h1>
      </div>
      <hr style="width: 480px">
      <ul class="inform1">
        <c:forEach items="${newslist}" var="news" varStatus="newssta">
          <br>
          <c:if test="${newssta.count<=7}" >
            <li><a href="inform?id=${news.id}"  style="width: 600px">${news.date}|${news.title}</a></li>
          </c:if>
        </c:forEach>

      </ul>
    </div>
    <div class="bottomRight">

      <div class="front">
        <div style="display: flex">
          <i class="material-icons">person</i>
          <h1 style="margin-top: 20px;font-size: 40px">学术动态</h1>
        </div>
        <hr style="width: 350px">
        <div class="lun">
          <div id="circle1" class="circle">1</div>
          <div id="circle2" class="circle">2</div>
          <div id="circle3" class="circle">3</div>
          <div id="circle4" class="circle">4</div>
          <a href="https://www.nefu.edu.cn/info/1004/12768.htm"><img id="img1" class="img" src="resources/img/academic02.png"  alt="tu"></a>
          <a href="https://www.nefu.edu.cn/info/1004/12837.htm"><img id="img2" class="img" src="resources/img/academic01.png"  alt="tu"></a>
          <a href="https://www.nefu.edu.cn/info/1004/12795.htm"><img id="img3" class="img" src="resources/img/academic03.png"  alt="tu"></a>
          <a href="https://www.nefu.edu.cn/info/1004/12758.htm"><img id="img4" class="img" src="resources/img/academic04.png"  alt="tu"></a>
        </div>
      </div>
    </div>

  </div>
  <div class="footerUp">
    <div class="up1">
      <div class="upp1">
        <b>日前，由中国科学技术协会、科学技术
          部联合主办的第八届中国TRIZ杯大学生
          创新方法大赛落下帷幕，我校共23件作
          品从157所高校1300余项作品脱颖而出，
          获得特等奖1项，一等奖2项，二等奖6项
          ，三等奖13项，学校获得优秀组织奖。</b>
      </div>
      <img id="imgA" class="imgD" src="resources/img/foot1.png">

    </div>
    <div class="up2">
      <div class="upp2">
        <b>10月27日晚，学校在新体育馆举办抗疫
          精神主题讲座。全国卫生健康系统新冠
          肺炎疫情防控工作先进个人、全国优秀
          共产党员、黑龙江省第一批援鄂医疗队
          哈医大二院医疗队队长、哈尔滨医科大
          学附属第二医院重症医学科主任王洪亮
          教授做了题为《白袍加身 一场必胜的
          战役》的讲座。</b>
      </div>
      <img id="imgB" class="imgD" src="resources/img/foot2.png"  alt="tu">
    </div>
    <div class="up3">
      <div class="upp3">
        <b>第十届中国教育机器人大赛日前在广东省
          东莞市松山湖光大We谷隆重举行。经过两
          天激烈角逐，我校参赛学子获得全国一等
          奖2项、全国二等奖5项，全国三等奖3项
          的优异成绩。</b>
      </div>
      <img id="imgC" class="imgD" src="resources/img/foot3.png"  alt="tu">

    </div>
  </div>
</div>


<div class="footer">
  <img src="resources/img/logo.png" class="footer1"  alt="tu">
  <div class="footer2">信息与计算机工程学院软件工程</div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script>
  $(function () {
    $("#circle1").click(function () {
      $("#img1").css( "z-index",3)
      $("#img2").css( "z-index",1)
      $("#img3").css( "z-index",1)
      $("#img4").css( "z-index",1)
      $("#circle1").css("opacity",1)
      $("#circle2").css("opacity",0.5)
      $("#circle3").css("opacity",0.5)
      $("#circle4").css("opacity",0.5)
    }),
            $("#circle2").click(function () {
              $("#img1").css( "z-index",1)
              $("#img2").css( "z-index",3)
              $("#img3").css( "z-index",1)
              $("#img4").css( "z-index",1)
              $("#circle1").css("opacity",0.5)
              $("#circle2").css("opacity",1)
              $("#circle3").css("opacity",0.5)
              $("#circle4").css("opacity",0.5)
            }),
            $("#circle3").click(function () {
              $("#img1").css( "z-index",1)
              $("#img2").css( "z-index",1)
              $("#img3").css( "z-index",3)
              $("#img4").css( "z-index",1)
              $("#circle1").css("opacity",0.5)
              $("#circle2").css("opacity",0.5)
              $("#circle3").css("opacity",1)
              $("#circle4").css("opacity",0.5)
            }),
            $("#circle4").click(function () {
              $("#img1").css( "z-index",1)
              $("#img2").css( "z-index",1)
              $("#img3").css( "z-index",1)
              $("#img4").css( "z-index",3)
              $("#circle1").css("opacity",0.5)
              $("#circle2").css("opacity",0.5)
              $("#circle3").css("opacity",0.5)
              $("#circle4").css("opacity",1)
            })

    var lix = document.getElementsByClassName("n");
    var i = 3;
    self.setInterval(change,2500);
    function change() {
      i--;
      if(i>=0) {
        $(lix[i+1]).css("display","none");
        $(lix[i]).css("display","block");
      }
      else {
        $(lix[i+1]).css("display","none");
        i=3;
        $(lix[i]).css("display","block");
      }
    }


    $("toRight").hover(function big() {
      let k = document.getElementsByClassName("toRight").children.length;
    })

    $(".up1").hover(function () {
      $(".upp1").css("opacity",1)
      $("#imgA").css("opacity",0.5)
    },function () {
      $(".upp1").css("opacity",0)
      $("#imgA").css("opacity",1)
    })

    $(".up2").hover(function () {
      $("#imgB").css("opacity",0.5)
      $(".upp2").css("opacity",1)
    },function () {
      $(".upp2").css("opacity",0)
      $("#imgB").css("opacity",1)
    })

    $(".up3").hover(function () {
      $("#imgC").css("opacity",0.5)
      $(".upp3").css("opacity",1)
    },function () {
      $(".upp3").css("opacity",0)
      $("#imgC").css("opacity",1)
    })
  })

</script>
</body>
</html>

