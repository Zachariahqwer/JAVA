package com.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 原始JDBC工具类
 */
public class JDBCTools {

    private static DataSource dataSource;
    static {
        dataSource = new ComboPooledDataSource("Look");
    }

    // 连接数据库方法
    public static Connection getconnection(){

        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
    // 释放资源的方法
    public static void release(Connection connection, Statement statement, ResultSet resultSet){


        try {
            if(connection != null) {
                connection.close();
            }
            if (statement != null){
                statement.close();
            }
            if (resultSet != null){
                resultSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//     测试
    public static void main(String[] args) {
        System.out.println(JDBCTools.getconnection());
    }
}
