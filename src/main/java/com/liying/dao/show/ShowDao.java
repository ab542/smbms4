package com.liying.dao.show;

import com.liying.pojo.UserShow;

import java.sql.Connection;
import java.util.List;

public interface ShowDao {
    public UserShow getPetShow(Connection connection);
    public int getTotalCount(Connection connection,String sql);
    public List<UserShow> queryUserShowByPage(Connection connection,String show,int currentPage,int pageSize);
    
}
