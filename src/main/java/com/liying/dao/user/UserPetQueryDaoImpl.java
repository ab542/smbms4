package com.liying.dao.user;

import com.liying.dao.BaseDao;
import com.liying.pojo.Pet;
import com.liying.pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserPetQueryDaoImpl implements UserPetQueryDao {
    @Override
    public Pet queryUserPet(String userCode, Connection connection) {
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        Pet pet=null;
        if(connection!=null) {
            String sql = "select * from pet where author=?";
            Object[] params = {userCode};
            try {
                resultSet = BaseDao.execute(connection, sql, params, preparedStatement, resultSet);
                if(resultSet.next()) {
                    pet = new Pet();
                    pet.setId(resultSet.getInt("id"));
                    pet.setName(resultSet.getString("name"));
                    pet.setAge(resultSet.getString("age"));
                    pet.setSterilizationCondition(resultSet.getString("sterilizationCondition"));
                    pet.setSpouse(resultSet.getString("spouse"));
                }
                BaseDao.closeResource(null,preparedStatement,resultSet);

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
        return pet;

    }
}
