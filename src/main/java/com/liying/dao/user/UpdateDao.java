package com.liying.dao.user;

import java.sql.Connection;

public interface UpdateDao {
    //修改密码持久层
    public int updatePassword(Connection connection,String userCode,String newPassword);
}
