
package com.liying.service.show;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.liying.dao.BaseDao;
import com.liying.dao.show.ShowDaoImpl;
import com.liying.pojo.UserShow;

import java.io.PrintWriter;
import java.sql.Connection;
import java.util.LinkedList;
import java.util.List;

public class ToQueryJsonImpl implements ToQueryJson {
    @Override
    public String toJson() {
        String json = "";
        Connection connection = BaseDao.getConnection();
        ShowDaoImpl showDao = new ShowDaoImpl();
            UserShow userShow = showDao.getPetShow(connection);
            //把对象转为json ，才能通过HttpServletResponse输出
            if( userShow != null){
               ObjectMapper objectMapper = new ObjectMapper();
                try {
                   json  = objectMapper.writeValueAsString(userShow);
                } catch (JsonProcessingException e) {
                    e.printStackTrace();
                }
            }


        System.out.println("servlet province转为json==="+json);
        return json;
    }

    @Override
    public List<String> toJsons(String show,int currentPage,int pageSize) {
        List<String> jsons = new LinkedList<String>();
        Connection connection = BaseDao.getConnection();
        ShowDaoImpl showDao = new ShowDaoImpl();
        List<UserShow> userShows= showDao.queryUserShowByPage(connection,show,currentPage,pageSize);
        for(int i=0;i<userShows.size();i++){
            String json="";
            if( userShows.get(i) != null){
                ObjectMapper objectMapper = new ObjectMapper();
                try {
                    json  = objectMapper.writeValueAsString(userShows.get(i));
                } catch (JsonProcessingException e) {
                    e.printStackTrace();
                }
                jsons.add(json);
            }
        }
        System.out.println("servlet province转为json==="+jsons);
        return jsons;
    }
}
