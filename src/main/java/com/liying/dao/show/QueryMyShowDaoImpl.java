package com.liying.dao.show;

import com.liying.dao.BaseDao;
import com.liying.pojo.Pet;
import com.liying.pojo.UserShow;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class QueryMyShowDaoImpl implements QueryMyShowDao{
    @Override
    public LinkedList<UserShow> queryMyShow1(Connection connection, String userCode) {
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        LinkedList<UserShow> userShows=new LinkedList<UserShow>();
        UserShow userShow=null;
        if(connection!=null) {
            String sql = "select * from pet_show5 where author=?";
            Object[] params = {userCode};
            try {
                resultSet = BaseDao.execute(connection, sql, params, preparedStatement, resultSet);
                while(resultSet.next()) {
                    userShow = new UserShow();
                    userShow.setSrc(resultSet.getString("src"));
                    userShow.setDescription(resultSet.getString("description"));
                    userShow.setGood(resultSet.getInt("good"));
                    userShow.setDiscussion(resultSet.getInt("discussion"));
                    userShow.setAuthor(resultSet.getString("author"));
                    userShows.add(userShow);
                }
                BaseDao.closeResource(null,preparedStatement,resultSet);

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
        return userShows;


    }
}
