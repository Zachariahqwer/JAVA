package com.controller;

import com.po.Movies;
import com.service.IMoviesService;
import com.service.impl.MoviesServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/MoviesServlet")
public class MoviesServlet extends HttpServlet {


    IMoviesService moviesService = new MoviesServiceImpl();
    HttpSession session = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        List<Movies> movies = moviesService.findAllMovies(name);
        session = request.getSession();
        session.setAttribute("movies",movies);
        request.getRequestDispatcher("movies_list.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String method = request.getParameter("method");
        switch (method){
            case "detail":
                moviesDetail(request,response);
                break;
            case "find":
                findAllMovies(request,response);
                break;
        }

    }

    // 电影详情
    private void moviesDetail(HttpServletRequest request, HttpServletResponse response) {
        String idStr = request.getParameter("id");
        Integer id = Integer.parseInt(idStr);

        Movies movies = moviesService.getMoviesInfos(id);
        session = request.getSession();
        session.setAttribute("movies",movies);

        try {
            request.getRequestDispatcher("movies_detail.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // 查询电影
    private void findAllMovies(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        List<Movies> movies = moviesService.findAllMovies(name);
        session = request.getSession();
        session.setAttribute("movies",movies);
        try {
            request.getRequestDispatcher("movies_list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }


}
