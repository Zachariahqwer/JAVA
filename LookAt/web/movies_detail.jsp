<%--
  Created by IntelliJ IDEA.
  User: 38198
  Date: 2020/5/22
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影</title>
    <style type="text/css">
        .body{
            width: 1000px;
            margin: 0 auto;
            background-color: #ffeedd;
        }
        .title{
            text-align: center;
            font-size: 16px;
            margin-bottom: 10px;
            padding-top: 10px;
        }
        .title h3{
            font-size: 35px;
            margin-bottom: 10px;
        }
        .content{
            font-size: 20px;
            width: 800px;
            margin: 0 auto;
        }
        .content span{
            font-size: 20px;
        }
    </style>
</head>
<body>
<%@ include file="head.jsp" %>
    <div class="body">


        <div class="title">
            <h3>${sessionScope.movies.name}</h3>
            <span>主演：${sessionScope.movies.actor}</span><br>
            <span>日期：${sessionScope.movies.date}</span><br>
        </div>
        <div class="content">
            <span>简介：${sessionScope.movies.context}</span>
        </div>
        <div>
            <%--<iframe src=${sessionScope.movies.movie} scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true" width="1000px" height="500px"> </iframe>--%>
            <iframe width="1000px" height="500px" src="${sessionScope.movies.movie}" allowfullscreen="true" scrolling="no" border="0" frameborder="no" framespacing="0"></iframe>
        </div>
    </div>
<%@include file="bottom.jsp"%>
</body>
</html>
