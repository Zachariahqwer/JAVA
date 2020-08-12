package com.service.impl;

import com.dao.IMoviesDao;
import com.dao.impl.MoviesDaoImpl;
import com.po.Movies;
import com.service.IMoviesService;

import java.util.List;

public class MoviesServiceImpl implements IMoviesService {

    IMoviesDao moviesDao = new MoviesDaoImpl();

    @Override
    public Movies getMoviesInfos(Integer id) {
        return moviesDao.getMoviesInfos(id);
    }

    @Override
    public List<Movies> findAllMovies(String name) {
        return moviesDao.findAllMovies(name);
    }
}
