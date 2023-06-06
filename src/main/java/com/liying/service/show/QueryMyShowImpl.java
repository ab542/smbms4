package com.liying.service.show;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.liying.dao.BaseDao;
import com.liying.dao.show.QueryMyShowDao;
import com.liying.dao.show.QueryMyShowDaoImpl;
import com.liying.pojo.UserShow;

import java.sql.Connection;
import java.util.LinkedList;
import java.util.List;

public class QueryMyShowImpl  implements QueryMyShow{
    @Override
    public LinkedList<String> queryMyShow(String userCode) {
        LinkedList<String> jsons = new LinkedList<String>();
        Connection connection= BaseDao.getConnection();
        QueryMyShowDao queryMyShowDao= new QueryMyShowDaoImpl();
        LinkedList<UserShow> userShows= queryMyShowDao.queryMyShow1(connection,userCode);
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
