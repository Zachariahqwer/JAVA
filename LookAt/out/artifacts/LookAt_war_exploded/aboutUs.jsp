<%--
  Created by IntelliJ IDEA.
  User: 伍佳琛
  Date: 2020/5/16
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于我们</title>
    <link href="css/we.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="head.jsp" %>
<div class="we_body">
        <div class="img">
            <img src="img/loko.png" width="550px" />
        </div>
        <div class="sp">
            <div class="sj_head"><span>Look at</span><br /><span>用行动开拓视野，诠释幸福生活！</span></div>
            <div class="sj-concent">
                <div class="sj">
                    <h3>设计开发理念：</h3>
                </div>
                <div class="sj_body">
                    <span>我们的初衷在于使用户通过电影海报，评分及剧情梗概更加了解电影，方便用户挑选自己所喜欢的电影以及让人们通过一些有趣，轻松的文章段落，去感受生活。力致于做到极简、智能、舒适。在书屋中，聆听音乐，看着一个个精彩文章，感受着其背后的温暖故事。在影视房中，找一部自己喜爱的电影，关上灯，享受着属于自己美好时光！</span>
                </div>
                <div class="sj">
                    <h3>设计开发思路：</h3>
                </div>
                <div class="sj_body">
                    <span>完成一个集影视导读与文学于一体的项目。该项目分Web网页和小程序两大部分。我们的初衷是为了更方便用户阅读和查找自己喜欢的电影类型。现时代的网络几乎全面普及到了用户，网页和小程序也被大面积的推广使用，我们本次开发的“看一下”项目采用的就是以Web网页为主，小程序为辅的设计模式。</span>
                </div>
            </div>
        </div>
        <h1 class="cy">小组列表</h1>
        <div style="width: auto;height: 1px; background-color: #8E8E8E;"></div>
        <div class="tuandui">
            <ul>
                <li>
                    <div class="xingxi">
                        <img src="img/touxiang5.bmp" width="50px" height="50px" />
                        <div class="xingxi2">
                            <text>黎万平</text>
                            <span>指导老师，人工智能学院</span>
                        </div>
                    </div>
                    <div class="xingxi">
                        <img src="img/touxiang.jpg" width="50px" height="50px" />
                        <div class="xingxi2">
                            <text>伍佳琛</text>
                            <span>项目主持人，人工智能学院电信本二班</span>
                        </div>
                    </div>
                    <div class="xingxi">
                        <img src="img/touxiang2.bmp" width="50px" height="50px" />
                        <div class="xingxi2">
                            <text>陈玉琳</text>
                            <span>项目成员，人工智能学院电信本二班</span>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="xingxi">
                        <img src="img/touxiang3.jpg" width="50px" height="50px" />
                        <div class="xingxi2">
                            <text>张运浩</text>
                            <span>项目成员，人工智能学院电信本二班</span>
                        </div>
                    </div>
                    <div class="xingxi">
                        <img src="img/touxiang4.jpg" width="50px" height="50px" />
                        <div class="xingxi2">
                            <text>段锦锦</text>
                            <span>项目成员，人工智能学院电信本二班</span>
                        </div>
                    </div>
                    <div class="xingxi">
                        <img src="img/touxiang6.jpg" width="50px" height="50px" />
                        <div class="xingxi2">
                            <text>汤紫琪</text>
                            <span>项目成员，人工智能学院通信本二班</span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div style="height: 20px;"></div>
    </div>
<%@include file="bottom.jsp"%>
</body>
</html>
