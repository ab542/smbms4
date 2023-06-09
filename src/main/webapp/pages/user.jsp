<%@ page isELIgnored="false" %>
<%@page language="java" contentType="text/html;charset:UTF-16" pageEncoding="UTF-16" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user</title>
    <style>
        body {
           /* background-color: rgb(204, 212, 230);*/
            background: url("../static/img/petwo2.jpg") no-repeat top center fixed;
            display: flex;
            justify-content: center;
            background-size: cover;
        }
        
        .a {
            position: relative;
            width: 700px;
            height: 400px;
            border: #fff 10px solid;
            background-color: rgba(0,0,0,20%);
            top: 120px;
            border-radius: 20px;
            overflow: hidden;
        }
        
        .b {
            position: absolute;
            width: 200px;
            height: 300px;
            left: 0;
            margin: 75px 50px;
            transition: 1s;
        }
        
        .b a {
            text-decoration: none;
            color: #fff;
            font: 900 28px '';
        }
        
        .b h2 {
            /* 鼠标放开时的动画，第一个值是动画的过渡时间
            第二个值是延迟一秒后执行动画 */
            transition: .5s 1s;
            opacity: 0;
            color: rgb(30, 210, 200);
        }
        
        .b span {
            transition: .5s 1s;
            color: #fff;
            font: 500 15px '';
            position: absolute;
            top: 70px;
        }
        
        .c {
            position: absolute;
            top: -130px;
            right: -240px;
        }
        
        .d,
        .e {
            position: absolute;
            right: calc(var(--i)*100px);
            width: calc(var(--w)*40px);
            height: 500px;
            overflow: hidden;
            border-radius: 100px;
            transform: rotateZ(220deg) translate(0, 0);
            background: rgb(240, 220, 150);
            transition: .5s .5s;
        }
        
        .d:nth-child(2) {
            background: rgb(240, 190, 230);
        }
        
        .e {
            left: -470px;
            top: -140px;
            width: 70px;
            background-color: rgb(90, 220, 150);
        }
        
        .a:hover .c div {
            /* 设置延迟动画 */
            transition: .5s calc(var(--i)*.1s);
            /* 移动的轨迹 */
            transform: rotateZ(220deg) translate(-200px, 400px);
        }
        
        .a:hover .b {
            transition: 1s .5s;
            left: 370px;
        }
        
        .a:hover .b span {
            transition: 1s .5s;
            top: 105px;
        }
        
        .a:hover .b h2 {
            transition: 1s .5s;
            opacity: 1;
        }
        
        .f {
            /*
            width: 250px;
            height: 250px;
            position: absolute;
             background-image: url("goat.png");
            background-size: cover;
            margin: 70px;
            opacity: 0;
            transition: .5s;*/
            position: absolute;
            width: 200px;
            height: 300px;
            left: 0;
            margin: 75px 50px;
            transition: 1s;
            opacity: 0;
        }
        
        .g a {
            text-decoration: none;
            color: #fff;
            font: 900 28px '';
        }
        
        .a:hover .f {
            transition: 1s 1.3s;
            opacity: 1;
        }
    </style>
</head>

<body>
    <!-- 名片分三大块
    最外层的一块a
    文字一大块b
    平面圆柱一块c -->
    <div class="a">
        <div class="b">
            <a href="#">个人中心</a>
            <h2>WX:Sod-of-goat</h2>
            <span><label>昵称：</label>${userSession.userCode}<br>
           <label>用户名：</label>${userSession.userName}<br>
           <label>我的签名：</label>无论做什么,不管想什么;初心是什么,结果得到什么;你都要善良,一如既往。
           </span>
        </div>
        <div class="c">
            <!-- --i是用来计算平面圆柱的动效延迟和距离的
            --w则是用来计算平面圆柱的宽度 -->
            <div class="d" style="--i:1;--w:1.5"></div>
            <div class="d" style="--i:2;--w:1.6"></div>
            <div class="d" style="--i:3;--w:1.4"></div>
            <div class="d" style="--i:4;--w:1.7"></div>
            <div class="e" style="--i:1"></div>
        </div>

        <!-- 设置二维码 -->

        <div class="f g">
            <a href="#">宠物档案</a>
            <h3>基本信息</h3>
            <span>
             <label for="">昵称：</label>${petSession.name}<br>
             <label for="">性别：</label>${petSession.sterilizationCondition}<br>
             <label for="">年龄：</label>${petSession.age}<br>
             <label for="">爱宠配偶：</label>${petSession.spouse} <br>
            </span>
            <h3>养成日常</h3>
        </div>
    </div>
</body>

</html>