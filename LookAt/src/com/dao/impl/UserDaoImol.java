package com.dao.impl;

import com.dao.IUserDao;
import com.po.User;
import com.utils.C3P0Utils;
import com.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 持久层用户接口实现类
 */
public class UserDaoImol implements IUserDao {


    // 注册用户信息
    @Override
    public int insertUserInfo(User user) {

        QueryRunner queryRunner = C3P0Utils.getQueryRunner();
        int rows = 0;
        String sql = "insert into zhuce_user values (null,?,?,?)";
        try {
            rows = queryRunner.update(sql,user.getUsername(),user.getPassword(),user.getName());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows;
    }
    @Override
    public User login(String username,String password){
        User user = null;
        // 连接数据库
        Connection connection = JDBCTools.getconnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            String sql = "select * from zhuce_user where username = ? and password = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                user = new User(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection,preparedStatement,resultSet);
        }
        return user;
    }
}
