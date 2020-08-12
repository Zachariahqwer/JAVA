<%--
  Created by IntelliJ IDEA.
  User: 伍佳琛
  Date: 2020/5/16
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--使用标签库--%>
<html>
  <head>
    <title>LookAt主页</title>
    <link href="css/index.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="js/myfocus-2.0.1.min.js"></script>
    <script type="text/javascript" src="js/mf-pattern/mF_YSlider.js"></script>
    <link href="js/mf-pattern/mF_YSlider.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        myFocus.set({
            id: 'boxID',
            pattern: 'mF_YSlider',
            time: 3, //切换时间间隔(秒)
            trigger: 'click', //触发切换模式:'click'(点击)/'mouseover'(悬停)
            width: 1000, //设置图片区域宽度(像素)
            height: 310, //设置图片区域高度(像素)
            txtHeight: 0, //文字层高度设置(像素),'default'为默认高度，0为隐藏
            loadIMGTimeout: "0"
        });
    </script>
  </head>
  <body>
    <div class="top">
      <div class="top_content">
        <ul>


          <c:choose>
            <c:when test="${not empty sessionScope.user.name}">
              <li><a href="login2.jsp">${sessionScope.user.name}</a></li>
            </c:when>
            <c:otherwise>
              <li><a href="login2.jsp">账号登录</a></li>
            </c:otherwise>
          </c:choose>

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
              <li><a href="#" style="color: #ff0;">首页</a></li>
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
      <div class="ad">
        <div id="boxID">
          <div class="loading"><img src="images/loading.gif" alt="请稍候..." /></div>
          <div class="pic">
            <ul>
              <li><a href="/MoviesServlet?method=detail&id=1"><img src="img/top1.jpg" style="width: 1000px; height: 310px" /></a></li>
              <li><a href="/MoviesServlet?method=detail&id=11"><img src="img/top2.jpg"  style="width: 1000px;height: 310px"/></a></li>
              <li><a href="/MoviesServlet?method=detail&id=24"><img src="img/top3.jpg" style="width: 1000px;height: 310px"/></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main">
        <div class="news">
          <div class="title">
            <h2 class="title_left">文章品鉴</h2><span class="title_right"><a href="newlist.html">More&gt;&gt;</a></span>
          </div>
          <div class="pic-new">
            <img src="img/book3.bmp" width="200px" height="100px"/>
            <h2><a href="/articleServlet?id=3&key=1">中国自然资源报</a></h2>
            <p>珠峰大本营，与星空来一次唯美的约会<br />
              <a href="/articleServlet?id = 3&key=1">Learn More&gt;&gt;</a></p>
          </div>
          <br />
          <div class="news-list">
            <ul>
              <li><span>2020-03-22</span><a href="/articleServlet?id=1&key=1">亲爱的狐狸女孩</a></li>
              <li><span>2020-03-22</span><a href="/articleServlet?id=2&key=1">言论自由不是网络暴力的保护伞</a></li>
              <li><span>2020-03-22</span><a href="/articleServlet?id=4&key=1">吃在湖北</a></li>
            </ul>
          </div>
        </div>
        <div class="course">
          <div class="title">
            <h2 class="title_left">影视导读</h2><span class="title_right"><a href="/MoviesServlet?method=find&name=">More&gt;&gt;</a></span>
          </div>
          <div class="course_pic">
            <img src="img/dianyingtu.jpg" width="200px" height="100px"/>
            <h2><a href="/MoviesServlet?method=detail&id=2">新喜剧之王</a></h2>
            <p>
              一直有个明星梦的小镇大龄女青年如梦跑龙套多年未果。她和父亲关系紧张，亲友都劝她放弃，只有男友查理还支持她。在剧组...
            </p>
            <div class="course_type">
              <ul>
                <li><span></span><a href="/MoviesServlet?method=detail&id=4">最佳男友进化论</a></li>
                <li><span></span><a href="/MoviesServlet?method=detail&id=3">钢铁飞龙之奥特曼崛起</a></li>
                <li><span></span><a href="/MoviesServlet?method=detail&id=5">祖宗十九代</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="siderbar">
          <div class="video">
            <div class="title">
              <h2 class="title_left">媒体聚焦</h2>
            </div>
            <div class="video_content">
              <!-- <iframe height=140 width=220 src='https://player.youku.com/embed/XNDU4OTM3NzM0NA==' frameborder=0 'allowfullscreen'></iframe> -->
              <%--<video id="my_video_1" class="video-js vjs-default-skin" controls preload="auto" width="220" height="140" poster="video-js/my_video_poster.png"--%>
                     <%--data-setup="{}">--%>

              <%--</video>--%>
              <iframe width="220" height="140" src="https://player.youku.com/embed/XMzI0NzMxMjcxMg==" allowfullscreen="true"></iframe>

              <!-- <embed src="https://player.youku.com/embed/XNDU4OTM3NzM0NA==" allowfullscreen="true" quality="hight" height="140" width="220" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed> -->
            </div>
          </div>
          <div class="siderbar_ad">
            <a href="/MoviesServlet?id=6">
               <img src="img/dianyingtu2.png" width="229" height="53">
            </a>
          </div>
        </div>
      </div> <!-- main结束 -->
    </div><!-- wrap结束 -->
    <%@include file="bottom.jsp"%>
  </body>
</html>
