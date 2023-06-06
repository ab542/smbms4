package com.liying.dao.user;

import com.liying.pojo.Pet;

import java.sql.Connection;

public interface UserPetQueryDao {
    public Pet queryUserPet(String userCode, Connection connection);
}
