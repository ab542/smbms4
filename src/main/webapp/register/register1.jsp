<%@ page isELIgnored="false" %>
<%@page language="java" contentType="text/html;charset:UTF-16" pageEncoding="UTF-16" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../static/css/register1.css">
    <script src="../static/js/jquery-3.5.1.js"></script>
    <title>Document</title>
</head>

<body>
    <div class="box">
        <form action="/smbms/servlet/register">
            <h4>宠物语注册中心</h4>
            <div id="app" class="acc">
                <input type="text" name="username" id="exampleInputName1" placeholder="请输入用户名">
                <input type="text" name="phone" @blur="checkphone()"   id="InputPhone" id="exampleInputPhone" placeholder="请输入密保手机号">
                <input type="password"  id="exampleInputPassword" @blur="checkpassword()"  placeholder="请输入密码">
                <input type="password" name="password" @blur="equalpassword()"   id="exampleInputPassword1" placeholder="再次确认密码">
            </div>
            <div class="fn">
                <label for="check"><input id="check" type="checkbox"><span><span></span></span>记住我</label>
                <!-- <a id="question" onclick="" href="javascript:;" class="ccc">填写调查问卷</a>-->
                <label>
                <input id="question" type="button"  value="填写调查问卷"  onclick="">
            </label>
            </div>
            <div class="login">
                <input type="submit" id="btn" onclick="" value="注册" class="btn fff">
            </div>
        </form>
    </div>
  <script src="../static/js/vue.js"></script>
    <script src="../static/js/register.js"></script>
</body>

</html>