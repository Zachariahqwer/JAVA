<%--
  Created by IntelliJ IDEA.
  User: 38198
  Date: 2020/5/25
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--使用标签库--%>
<html>
<head>
    <title>影视列表</title>
    <style type="text/css">
        .body{
            width: 1000px;
            margin: 0 auto;
            background-color: #ffeedd;
        }
        .body li{
            list-style-type: none;
            height: 50px;
            border: 1px solid #e8e8e8;
        }
        .body span{
            margin-left: 10px;
            line-height: 50px;
            font-size: 20px;
            font-family: 黑体;
        }
        .zhuyan{
            color: #8e8e8e;
            float: right;
            font-size: 16px;
            margin-right: 10px;
        }
        .body a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<%@ include file="head.jsp" %>
<div class="body">
    <ul>
        <c:forEach items="${movies}" var="movie">

            <a href="/MoviesServlet?method=detail&id=${movie.id}"><li><span>${movie.name}</span><span class="zhuyan">主演：${movie.actor}</span></li></a>

        </c:forEach>
    </ul>

</div>
<%@include file="bottom.jsp"%>
</body>
</html>
