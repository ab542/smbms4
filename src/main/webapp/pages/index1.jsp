<%@ page isELIgnored="false" %>
<%@page language="java" contentType="text/html;charset:UTF-16" pageEncoding="UTF-16" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="stylesheet" href="../static/css/css1.css">
    <link type="text/css" rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <script src="../static/js/jquery-3.5.1.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="../layui/layui.js"></script>
    <script src="../layui/layer/layer.js"></script>
    <title>Document</title>

    <style>
        div.gallery {
            border: 1px solid #ccc;
        }
        
        div.gallery:hover {
            border: 1px solid #777;
        }
        
        div.gallery img {
            width: 100%;
            height: auto;
        }
        
        div.desc {
            padding: 15px;
            text-align: center;
        }
        
        * {
            box-sizing: border-box;
        }
        
        .responsive {
            padding: 0 6px;
            float: left;
            width: 24.99999%;
        }
        
        @media only screen and (max-width: 700px) {
            .responsive {
                width: 49.99999%;
                margin: 6px 0;
            }
        }
        
        @media only screen and (max-width: 500px) {
            .responsive {
                width: 100%;
            }
        }



    </style>
</head>

<body class="bg-success">
<script src="../static/js/vue.js"></script>
       <script>
           function apple1() {
               layer.open({
                   type: 1,
                   title:'个人宠秀的发布',
                   area: ['500px', '383px'],
                   anim: 5,
                   content: '<form  action="/smbms/servlet/file" style="background-image: url(../static/img/cat4.jpg);background-size:500px 450px" enctype="multipart/form-data" method="post">\
                      <br> <p style="opacity:0.5;"><input type="text" class="form-control" name="username" placeholder="你的昵称"></p><br>\
                   <p style="opacity:0.6;">萌宠图片:  <input type="file" name="file1"></p><br>\
                   <p style="opacity:0.6;">萌宠描述：<textarea name="area" class="form-control" cols="15" rows="6"></textarea> </p>\
                   <p> <label class="radio-inline">\
        <input type="radio" name="optionsRadiosinline" id="optionsRadios3" value="option1" checked> 狗狗\
    </label>\
    <label class="radio-inline">\
        <input type="radio" name="optionsRadiosinline" id="optionsRadios4"  value="option2"> 猫猫\
    </label>\
      <label class="radio-inline">\
        <input type="radio" name="optionsRadiosinline" id="optionsRadios3" value="option1" checked> 猪猪\
    </label>\
    <label class="radio-inline">\
        <input type="radio" name="optionsRadiosinline" id="optionsRadios4"  value="option2"> 可爱的它\
    </label></p>\
      <p style="opacity:0.6;"><center><input type="submit" class="btn btn-default"> | <input type="reset" class="btn btn-default"><center></p>\
                   </form>\
                     '
               })
           }


           function apple2() {
               layer.open({
                   type: 1,
                   title:'修改爱宠信息',
                   area: ['500px', '355px'],
                   anim: 5,
                   content: '<form  action="/smbms/servlet/change" style="background-image: url(../static/img/cat4.jpg);background-size:500px 383px"  method="get">\
                      <br> <p style="opacity:0.5;"><input type="text" class="form-control" name="name" placeholder="宠物爱称"></p><br>\
                   <p style="opacity:0.6;"> <input type="text" class="form-control" name="age" placeholder="爱宠年龄"></p><br>\
                   <p style="opacity:0.6;"><input type="text" class="form-control" name="condition" placeholder="公/母:填公或母"> </p><br>\
                   <p style="opacity:0.6;"><input type="text" class="form-control" name="spouse" placeholder="爱宠配偶"></p><br>\
                   <p style="opacity:0.6;"><input type="text" class="form-control" name="author" value="作者:${userSession.userCode}"></p><br>\
                   <p style="opacity:0.6;"><center><input type="submit" class="btn btn-default"> | <input type="reset" class="btn btn-default"><center></p>\
                   </form>\
                     '
               })
           }
           function  petchange(){
               apple2()
           }

           function  f1() {
               let xhr = new XMLHttpRequest();
               let obj;
               xhr.onreadystatechange = function(){
                   if( xhr.status == 200 && xhr.readyState == 4){
                       let data = xhr.responseText;
                       // 把json格式的字符串 转为 json
                       obj = JSON.parse(data);
                       console.log(obj)
                       //alert("data=="+ obj + ", id属性="+obj.id);

                   }
               }
               const proid=document.getElementById("myuser").innerText;
               console.log("22"+proid)
               xhr.open("get","/smbms/servlet/myshow?proid="+proid,false);
               xhr.send();
               console.log("33"+obj)
               return obj;
           }

           function apple3() {
               layer.open({
                   type: 1,
                   title:'个人宠秀的展示',
                   area: ['500px', '500px'],
                   anim: 5,
                   content: '<div id="app4">\
                     <div v-for="pet in dogs"  class="responsive">\
                                <div class="gallery">\
                                    <a target="_blank" href="#">\
                                        <img v-bind:src="pet.src" alt="萌猫 " width="600" height="400">\
                                    </a>\
                                    <div class="desc">\
                                        <textarea class="form-control" row="3" col="5">{{pet.description}}</textarea>\
                                        <i class="layui-icon layui-icon-heart-fill"></i>{{pet.good}} &nbsp&nbsp&nbsp\
                                        <i class="layui-icon layui-icon-reply-fill"></i>{{pet.discussion}} &nbsp&nbsp&nbsp发布者：{{pet.author}}\
                                    </div>\
                                </div>\
                            </div>\
                       </div>\
                     '
               })


               const app4=new Vue({
                   el:'#app4',
                   data:{
                       dogs:f1()
                   }
               })
           }

function apple4() {
    layer.open({
        type:1,
        skin: 'demo',
        title: '    请选择你想要了解的养宠知识窝    ',
        area: ['300px', '220px'],
        anim: 5,
        content: '<form action="/smbms/servlet/pethouse" method="get" style="background: url(../static/img/cat4.jpg);background-size: 300px 220px" role="form">\
                      <h3 align="center">宠窝</h3> <br>\
                <div style="opacity:0.5;" class="form-group">\
            <label for="name">选择你心爱的窝:</label>\
            <select name="select" class="form-control">\
            <option>憨狗窝</option>\
            <option>萌猫窝</option>\
            <option>佩奇窝</option>\
            <option>其它窝</option>\
            </select><br>\
            <center><button style="" class="btn btn-default" type="submit">进入</button></center> \
                </div>\
                </form>\
                '
        ,

    });

}
           function apple6() {
               layer.open({
                   type: 1,
                   title:'AI动物识别',
                   area: ['550px', '365px'],
                   anim: 5,
                   content: ' <div id="app5" style="background-image: url(${src1});background-size:500px 382px">\
                       <div  style="background-color: aqua;width: 200px;opacity:0.6;">\
                   <h3>识别结果</h3>\
                   <ul >\
                   <li v-for="animal in animals">{{animal.name}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{animal.score}}</li>\
               </ul>\
               </div><br><br><br><br><br><br>\
               <form action="/smbms/servlet/animal" enctype="multipart/form-data" method="post"><br>\
                   <p style="opacity:0.6;"><input name="url1" class="form-control" style="width: 200px;float: left" type="text" placeholder="请输入网络图片URL">\
                   <input type="submit" value="检测" style="float: left" class="btn btn-default"><i style="float:left;font-size: 20px">&nbsp;或&nbsp;</i>\
                   <input type="file" name="file1" style="float: left;width: 150px;font-size: 21px;color: #777777">\
                   <input type="submit"  value="本地上传" class="btn btn-default"><br><br>\
                   </p>\
                   </form>\
                   </div>\
                     '
               })

               const app5=new Vue({
                   el:'#app5',
                   data: {
                       animals:${animalSession},

                   }

               })
           }



       </script>

                                <div class="container">

                                    <div class="row header">

                                        <div class="col-md-2 col-lg-2 col-sm-2 " style="height:42px;">
                                            <img src="../static/img/logo.jpg" alt="">
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-lg-6 col-md-offset-1 col-sm-offset-1 col-lg-offset-1 nav" style="height: 42px;">
                                            <ul>
                                                <div class="row">
                                                    <div class="col-md-3 col-sm-3 col-lg-3">
                                                        <li><a href="">首页</a></li>
                                                    </div>
                                                    <div class="col-md-3 col-sm-3 col-lg-3">
                                                        <li><a href="#show1">宠秀</a></li>
                                                    </div>
                                                    <div class="col-md-3 col-sm-3 col-lg-3">
                                                        <li><a href="#" onclick="apple6()">AI动物识别</a></li>
                        </div>
                        <div class="col-md-3 col-sm-3 col-lg-3">
                            <li><a href="../pages/user.jsp">个人中心</a></li>
                        </div>
                    </div>
                </ul>
            </div>
            <div class="col-md-2 col-lg-2 col-sm-2 col-md-offset-1 col-lg-offset-1 col-sm-offset-1 user">
                <i class="layui-icon layui-icon-username"></i><i id="myuser">${userSession.userCode}</i>
                <!--<button type="button" class="layui-btn layui-btn-xs">退出登录</butto>-->
                <a href="/smbms/servlet/logout">退出登录</a>
            </div>
        </div>

        <!--第二部分-->
        <div class="row banner">

            <div class="ull col-md-2 col-lg-2 col-sm-2" style="background-color: rgb(124, 122, 119);">
                <ul>
                    <li><a href="#" onclick="apple4()">宠窝<span>></span></a></li>
                    <li><a href="#">耍宠圈<span>></span></a></li>
                    <li><a href="#">领养寄养中心<span>></span></a></li>
                    <li><a href="#">感人狗狗电影<span>></span></a></li>
                    <li><a href="#">爱心捐赠<span>></span></a></li>
                    <li><a href="#">走失<span>></span></a></li>
                    <li><a href="#">意见反馈<span>></span></a></li>
                    <li><a href="#">帮助与服务<span>></span></a></li>
                    <li><a href="#">关于我们<span>></span></a></li>

                </ul>
            </div>


            <div id="myCarousel" class="carousel slide col-md-8 col-lg-8 col-sm-8" style="background-color:rgb(39, 58, 52); height: 418px;">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active bu">
                        <img src="../static/img/VCG41138621465-.jpg" alt="First slide">
                        <div class="carousel-caption">标题 1</div>
                    </div>
                    <div class="item bu">
                        <img src="../static/img/index4.png" alt="Second slide">
                        <div class="carousel-caption">标题 2</div>
                    </div>
                    <div class="item bu">
                        <img src="../static/img/index5.png" alt="Third slide">
                        <div class="carousel-caption">标题 3</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="course  col-md-2 col-lg-2 col-sm-2" style="background-color: rgb(124, 122, 119);">
                <br>
                <h2 style="background-color: #00F7DE ">我的宠物档案</h2>
                <div class="bd">
                    <ul>
                        <li><a href="#">${petSession.name}</a><br><span>宠物爱称<button>修改</button></span></li>
                        <li><a href="#">${petSession.age}</a><br><span>宠物年龄<button>修改</button></span></li>
                        <li><a href="#">${petSession.sterilizationCondition}</a><br><span>公/母<button>修改</button></span></li>
                        <li><a href="#">${petSession.spouse}</a><br><span>爱宠配偶<button>修改</button></span></li>
                    </ul>
                    <br>
                    <center><button class="btn btn-default" onclick="apple2()">${button}</button></center>
                </div>

            </div>

        </div>
    </div>
    <!--第三部分 宠秀-->
    <div class="container" id="show1">
        <div   class="row layui-card">


            <div class="layui-card-header show row">
                <div class="col-md-2">
                    <i class="layui-icon layui-icon-home"></i> 宠秀专区</div>
                <div  class="col-md-5 col-md-offset-5">

                    <button type="button" onclick="apple3()" class="layui-btn layui-btn-primary layui-btn-radius">查看个人宠秀</button>
                    <button onclick="apple1()"  class="layui-btn layui-btn-primary layui-btn-radius">发布个人宠秀</button>
                    <button type="button" class="layui-btn layui-btn-primary layui-btn-radius">删除个人宠秀</button>
                </div>
            </div>

            <div class="layui-card-body ">
                <div id="app" class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title">
                        <li v-on:click="change(1)" class="layui-this"><i class="layui-icon layui-icon-tree"></i>编辑推荐</li>
                        <li v-on:click="change(2)"><i class="layui-icon layui-icon-tree"></i>人气最高</li>
                        <li v-on:click="change(3)"><i class="layui-icon layui-icon-tree"></i>最新萌宠</li>
                        <li v-on:click="change(4)"><i class="layui-icon layui-icon-tree"></i>语音涂鸦</li>
                        <li v-on:click="change(5)"><i class="layui-icon layui-icon-tree"></i>我的喜爱</li>
                    </ul>
                </div>
                    <div class="layui-tab-content">

                        <div id="app1" class="layui-tab-item layui-show">

                            <!--内容1-->
                            <div v-for="pet in pets"  class="responsive">
                                <div class="gallery">
                                    <a target="_blank" href="#">
                                        <img v-bind:src="pet.src" alt="萌猫 " width="600" height="400">
                                    </a>
                                    <div class="desc">
                                        <textarea class="form-control" row="3" col="5">{{pet.description}}</textarea>
                                        <i class="layui-icon layui-icon-heart-fill"></i>{{pet.good}} &nbsp&nbsp&nbsp
                                        <i class="layui-icon layui-icon-reply-fill"></i>{{pet.discussion}} &nbsp&nbsp&nbsp发布者：{{pet.author}}
                                    </div>
                                </div>
                            </div>


                        </div>
                      <!--  <div class="layui-tab-item">







                        </div>
                        <div class="layui-tab-item">内容3



                        </div>
                        <div class="layui-tab-item">


                        </div>
                        <div class="layui-tab-item">内容5

                        </div>-->
                        <hr>
                        <div id="page" style="width: 100%;height: 10px;margin: auto;text-align: center;">
                            <a href="#">首页</a>
                            <button v-on:click="sub">上一页</button>
                            <a href="#">{{currentpage-1}}</a>
                            【{{currentpage}}】
                            <a href="#">{{currentpage+1}}</a>
                            <button v-on:click="add" >下一页</button>
                            <a href="#">末页</a>
                            共10页，30条记录 到第<input v-bind:value="currentpage" name="pn" id="pn_input"/>页
                            <button v-on:click="pageclick">确定</button>
                        </div>

                    </div>

                    <!--实现获取到div里面的内容-
                    <script>
                        alert(document.getElementById("one").innerHTML);
                    </script>-->
                    <!--分页footer-->


                    <!--分页切换js
                    <script>
                        layui.use('laypage', function() {
                            var laypage = layui.laypage;

                            //执行一个laypage实例
                            laypage.render({
                                elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
                                    ,
                                count: 50 //数据总数，从服务端得到
                            });
                        });
                    </script>-->
                    <!--选择卡切换js-->
                    <script>
                        layui.use('element', function() {
                            var $ = layui.jquery,
                                element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

                        });
                    </script>
                </div>
            </div>
        </div>

    </div>
    <script src="../static/js/vue.js"></script>
    <script src="../static/js/index.js"></script>
</body>

</html>