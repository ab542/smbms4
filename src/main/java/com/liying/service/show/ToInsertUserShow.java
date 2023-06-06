package com.liying.service.show;

import java.sql.SQLException;
import java.util.List;

public interface ToInsertUserShow {
    //向数=数据库中增加我的宠秀
    public void insertUserShow(List values, List fileAddress) throws SQLException;

}
