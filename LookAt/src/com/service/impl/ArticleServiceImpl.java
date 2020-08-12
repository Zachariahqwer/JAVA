package com.service.impl;

import com.dao.IArticleDao;
import com.dao.impl.ArticleDaoImpl;
import com.po.Article;
import com.po.Movies;
import com.service.IArticleService;

import java.util.List;

public class ArticleServiceImpl implements IArticleService {

    IArticleDao articleDao = new ArticleDaoImpl();

    @Override
    public Article getArticleInfos(Integer id) {
        return articleDao.getArticleInfos(id);
}

    @Override
    public List<Article> findAllArticles(String name){
        return articleDao.findAllArticles(name);
    }

}
