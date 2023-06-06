package com.liying.dao.show;

import java.sql.Connection;

public interface PetInsertDao {
    public int  insertPet(Connection connection,Object[] params);
}
