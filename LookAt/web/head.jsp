<%--
  Created by IntelliJ IDEA.
  User: 38198
  Date: 2020/5/16
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="css/topandbottom.css" rel="stylesheet" type="text/css" />
    <title>Title</title>
</head>
<body>
<div class="top">
    <div class="top_content">
        <ul>
            <li><a href="#">联系我们</a></li>

            <li><a href="#" onclick="AddFavorite(window.location,document.title)">加入收藏</a></li>

            <li><a href="#" onclick="SetHome(window.location)"> 设为首页</a></li>
        </ul>
    </div>
</div><!-- top结束 -->
<div class="wrap">
    <div class="logo">
        <div class="logo_left">
            <img src="img/logo.png" />
        </div>
        <div class="logo_right">
            <img src="img/tel.jpg" alt="服务热线" />
            24小时服务热线：<span class="tel">123-456-7890</span>
        </div>
    </div><!-- logo结束 -->
    <div class="nav">
        <div class="nav_left"></div>
        <div class="nav_mid">
            <div class="nav_mid_left">
                <ul>
                    <li><a href="index.jsp">首页</a></li>
                    <li><a href="aboutUs.jsp">关于我们</a></li>
                    <li><a href="/articleServlet?name=&key=2">文章品鉴</a></li>
                    <li><a href="/MoviesServlet?method=find&name=">影视导读</a></li>
                </ul>
            </div>
            <div class="nav_mid_right">
                <form action="/FindServlet" method="post">
                    <input type="text" class="searchText" name="name" value="${sessionScope.name}" />
                    <input type="radio" name="type" value="article" checked="checked"/>&nbsp;&nbsp;文章&nbsp;
                    <input type="radio" name="type" value="movies" />&nbsp;&nbsp;电影&nbsp;
                </form>
            </div>
        </div><!-- navmid结束 -->
        <div class="nav_right">

        </div>
    </div><!-- nav结束 -->
</div>
</body>
</html>
