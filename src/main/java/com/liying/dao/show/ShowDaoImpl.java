package com.liying.dao.show;

import com.liying.dao.BaseDao;
import com.liying.pojo.User;
import com.liying.pojo.UserShow;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShowDaoImpl implements ShowDao{

    @Override
    public UserShow getPetShow(Connection connection) {

        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        UserShow userShow=null;
        if(connection!=null) {
            String sql = "select * from pet_show1 where id=1";
            Object[] params = {};
            try {
                resultSet = BaseDao.execute(connection, sql, params, preparedStatement, resultSet);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

            try {
                if(resultSet.next()) {
                   userShow = new UserShow();
                   userShow.setSrc(resultSet.getString("src"));
                   userShow.setAuthor(resultSet.getString("author"));
                   userShow.setDescription(resultSet.getString("description"));
                   userShow.setGood(resultSet.getInt("good"));
                   userShow.setDiscussion(resultSet.getInt("discussion"));
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            BaseDao.closeResource(connection,preparedStatement,resultSet);
        }

        return userShow;
    }

    @Override
    public int getTotalCount(Connection connection, String sql) {
        int totalCount = BaseDao.getTotalCount(connection, sql);
        return totalCount;
    }

    @Override
    public List<UserShow> queryUserShowByPage(Connection connection,String show, int currentPage, int pageSize) {
        PreparedStatement preparedStatement=null;
        ResultSet resultSet1=null;
        System.out.println(show);
        String sql="select * from "+show+" limit ?,?";
        ArrayList<UserShow> userShows = new ArrayList<>();
        Object[] params={(currentPage-1)*pageSize,pageSize};
        try {
            ResultSet resultSet=BaseDao.execute(connection,sql,params,preparedStatement,resultSet1);
            while(resultSet.next()){
                UserShow userShow= new UserShow();
                userShow.setSrc(resultSet.getString("src"));
                userShow.setDescription(resultSet.getString("description"));
                userShow.setGood(resultSet.getInt("good"));
                userShow.setDiscussion(resultSet.getInt("discussion"));
                userShow.setAuthor(resultSet.getString("author"));
                userShows.add(userShow);
            }
            BaseDao.closeResource(connection,preparedStatement,resultSet);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userShows;
    }
}
