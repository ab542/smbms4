package com.liying.service.user;

import com.liying.pojo.User;

public interface UserService {
    //用户登录 判断是否登录成功
    public User login(String userCode, String password);
}
