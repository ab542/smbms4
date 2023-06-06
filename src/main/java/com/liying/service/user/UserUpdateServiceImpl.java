package com.liying.service.user;

import com.liying.dao.BaseDao;
import com.liying.dao.user.UpdateDao;
import com.liying.dao.user.UpdateDaoImpl;

import java.sql.Connection;

public class UserUpdateServiceImpl implements UserUpdateService{
    private UpdateDao updateDao;
    public UserUpdateServiceImpl(){
        updateDao=new UpdateDaoImpl();
    }
    @Override
    public boolean updatePassword(String userCode, String newPassword) {
        boolean flag=true;
        Connection connection =null;
            connection= BaseDao.getConnection();
            int updatePassword1 = updateDao.updatePassword(connection,userCode,newPassword);
            if(updatePassword1>=1){
                flag=true;
                System.out.println("修改密码成功");
            }else{
                flag=false;
                System.out.println("修改密码失败");
            }



        return flag;
    }
}
