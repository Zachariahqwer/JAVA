<%--
  Created by IntelliJ IDEA.
  User: 伍佳琛
  Date: 2020/5/21
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>文章详情</title>
    <%--<link href="css/read_simple.css" rel="stylesheet" type="text/css"/>--%>
    <style type="text/css">
        .body{
            width: 1000px;
            margin: 0 auto;
            background-color: #ffeedd;
        }
        .title{
            text-align: center;
            font-size: 16px;
            margin-bottom: 30px;
            padding-top: 10px;
        }
        .title h2{
            font-size: 35px;
            margin-bottom: 10px;
        }
        .content{
            font-size: 20px;
            width: 800px;
            margin: 0 auto;
        }
        .content p{
            font-size: 20px;
            text-indent:2em;
        }
        .c{
            float: right;
        }
    </style>
</head>
<script type="text/javascript">


    function color1()  {
        var index=document.getElementById("change").selectedIndex;
        var bg = document.getElementById("body");
        switch(index){
            case 1:
                bg.style.backgroundColor = "#ffe66f";
                break;
            case 2:
                bg.style.backgroundColor = "#deffac";
                break;
            case 3:
                bg.style.backgroundColor = "#acd6ff";
                break;
            case 4:
                bg.style.backgroundColor = "#bbffff";
                break;
            case 5:
                bg.style.backgroundColor = "#ffb5b5";
                break;
        }

    }

    function text1() {
        var index = document.getElementById("change2").selectedIndex;
        var text = document.getElementById("content");
        var text2 = text.getElementsByTagName("p");
        switch (index) {
            case 1:
                text.style.fontSize = 16;
                for(var i=0;i<text2.length;i++)
                {text2[i].style.fontSize = 16;}
                break;
            case 2:
                text.style.fontSize = 18;
                for(var i=0;i<text2.length;i++)
                {text2[i].style.fontSize = 18;}
                break;
            case 3:
                text.style.fontSize = 20;
                for(var i=0;i<text2.length;i++)
                {text2[i].style.fontSize = 20;}
                break;
            case 4:
                text.style.fontSize = 22;
                for(var i=0;i<text2.length;i++)
                {text2[i].style.fontSize = 22;}
                break;
            case 5:
                text.style.fontSize = 24;
                for(var i=0;i<text2.length;i++)
                {text2[i].style.fontSize = 24;}
                break;
        }
    }
</script>
<body>
    <%@ include file="head.jsp" %>
    <div class="body" id="body">
        <audio controls height="100" width="100">
            <source src="music/${sessionScope.article.music}" type="audio/mpeg">
        </audio>
        <div class="c">
            <span>更换颜色：</span>
            <select onclick="color1()" id="change">
                <option></option>
                <option style="background-color: #ffe66f;">
                    <span>#ffe66f</span>
                </option>
                <option style="background-color: #deffac;">
                    <span>#deffac</span>
                </option>
                <option style="background-color: #acd6ff;">
                    <span>#acd6ff</span>
                </option>
                <option style="background-color: #bbffff;">
                    <span>#bbffff</span>
                </option>
                <option style="background-color: #ffb5b5;">
                    <span>#ffb5b5</span>
                </option>
            </select>
            <span>字体大小：</span>
            <select onclick="text1()" id="change2">
                <option></option>
                <option>
                    <span>16</span>
                </option>
                <option>
                    <span>18</span>
                </option>
                <option>
                    <span>20</span>
                </option>
                <option>
                    <span>22</span>
                </option>
                <option>
                    <span>24</span>
                </option>
            </select>
        </div>
        <div class="title">
            <h2>
                ${sessionScope.article.title}
            </h2>
            <span>${sessionScope.article.author}</span></br>
            <span>${sessionScope.article.date}</span>
        </div>
        <div class="content" id="content">
              ${sessionScope.article.content}
        </div>
    </div>
    <%@include file="bottom.jsp"%>
</body>

</html>
