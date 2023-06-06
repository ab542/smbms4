package com.liying.dao.user;

import java.sql.Connection;
import java.sql.SQLException;

public interface RegisterDao {
    //插入用户的注册信息
    public int  register(Connection connection,String userCode, String userPassword, String phone) throws SQLException;
}
