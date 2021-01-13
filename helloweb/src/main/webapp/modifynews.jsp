<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <title>Title</title>
</head>
<body>
<div class="content">
    <form action="alter" method="post">
        <c:forEach items="${newsmodify}" var="first">
    <input type="text" name="id" style="width: 400px;height: 30px;margin-left: 200px;margin-top: 50px" value="${first.id}" hidden >
        <input type="text" name="title" style="width: 400px;height: 30px;margin-left:500px;margin-top: 50px" value="${first.title}">
        <br>
            <textarea name="content" style="width: 400px;height: 400px;margin-left: 500px;margin-top: 50px" >${first.content}</textarea>
            <br>
        <input type="text" name="date" style="width: 400px;height: 30px;margin-left: 500px;margin-top: 50px" value="${first.date}">

        </c:forEach>
        <input type="submit">
    </form>
</div>
</body>
</html>
