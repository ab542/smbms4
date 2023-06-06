package com.liying.servlet.show;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.liying.dao.BaseDao;
import com.liying.dao.show.ShowDaoImpl;
import com.liying.pojo.UserShow;
import com.liying.service.show.ToQueryJsonImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

public class QueryUserShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String json = "";
        String strShow = req.getParameter("proid");
        Connection connection = BaseDao.getConnection();
        if( strShow != null && !strShow.trim().equals("")){
            ToQueryJsonImpl toQueryJson = new ToQueryJsonImpl();
             json = toQueryJson.toJson();
        }


        System.out.println("servlet province转为json==="+json);
        //输出json给ajax请求。
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter out = resp.getWriter();
        System.out.println(json);
        out.println(json);
        out.flush();
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
