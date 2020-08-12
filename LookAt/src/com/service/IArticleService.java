package com.service;

import com.po.Article;
import com.po.Movies;

import java.util.List;

public interface IArticleService {

    // 文章详情
    public Article getArticleInfos(Integer id);
    public List<Article> findAllArticles(String name);
}
