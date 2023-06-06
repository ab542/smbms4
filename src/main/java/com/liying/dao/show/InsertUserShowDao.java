package com.liying.dao.show;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface InsertUserShowDao {
    public void insertShow(Connection connection, List values, List fileAddress) throws SQLException;

}
