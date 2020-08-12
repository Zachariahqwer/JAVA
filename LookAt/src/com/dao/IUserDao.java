package com.dao;

import com.po.User;

/**
 * 持久层接口类，与数据库交互
 */
public interface IUserDao {

    // 注册用户信息
    public int insertUserInfo(User user);
    public User login(String username,String password);
}
