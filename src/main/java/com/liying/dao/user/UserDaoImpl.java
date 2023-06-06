package com.liying.dao.user;

import com.liying.pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.liying.dao.BaseDao;

public class UserDaoImpl implements UserDao{
    //得到要登录的用户
    @Override
    public User getLoginUser(Connection connection, String userCode) throws SQLException {
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        User user=null;
        if(connection!=null) {
            String sql = "select * from pet_user where userCode=?";
            Object[] params = {userCode};
                resultSet = BaseDao.execute(connection, sql, params, preparedStatement, resultSet);

                if(resultSet.next()) {
                    user = new User();
                    user.setId(resultSet.getInt("id"));
                    user.setUserCode(resultSet.getString("userCode"));
                    user.setUserName(resultSet.getString("userName"));
                    user.setUserPassword(resultSet.getString("userPassword"));
                    user.setPhone(resultSet.getString("phone"));
                }
                BaseDao.closeResource(null,preparedStatement,resultSet);
        }
        return user;
    }
}
