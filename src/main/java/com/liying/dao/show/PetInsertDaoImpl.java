package com.liying.dao.show;

import com.liying.dao.BaseDao;
import com.liying.dao.user.UserPetQueryDao;
import com.liying.dao.user.UserPetQueryDaoImpl;
import com.liying.pojo.Pet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PetInsertDaoImpl implements PetInsertDao {
    @Override
    public int insertPet(Connection connection, Object[] params) {
        PreparedStatement preparedStatement=null;
        UserPetQueryDao userPetQueryDao = new UserPetQueryDaoImpl();
        Pet pet=userPetQueryDao.queryUserPet((String)params[(params.length-1)],connection);
        String sql="";
        if (pet != null) {
            sql="update pet set name=?,age=?,sterilizationCondition=?,spouse=? where author=?";

        }else {
            sql = "insert into pet(name,age,sterilizationCondition,spouse,author) values(?,?,?,?,?);";
        }
        int execute = 0;
        try {
            execute = BaseDao.execute(connection, sql, params, preparedStatement);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        BaseDao.closeResource(connection,preparedStatement,null);

        System.out.println(execute);
        return execute;
    }
}
