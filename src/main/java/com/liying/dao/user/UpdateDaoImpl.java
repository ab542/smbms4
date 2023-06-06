package com.liying.dao.user;

import com.liying.dao.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateDaoImpl implements UpdateDao {
    @Override
    public int updatePassword(Connection connection,String userCode,String newPassword) {
        int execute=0;
        PreparedStatement preparedStatement=null;
        String sql="update pet_user set userPassword=? where userCode=? ";
        Object[] params={newPassword,userCode};
        try {
             execute = BaseDao.execute(connection, sql, params, preparedStatement);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        BaseDao.closeResource(connection,preparedStatement,null);

        return execute;
    }
}
