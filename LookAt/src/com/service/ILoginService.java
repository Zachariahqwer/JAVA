package com.service;

import com.po.User;

/**
 * 服务层，用户接口类
 */
public interface ILoginService {

    // 注册用户信息
    public int insertUserinfo(User user);
    public User login(String username, String password);
}
