package com.controller;

import com.po.Article;
import com.po.Movies;
import com.service.IFindService;
import com.service.impl.FindServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * 查询文章或者电影  表现层
 */
@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {

    private IFindService findService = new FindServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String type = request.getParameter("type");
        HttpSession session = request.getSession();
        session.setAttribute("name",name);
        // 使用多态
        List<Object> object = findService.find(name,type);
        switch (type){
            case "article":
                List<Article> articles = (List) object;
                session.setAttribute("articles",articles);
                request.getRequestDispatcher("article_list.jsp").forward(request,response);
                break;
            case "movies":
                List<Movies> movies = (List)object;
                session.setAttribute("movies",movies);
                request.getRequestDispatcher("movies_list.jsp").forward(request,response);
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
