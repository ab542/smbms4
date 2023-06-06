package com.liying.servlet.show;

import com.sun.xml.internal.ws.api.message.Attachment;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class IoFile  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uploadPath = this.getServletContext().getRealPath("/WEB-INF/upload");
       String uuidPath= req.getParameter("uuidPath");
       String fileName=req.getParameter("fileName");
        String realPath1 =uploadPath+"\\"+uuidPath+"\\"+fileName;
        System.out.println("65"+realPath1);
       IoReadImage(realPath1,req,resp);
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
    /**
     * IO流读取图片 by:long
     * @return
     */
    public String IoReadImage(String imgNamePath,HttpServletRequest request,HttpServletResponse response) throws IOException {
        ServletOutputStream out = null;
        FileInputStream ips = null;
        try {
            //获取图片存放路径
            String imgPath = imgNamePath;
            ips = new FileInputStream(new File(imgPath));
            response.setContentType("multipart/form-data");
            out = response.getOutputStream();
            //读取文件流
            int len = 0;
            byte[] buffer = new byte[1024 * 10];
            while ((len = ips.read(buffer)) != -1){
                out.write(buffer,0,len);
            }
            out.flush();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            out.close();
            ips.close();
        }
        return null;
    }

}
