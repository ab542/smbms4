package com.liying.servlet.user;

import com.liying.service.user.UserRegisterServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserRegisterServiceImpl userRegisterService = new UserRegisterServiceImpl();

        String username = req.getParameter("username");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        boolean register = userRegisterService.register(username, password, phone);
        if(register){
            System.out.println("注册成功");
            resp.sendRedirect("/smbms/login1.jsp");
        }else{
            System.out.println("注册失败");
            resp.sendRedirect("/smbms/pages/register1.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     doGet(req, resp);
    }
}
