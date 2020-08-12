package com.service.impl;

import com.dao.IUserDao;
import com.dao.impl.UserDaoImol;
import com.po.User;
import com.service.ILoginService;

/**
 * 服务层，实现用户接口类
 */
public class LoginServiceImpl implements ILoginService {

    IUserDao userDao = new UserDaoImol();

    // 注册用户信息
    @Override
    public int insertUserinfo(User user) {
        return userDao.insertUserInfo(user);
    }
    @Override
    public User login(String username, String password) {
        return userDao.login(username,password);
    }
}
