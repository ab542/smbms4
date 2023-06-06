package com.liying.service.show;

import com.liying.dao.BaseDao;
import com.liying.dao.show.InsertUserShowDao;
import com.liying.dao.show.InsertUserShowDaoImpl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class ToInsertUserShowImpl implements ToInsertUserShow {
    @Override
    public void insertUserShow(List values, List fileAddress) throws SQLException {
        Connection connection = BaseDao.getConnection();
        InsertUserShowDao insertUserShow = new InsertUserShowDaoImpl();
        insertUserShow.insertShow(connection,values,fileAddress);
    }
}
