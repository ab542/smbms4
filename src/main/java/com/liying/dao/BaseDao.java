package com.liying.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

//操作数据库的公共类
public class BaseDao {
    private static String driver;
    private static String url;
    private static String username;
    private static String password;

    static{
        //静态代码块启动就可以加载
        /*
        我们可以在这里读取数据库配置文件
        通过类加载器读取对应的资源
        准备需要的资源：
         */
        Properties properties= new Properties();
        InputStream is= BaseDao.class.getClassLoader().getResourceAsStream("bd.properties");
        try {
            properties.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
        driver=properties.getProperty("driver");
        url=properties.getProperty("url");
        username=properties.getProperty("username");
        password=properties.getProperty("password");
    }
    /*
    正式获取数据库的连接
     */
    public static Connection getConnection(){
        Connection connection=null;
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }
    /*
    编写查询公共类
     */
    public static ResultSet execute(Connection connection,String sql,Object[] params,PreparedStatement preparedStatement,ResultSet resultSet) throws SQLException {
     preparedStatement = connection.prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            //占位符是从1开始的
            preparedStatement.setObject(i+1,params[i]);
        }
       resultSet = preparedStatement.executeQuery();
        return resultSet;
    }
    /*
    编写增删改公共方法
     */
    public static int execute(Connection connection,String sql,Object[] params,PreparedStatement preparedStatement) throws SQLException {
        preparedStatement = connection.prepareStatement(sql);
        for (int i = 0; i < params.length; i++) {
            //占位符是从1开始的
            preparedStatement.setObject(i+1,params[i]);

        }
        int updateRows = preparedStatement.executeUpdate();
        return updateRows;
    }
    public static boolean closeResource(Connection connection,PreparedStatement preparedStatement,ResultSet resultSet){
        boolean flag=true;
        if(resultSet!=null){
            try {
                resultSet.close();
                resultSet=null;
            } catch (SQLException throwables) {
                throwables.printStackTrace();
                flag=false;
            }
        }
        if(preparedStatement!=null){
            try {
                preparedStatement.close();
                preparedStatement=null;
            } catch (SQLException throwables) {
                throwables.printStackTrace();
                flag=false;
            }
        }
        if(connection!=null){
            try {
               connection.close();
                connection=null;
            } catch (SQLException throwables) {
                throwables.printStackTrace();
                flag=false;
            }
        }
        return flag;
    }
    //编写查询表总数的公共方法
    public static int getTotalCount(Connection connection, String sql){
        int count=-1;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                count=resultSet.getInt(1);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return  count;
    }
}
