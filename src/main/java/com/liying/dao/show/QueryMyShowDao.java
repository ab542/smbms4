package com.liying.dao.show;

import com.liying.pojo.UserShow;

import java.sql.Connection;
import java.util.LinkedList;

public interface QueryMyShowDao {
    public LinkedList<UserShow> queryMyShow1(Connection connection, String userCode);
}
