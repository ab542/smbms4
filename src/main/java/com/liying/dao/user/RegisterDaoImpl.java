package com.liying.dao.user;

import com.liying.dao.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDaoImpl implements RegisterDao {

    @Override
    public int register(Connection connection, String userCode, String userPassword, String phone) throws SQLException {

        PreparedStatement preparedStatement=null;
        String sql="insert into pet_user(userCode,userPassword,phone) values(?,?,?);";
        Object[] params={userCode,userPassword,phone};
        int execute = BaseDao.execute(connection, sql, params, preparedStatement);
        System.out.println(execute);
        BaseDao.closeResource(connection,preparedStatement,null);

        return execute;
    }
}
