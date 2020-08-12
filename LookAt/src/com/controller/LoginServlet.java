package com.controller;

import com.po.User;
import com.service.ILoginService;
import com.service.ILoginService;
import com.service.impl.LoginServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.System.out;

/**
 * 控制层，与服务层，表现层交互
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    ILoginService loginService = new LoginServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String key = request.getParameter("key");
        switch (key) {
            case "1":
                zhuce(request,response);
                break;
            case "2":
               denglu(request,response);
                break;
        }

        

    }

    private void denglu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User user = loginService.login(userName,password);
        if (user != null){
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            response.sendRedirect("index.jsp");

        }else {

            response.sendRedirect("wrong.jsp");

        }
    }

    private void zhuce(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String user_pwd = request.getParameter("user_pwd");
        if(password.equals(user_pwd)){
            User user = new User(null,username,password,name);
            loginService.insertUserinfo(user);
            response.sendRedirect("login2.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
