<%@ page language="java" import="java.util.*,java.util.Map.Entry,java.text.SimpleDateFormat,java.util.Date,net.sf.json.JSONArray,net.sf.json.JSONObject,java.net.URLEncoder,java.net.URLDecoder" pageEncoding="utf-8"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.OutputStream,java.io.FileOutputStream,java.io.IOException,java.io.FileInputStream,java.io.PrintWriter," %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("image/png");
    response.setHeader("Content-Disposition","attachment;Filename=test.png");
    BufferedOutputStream bos = null;
    InputStream fis = null;
    BufferedInputStream bis = null;

    String flag=request.getParameter("flag")==null?"":request.getParameter("flag");
    try{

        String tPath="D:/Users/31493/IdeaProjects/smbms/target/smbms/WEB-INF/upload/de81f2f7-3f3d-4412-9057-1bc08baba625/dog.jpg";

        bos = new BufferedOutputStream(response.getOutputStream());
        fis = new FileInputStream(tPath);
        bis = new BufferedInputStream(fis);
        byte[] buff = new byte[2048];
        int bytesRead;
        while (-1 != (bytesRead = bis.read(buff, 0, buff.length)))
        {
            bos.write(buff, 0, bytesRead);
        }
        bos.flush();
    }catch(Exception e){
    }finally{
        if(bos!=null){
            bos.close();
        }
        if(bis!=null){
            bis.close();
        }
        if(fis!=null){
            fis.close();
        }
    }
    out.clear();
    out = pageContext.pushBody();
%>
