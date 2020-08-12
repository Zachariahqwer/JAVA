<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 伍佳琛
  Date: 2020/5/24
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章列表</title>
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
        <c:forEach items="${articles}" var="aticle">

            <a href="/articleServlet?id=${aticle.id}&key=1"><li><span>${aticle.title}</span><span class="zhuyan">日期：${aticle.date}</span></li></a>

        </c:forEach>
    </ul>

</div>
<%@include file="bottom.jsp"%>
</body>
</html>
