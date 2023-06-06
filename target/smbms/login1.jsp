<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html;charset:UTF-16" pageEncoding="UTF-16" %>
<html>
<head>
    <!---->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login1.css" >
    <script src="static/js/loginAndregister.js"></script>
    <title>Document</title>
</head>

<body>
    <div  class="box">
        <form action="/smbms/servlet/login">
            <h4>宠物语登录中心</h4>
            <div class="info">${error}</div>
            <div class="acc">
                <input type="text" name="username" id="exampleInputName1" placeholder="请输入用户名">
                <input type="password" name="password" onblur="" id="exampleInputPassword1" placeholder="请输入密码">
            </div>
            <a id="box" class="btn fff" v-on:click="aclick()">点击验证</a>
            <div class="fn">
                <label for="check"><input id="check" type="checkbox"><span><span></span></span>记住我</label>
                <a href="javascript:;" class="ccc">忘记密码</a>
            </div>
            <div class="login"><input type="submit" id="btn" onclick="checkform()" value="登录" class="fff">
                <span>或</span>
                <a href="javascript:;" class="fff">使用其它登录</a>
            </div>
            <div class="reg">
                <p>还没有账号
                    <a href="/smbms/register/register1.jsp" class="ccc">立即注册</a>
                </p>
            </div>
        </form>
    </div>
    <script src="${pageContext.request.contextPath}/static/js/vue.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/login.js"></script>
</body>

</html>