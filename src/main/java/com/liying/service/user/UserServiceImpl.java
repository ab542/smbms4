package com.liying.service.user;

import com.liying.dao.BaseDao;
import com.liying.dao.user.UserDao;
import com.liying.dao.user.UserDaoImpl;
import com.liying.pojo.User;

import java.sql.Connection;
import java.sql.SQLException;

public class UserServiceImpl implements UserService{
    //业务层都会调用dao层 所以我们要引入Dao层
    private UserDao userDao;
    public UserServiceImpl(){
        userDao=new UserDaoImpl();
    }

    @Override
    public User login(String userCode, String password) {
        Connection connection=null;
        User loginUser=null;
        try {
            connection = BaseDao.getConnection();
            loginUser = userDao.getLoginUser(connection,userCode);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            BaseDao.closeResource(connection,null,null);
        }
        if(loginUser!=null) {
            if (password.equals(loginUser.getUserPassword())) {

            } else {
               loginUser=null;
            }
        }
        return loginUser;
    }

}
