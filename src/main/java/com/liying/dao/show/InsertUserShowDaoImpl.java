package com.liying.dao.show;

import com.liying.dao.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InsertUserShowDaoImpl implements InsertUserShowDao {
    @Override
    public void insertShow(Connection connection, List values, List fileAddress) throws SQLException {
        PreparedStatement preparedStatement=null;

        for (int i = 0; i < fileAddress.size(); i++) {
            String sql = "insert into pet_show5(src,author,description,good,discussion) values(?,?,?,?,?)";
            System.out.println(sql);
            Object params[]={fileAddress.get(i),values.get(0),values.get(1),0,0};
            int execute = BaseDao.execute(connection, sql, params, preparedStatement);
            System.out.println(execute);

        }
        BaseDao.closeResource(connection,preparedStatement,null);

    }
}
