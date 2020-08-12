package com.controller;

import com.po.Article;
import com.po.Movies;
import com.service.IArticleService;
import com.service.impl.ArticleServiceImpl;
import com.utils.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet("/articleServlet")
public class articleServlet extends HttpServlet {
    IArticleService articleService = new ArticleServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        switch (key){
            case "1":
                selectArticledetail(request,response);
                break;
            case "2":
                selectArticleInfo(request,response);

                break;
        }



    }

    private void selectArticledetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("id");
        Integer id = Integer.parseInt(idStr);
        Article article = articleService.getArticleInfos(id);
        HttpSession session = request.getSession();
        session.setAttribute("article",article);

        request.getRequestDispatcher("article_detail.jsp").forward(request,response);
    }

    private void selectArticleInfo(HttpServletRequest request, HttpServletResponse response) {

        String name = request.getParameter("name");
        List<Article> articles = articleService.findAllArticles(name);
        HttpSession session = request.getSession();
        session = request.getSession();
        session.setAttribute("articles",articles);
        try {
            request.getRequestDispatcher("article_list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
