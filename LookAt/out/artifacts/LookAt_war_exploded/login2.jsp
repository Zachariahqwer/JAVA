<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/20
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>LookAt登录页面</title>
    <link rel="stylesheet" href="css/bootstrap2.min.css" />
    <link rel="stylesheet" href="css/login.css" />
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>Login with your account</h1>
        <p>Simple is beautiful!</p>
    </div>
    <div class="content">
        <ul class="nav nav-tabs header-btn">
            <li class="navigation-link li-active" id="li-1" onclick="toggle('#login-form');">登录</li>
            <li class="navigation-link" id="li-2" onclick="toggle('#register-form');">注册</li>
        </ul>
        <div class="page-wrapper">
            <div class="form-div current" id="login-form">
                <form  action="/LoginServlet" method="post" name="loginForm" class="form-horizontal" id="loginForm">
                    <div class="form-group logindiv">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <input type="text" name="userName" class="form-control loginname" id="loginname" placeholder="Username">
                    </div>
                    <div class="form-group pwddiv">
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                        <input type="password" name="password" class="form-control loginpassword" id="password" placeholder="Password">
                    </div>

                    <div class="form-group">

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="saveid" onclick="savePaw();">记住密码
                            </label>
                        </div>

                    </div>

                    <div class="form-group">
                        <input type="hidden" name="key"  value="2">
                        <button type="submit" class="btn btn-default login_btn" >
                            <span class="glyphicon glyphicon glyphicon-log-in" aria-hidden="true"></span>
                        </button>

                    </div>
                    <!-- 从过滤器中获取被拦截前的请求地址 -->

                    <input type="hidden" name="requestPath" value="${requestScope.requestPath }">
                </form>
            </div>
            <!-- 注册表单 -->
            <div class="form-div" id="register-form">
                <form  action="/LoginServlet" method="post" name="registerForm" id="registerForm">
                    <div class="form-group">
                        <label for="registerUsername">名字</label>
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <input type="text" name="name" class="form-control registerUsername" placeholder="Username">
                    </div>
                    <div class="form-group">
                        <label for="registerUsername">用户名</label>
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <input type="text" name="username" class="form-control registerUsername" id="registerUsername" placeholder="Username">
                    </div>
                    <div class="form-group">
                        <label for="registerPassword">密码</label>
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                        <input type="password" name="password" class="form-control registerPassword" id="registerPassword" placeholder="Password">
                    </div>

                    <div class="form-group">
                        <label for="registerPassword">确认密码</label>
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                        <input type="password" name="user_pwd" class="form-control registerPassword2" id="registerPassword2" placeholder="Password">
                    </div>


                    <div class="form-group">
                        <input type="hidden" name="key"  value="1">
                        <input type="submit" class="btn btn-default submit_btn" >注册</input>
                    </div>
                </form>
            </div>



        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/login.ajax.js"></script>
<script src="js/bootstrap2.min.js"></script>
<script src="js/camera.min.js"></script>
<script src="js/jquery.tips.js"></script>
<script src="js/jquery.cookie.js"></script>
</body>
</html>
