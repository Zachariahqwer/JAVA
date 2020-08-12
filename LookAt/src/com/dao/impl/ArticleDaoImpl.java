package com.dao.impl;

import com.dao.IArticleDao;
import com.po.Article;
import com.po.Movies;
import com.utils.JDBCTools;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.utils.C3P0Utils.queryRunner;

public class ArticleDaoImpl implements IArticleDao {
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    @Override
    public Article getArticleInfos(Integer id) {
        Connection connection = JDBCTools.getconnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Article article = null;
        String sql = "select * from article where id = ?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                article = new Article(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDate(4),
                        resultSet.getString(5),
                        resultSet.getString(6)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return article;
    }
    @Override
    public List<Article> findAllArticles(String name){
        StringBuffer sb = new StringBuffer();
        connection = JDBCTools.getconnection();

        if (name == ""){
            String sql = "select * from article";
            try {
                preparedStatement = connection.prepareStatement(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        else {
            sb.append(
                    "select * from article"
            );
            if (name != null && !"".equals(name)){
                sb.append("  where title like ?");
            }
            try {
                preparedStatement = connection.prepareStatement(sb.toString());
                preparedStatement.setString(1,"%" + name + "%");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        List<Article> articles = new ArrayList<>();
        try {
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                articles.add(
                        new Article(
                                resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getString(3),
                                resultSet.getDate(4),
                                resultSet.getString(5),
                                resultSet.getString(6)
                        )
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection,preparedStatement,resultSet);
        }
        return articles;
    }


}
