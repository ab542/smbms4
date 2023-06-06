package com.liying.service.user;

import com.liying.dao.BaseDao;
import com.liying.dao.user.UserPetQueryDao;
import com.liying.dao.user.UserPetQueryDaoImpl;
import com.liying.pojo.Pet;

import java.sql.Connection;

public class UserPetImpl  implements UserPet{
    @Override
    public Pet queryUserPet(String userCode) {
        Connection connection= BaseDao.getConnection();
        UserPetQueryDao userPetQueryDao = new UserPetQueryDaoImpl();
        Pet pet=userPetQueryDao.queryUserPet(userCode,connection);
        return pet;
    }
}
