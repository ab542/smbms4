package com.liying.filter;

import com.liying.pojo.User;
import com.liying.util.Constants;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class sysFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest servletRequest1 = (HttpServletRequest) servletRequest;
        HttpServletResponse servletResponse1  = (HttpServletResponse) servletResponse;
        //从session里面获取用户
        User user = (User)servletRequest1.getSession().getAttribute(Constants.USER_SESSION);
        if(user==null){
            //该用户未登录
            servletResponse1.sendRedirect("/smbms/login1.jsp");
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
