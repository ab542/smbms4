package com.liying.servlet.user;

import com.liying.pojo.Pet;
import com.liying.pojo.User;
import com.liying.service.user.UserPetImpl;
import com.liying.service.user.UserServiceImpl;
import com.liying.util.Constants;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    /*
    控制层调用业务层代码

     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("LoginServlet--start");
        //获取用户名和芝麻
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        //和数据库中的数据验证   已经把登录的人查出来了
        UserServiceImpl userService = new UserServiceImpl();
        User loginUser = userService.login(username, password);
        //查询用户的爱宠
        UserPetImpl userPet = new UserPetImpl();
        Pet pet=null;
        if(loginUser!=null){
            pet=userPet.queryUserPet(loginUser.getUserCode());
            req.getSession().setAttribute(Constants.USER_SESSION,loginUser);
            //登录成功的话跳转到内部主页
            //并且需要获取到本用户的爱宠 如果没有查询到无显示，如果查询到了需要显示
            //根据用户的userCode查询 pet表中是否有本用户的爱犬
            if(pet!=null){
                req.getSession().setAttribute(Constants.PET_SESSION,pet);
                req.getSession().setAttribute("button","修改爱宠信息");
            }else{
                req.getSession().setAttribute("button","添加爱宠信息");
            }
            String results="["+"{"+"'"+"name"+"'"+":"+"'"+"美国短毛猫"+"'"+","+"'"+"score"+"'"+":"+"'"+"0.209"+"'"+"},"+"{"+"'"+"name"+"'"+":"+"'"+"家猫"+"'"+","+"'"+"score"+"'"+":"+"'"+"0.139"+"'"+"},"+"{"+"'"+"name"+"'"+":"+"'"+"布偶猫"+"'"+","+"'"+"score"+"'"+":"+"'"+"0.058"+"'"+"},"+"{"+"'"+"name"+"'"+":"+"'"+"波米拉猫"+"'"+","+"'"+"score"+"'"+":"+"'"+"0.054"+"'"+"},"+"{"+"'"+"name"+"'"+":"+"'"+"英国短毛猫"+"'"+","+"'"+"score"+"'"+":"+"'"+"0.048"+"'"+"},"+"{"+"'"+"name"+"'"+":"+"'"+"欧洲短毛猫"+"'"+","+"'"+"score"+"'"+":"+"'"+"0.047"+"'"+"},"+"]";
            req.getSession().setAttribute(Constants.Animal_SESSION,results);
            req.getSession().setAttribute("src1","../static/img/2.jpg");
            resp.sendRedirect("/smbms/pages/index1.jsp");
        }else{
            System.out.println("查无此人");
            req.setAttribute("error","用户名或密码不正确");

            req.getRequestDispatcher("/login1.jsp").forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
