package com.liying.servlet.show;

import com.liying.dao.BaseDao;
import com.liying.service.show.ToQueryJsonImpl;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.LinkedList;
import java.util.List;

public class QueryShowByPage1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> jsons = new LinkedList<String>();
        String strShow = req.getParameter("proid");
        String show = req.getParameter("show");
        System.out.println(show);
        Connection connection = BaseDao.getConnection();
        String json="";
        ToQueryJsonImpl toQueryJson = new ToQueryJsonImpl();
        jsons = toQueryJson.toJsons(show,Integer.parseInt(strShow),16);

      /*  if( strShow != null && !strShow.trim().equals("")){
            String json="";
            ToQueryJsonImpl toQueryJson = new ToQueryJsonImpl();
            jsons = toQueryJson.toJsons(Integer.parseInt(strShow),2);

        }
*/

        System.out.println("servlet province转为json==="+jsons);
        //输出json给ajax请求。
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter out = resp.getWriter();
        System.out.println(jsons);
        out.println(jsons);
        out.flush();
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
