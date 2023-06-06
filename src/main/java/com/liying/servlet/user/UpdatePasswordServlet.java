package com.liying.servlet.user;

import com.liying.pojo.User;
import com.liying.service.user.UserRegisterServiceImpl;
import com.liying.service.user.UserUpdateService;
import com.liying.service.user.UserUpdateServiceImpl;
import com.liying.util.Constants;
import com.mysql.jdbc.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdatePasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     String method=req.getParameter("method");
     if(method.equals("savepwd")&&method!=null){
         this.updatePassword(req,resp);
     }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req,resp);
    }
    public void updatePassword(HttpServletRequest req, HttpServletResponse resp){
        boolean flag=false;
        String password = req.getParameter("password");
        Object attribute = req.getSession().getAttribute(Constants.USER_SESSION);
        if(attribute!=null&& !StringUtils.isNullOrEmpty(password)){
            UserUpdateServiceImpl userUpdateService = new UserUpdateServiceImpl();
            User attribute1 = (User) attribute;
            flag = userUpdateService.updatePassword(attribute1.getUserCode(), password);
            if(flag){
                req.setAttribute("message","密码修改成功 请退出使用新密码登录");
                //密码修改成功，移除Session
                req.getSession().removeAttribute(Constants.USER_SESSION);
            }else{
                req.setAttribute("message","密码修改失败");
            }
        }else{
            req.setAttribute("message","新密码设置有问题");
        }
        //不管修改成功还是失败 都在本页
        try {
            req.getRequestDispatcher("/pages/user.jsp").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
