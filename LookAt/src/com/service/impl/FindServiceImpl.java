package com.service.impl;

import com.dao.IArticleDao;
import com.dao.IMoviesDao;
import com.dao.impl.ArticleDaoImpl;
import com.dao.impl.MoviesDaoImpl;
import com.service.IFindService;

import java.util.List;

/**
 * 业务层，查询文章，电影接口实现类
 */
public class FindServiceImpl implements IFindService {

    private IArticleDao articleDao = new ArticleDaoImpl();
    private IMoviesDao moviesDao = new MoviesDaoImpl();

    @Override
    public List<Object> find(String name, String type) {

        // 使用多态
        List<Object> object = null;

        switch (type){
            case "article":
                object = (List) articleDao.findAllArticles(name);
                break;
            case "movies":
                object = (List) moviesDao.findAllMovies(name);
                break;
        }

        return object;
    }
}
