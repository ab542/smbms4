package com.liying.servlet.show;

import com.liying.pojo.UserShow;
import com.liying.service.show.QueryMyShowImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;

public class QueryMyShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       String userCode= req.getParameter("proid");
       com.liying.service.show.QueryMyShow queryMyShow=new QueryMyShowImpl();
       LinkedList<String> jsons= queryMyShow.queryMyShow(userCode);
        System.out.println("55==="+jsons);
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
        super.doPost(req, resp);
    }
}
