package com.dao.impl;

import com.dao.IMoviesDao;
import com.po.Movies;
import com.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MoviesDaoImpl implements IMoviesDao {

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    // 根据id查询电影
    @Override
    public Movies getMoviesInfos(Integer id) {

        connection = JDBCTools.getconnection();
        Movies movies = null;
        String sql = "select * from movie where id = ?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                movies = new Movies(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getDate(5),
                        resultSet.getString(6)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return movies;
    }

    // 查询电影列表
    @Override
    public List<Movies> findAllMovies(String name) {

        StringBuffer sb = new StringBuffer();
        connection = JDBCTools.getconnection();

        System.out.println(name);
        if (name == ""){
            String sql = "select * from movie";
            try {
                preparedStatement = connection.prepareStatement(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        else {
            sb.append(
                    "select * from movie"
            );
            System.out.println(name);
            if (name != null && !"".equals(name)){
                sb.append("  where name like ?");
            }
            try {
                preparedStatement = connection.prepareStatement(sb.toString());
                preparedStatement.setString(1,"%" + name + "%");
                System.out.println(sb.toString());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        List<Movies> movies = new ArrayList<>();
        try {
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                movies.add(
                        new Movies(
                                resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getString(3),
                                resultSet.getString(4),
                                resultSet.getDate(5),
                                resultSet.getString(6)
                        )
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection,preparedStatement,resultSet);
        }
        return movies;
    }
}
