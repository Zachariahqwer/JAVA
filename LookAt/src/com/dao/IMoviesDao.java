package com.dao;

import com.po.Movies;

import java.util.List;

public interface IMoviesDao {

    public Movies getMoviesInfos(Integer id);

    public List<Movies> findAllMovies(String name);
}
