package com.service;

import com.po.Movies;

import java.util.List;

public interface IMoviesService {

    public Movies getMoviesInfos(Integer id);

    public List<Movies> findAllMovies(String name);
}
