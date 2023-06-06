package com.liying.servlet.show;

import com.liying.pojo.Pet;
import com.liying.service.show.PetInsert;
import com.liying.service.show.PetInsertImpl;
import com.liying.util.Constants;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ChangePet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       String name= req.getParameter("name");
       String age=req.getParameter("age");
       String condition=req.getParameter("condition");
       String spouse=req.getParameter("spouse");
       String author=req.getParameter("author");
       author=author.substring(3);
       Object[] params={name,age,condition,spouse,author};
        PetInsert petInsert = new PetInsertImpl();
        Pet pet= petInsert.petInsert(params);
        if(pet!=null){
            System.out.println("修改成功");
            req.getSession().setAttribute(Constants.PET_SESSION,pet);
            req.getSession().setAttribute("button","修改爱宠信息");

            resp.sendRedirect("/smbms/pages/index1.jsp");
        }else{
            System.out.println("修改失败");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
