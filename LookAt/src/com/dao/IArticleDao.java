package com.dao;

import com.po.Article;
import com.po.Movies;

import java.util.List;

public interface IArticleDao {

    public Article getArticleInfos(Integer id);
    public List<Article> findAllArticles(String name);
}
