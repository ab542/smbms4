package com.liying.service.user;

import com.liying.dao.BaseDao;
import com.liying.dao.user.RegisterDao;
import com.liying.dao.user.RegisterDaoImpl;

import java.sql.Connection;
import java.sql.SQLException;

public class UserRegisterServiceImpl implements UserRegisterService {
    private RegisterDao registerDao;
    public UserRegisterServiceImpl(){
        registerDao=new RegisterDaoImpl();
    }
    @Override
    public boolean register( String userCode, String userPassword, String phone) {
        boolean flag=true;
        Connection connection=null;
        try {
            connection= BaseDao.getConnection();
            int register = registerDao.register(connection, userCode, userPassword, phone);
            if(register>=1){
                flag=true;
                System.out.println(flag);
            }else{
                flag=false;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return flag;
    }
}
