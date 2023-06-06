package com.liying.servlet.show;

import com.liying.dao.user.Animal;
import com.liying.util.Constants;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

public class AnimalRecognition extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(!ServletFileUpload.isMultipartContent(req)) {
            return; //终止方法运行，说明这是一个普通表单，直接返回
        }

        String uploadPath = this.getServletContext().getRealPath("/WEB-INF/upload");
        File uploadFile = new File(uploadPath);
        if(!uploadFile.exists()){
            //判断文件是否存在，若不存在，则进行创建
            uploadFile.mkdir();
        }

        String tmpPath = this.getServletContext().getRealPath("/WEB-INF/tmpPath");
        File file = new File(tmpPath);
        if(!file.exists()){
            //判断临时文件是否存在，若不存在，则进行创建
            file.mkdir();
        }

        DiskFileItemFactory factory = new DiskFileItemFactory();
        //通过这个工厂设置一个缓冲区，当上传文件大于这个缓冲区的时候，将它放到临时文件中
        factory.setSizeThreshold(1024*1024);    //缓冲区大小为1M
        factory.setRepository(file);            //临时文件的保存目录


        ServletFileUpload upload = new ServletFileUpload(factory);
        //监听上传进度
        upload.setProgressListener(new ProgressListener() {
            //l已读到的大小，l1文件大小
            public void update(long l, long l1, int i) {
                System.out.println("总大小："+l1+" 已上传："+l);
            }
        });
        //处理乱码问题
        upload.setHeaderEncoding("UTF-8");
        //设置单个文件的最大值
        upload.setFileSizeMax(1024*1024*10);
        //设置总共能上传文件的大小
        upload.setSizeMax(1024*1024*10);

        String msg = "";
        //把前端请求解析，封装成一个FileItem对象

        List<FileItem> fileItems = null;
        try {
            fileItems = upload.parseRequest(req);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        System.out.println("fileItems:"+fileItems);
        //链表
        List<String> values = new LinkedList<String>();
        List<String> fileAddress = new LinkedList<String>();
        String webimg="";
        for (FileItem fileItem : fileItems) {
            if (fileItem.isFormField()) {     //判断上传的文件是普通表单还是带文件的表单
                String name = fileItem.getFieldName();
                String value = fileItem.getString("UTF-8");     //处理乱码问题
                System.out.println(name + ":" + value);
                values.add(value);
            } else {      //它是上传文件
                //拿到完整的文件名
                System.out.println("11");
                String uploadFileName = fileItem.getName();
                System.out.println("上传的文件名：" + uploadFileName);

                if (uploadFileName.trim().equals("") || uploadFileName == null) {
                    continue;
                }

                //获得上传的文件名
                String fileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);
                //获得文件后缀
                String fileExtName = uploadFileName.substring(uploadFileName.lastIndexOf(".") + 1);
                /*
                    如果文件的后缀名 fileName 不是我们所需的就直接return,不处理告诉用户文件类型不对
                 */
                System.out.println("文件信息【件名：" + fileName + "----文件类型：" + fileExtName + "】");

                String uuidPath = UUID.randomUUID().toString();

                String realPath = uploadPath + "/" + uuidPath;
                System.out.println(realPath);
                //给每一个文件创建一个文件夹
                File realPathFile = new File(realPath);
                if (!realPathFile.exists()) {
                    realPathFile.mkdir();
                }

                //获得文件上传的流
                InputStream is = fileItem.getInputStream();

                //创建一个输出流
                //realPath=真实的文件夹
                //差了一个文件；加上输出文件的名字+"/"+uuidFileName
                String realPath1 = uploadPath + "\\" + uuidPath + "\\" + fileName;
                fileAddress.add(realPath1);
                webimg="http://localhost:8080/smbms/servlet/iofile?uuidPath="+uuidPath+"&fileName="+fileName;

                FileOutputStream fos = new FileOutputStream(realPath + "/" + fileName);

                //创建一个缓冲区
                byte[] buffer = new byte[1024 * 1024];

                //判断是否读取完毕
                int len = 0;

                while ((len = is.read(buffer)) > 0) {
                    fos.write(buffer);
                }
                fos.close();
                is.close();

                msg = "文件上传成功";
                fileItem.delete();

            }
        }
        System.out.println(values);
        System.out.println(fileAddress);
        Animal animal = new Animal();
        String results="";
        System.out.println(values.size());
        System.out.println(fileAddress.size());
        if(values.size()!=1){
           results= animal.animal(values.get(0));
        }
        if(fileAddress.size()!=0){
           results= animal.animal(fileAddress.get(0));
        }

        System.out.println(results);
        results= results.substring(results.indexOf("["),(results.lastIndexOf("]")+1));
        System.out.println(results);
        req.getSession().setAttribute(Constants.Animal_SESSION,results);
        req.getSession().setAttribute("src1",webimg);
       resp.sendRedirect("/smbms/pages/index1.jsp");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
