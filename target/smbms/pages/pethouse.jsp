
<%@ page isELIgnored="false" %>
<%@page language="java" contentType="text/html;charset:UTF-16" pageEncoding="UTF-16" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="stylesheet" href="../static/css/pethouse.css">
    <link type="text/css" rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../layui/css/layui.css">
    <link rel="stylesheet" href="../layui/layer/layer.css">
    <script src="../static/js/jquery-3.5.1.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    <script src="../layui/layui.js"></script>
    <script src="../layui/layer/layer.js"></script>
    <title>宠窝</title>
<style>
    /*链表*/
    .banner {
        height: 421px;
        margin-bottom: 10px;
    }

    .ull {
        float: left;
        /* width: 192px;*/
        height: 396px;
        /*半透明实现方法*/
        background: rgba(0, 0, 0, 0.3);
    }

    .ull ul li {
        height: 80px;
        line-height:45px;
        padding: 10px 20px;
    }

    .ull ul li a {
        font-size: 14px;
        color: black;
        text-decoration: none;
    }

    .ull ul li a span {

        float: right;
    }

    .ull ul li a:hover {
        color: green;
    }
    #spread {
        height: 20px;
        overflow: hidden;
    }
    #spread1{
        height: 20px;
        overflow: hidden;

    }
</style>
</head>

<body class="bg-success" data-spy="scroll" data-target="#myScrollspy" >
    <script>

        var flag=false;
       function a(){
            flag=!flag;
            if(flag){
            let obj = document.getElementById("spread");
            obj.style.overflow="visible";
            let btn=document.getElementById("btn").innerText="收起"
            }else{
                let obj = document.getElementById("spread");
                obj.style.overflow="hidden";
                let btn=document.getElementById("btn").innerText="展开"

            }
        }
        var flag1=false
        function a1(){
            flag1=!flag1;
            if(flag1){
                let obj = document.getElementById("spread1");
                obj.style.overflow="visible";
                let btn=document.getElementById("btn1").innerText="收起"
            }else{
                let obj = document.getElementById("spread1");
                obj.style.overflow="hidden";
                let btn=document.getElementById("btn1").innerText="展开"

            }
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
        <!--第一部分-->
        <div class="row header" style="">
            <br>
            <div class="col-md-2 col-lg-2 col-sm-2 " style="height:42px;">
                <img src="../static/img/logo.jpg" alt="">
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6 col-md-offset-1 col-sm-offset-1 col-lg-offset-1 nav" style="height: 42px;">
                <ul class="nav nav-pills">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-lg-3">
                            <li><a href="../pages/index1.jsp">首页</a></li>
                        </div>
                        <div class="col-md-3 col-sm-3 col-lg-3 active">
                            <li><a href="../pages/index1.jsp">宠秀</a></li>
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
            <!--<div class="col-md-2 col-lg-2 col-sm-2 col-md-offset-1 col-lg-offset-1 col-sm-offset-1 user">
                <img src="../static/img/user.png" alt=""> 获取名
                <a href="">退出登录</a>
            </div>-->
            <div class="col-md-2 col-lg-2 col-sm-2 col-md-offset-1 col-lg-offset-1 col-sm-offset-1 user">
                <i class="layui-icon layui-icon-username"></i>${userSession.userCode}
                <!--<button type="button" class="layui-btn layui-btn-xs">退出登录</butto>-->
                <a href="/smbms/servlet/logout">退出登录</a>
            </div>

        </div>
        <!--第二部分-->
        <div class="row" style="opacity:0.5;">
            <h1 style="text-align: center; background-color: #92B8B1">宠窝专区</h1>
        </div>
       <br>
        <!--第三部分-->

        <div id="add1" class="row banner" style="">
            <div class="col-md-3 ull" style="background-color: #92B8B1;">

                <ul>
                    <li><a href="#">动物品种介绍<span>></span></a></li>
                    <li><a href="#add1">憨狗知识窝<span>></span></a></li>
                    <li><a href="#add2">萌猫知识窝<span>></span></a></li>
                    <li><a href="#add3">佩奇知识窝<span>></span></a></li>
                    <li><a href="#add4">其它知识窝<span>></span></a></li>
                </ul>
            </div>


            <div id="myCarousel" class="carousel slide col-md-9" >
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="../static/img/dog2.jpg" alt="First slide">
                        <div class="carousel-caption"><h3>欢迎来到憨狗窝</h3></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/dog4.png"   alt="Second slide">
                        <div class="carousel-caption"><h3>可爱即机智如我</h3></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/dog3.png" alt="Third slide">
                        <div class="carousel-caption"><h3>一起进入我的世界</h3></div>
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
        </div>
        <div class="row " style="background-color: white">

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        动物品种介绍
                    </h3>
                </div>
                <div class="panel-body">
                    <p style="text-indent:2em;margin:10px 0">狗是人类最早驯化的家畜之一，属于哺乳纲，肉食目，犬科。<p style="text-indent:2em;">生物学家研究认为，狗最早是由狼、狐和胡狼自然杂交而产生的。经过各民族采用不同方法进行长时间的驯化逐渐形成了现在繁多的品种。据联合国统计，现在全世界约有5亿条狗，我国大约有1亿条。</p>
                    <p style="text-indent:2em;margin:10px 0"> 从古至今狗始终是人类的朋友和得力的助手。从边境巡逻、缉毒、侦破案件、救护伤员到为盲人引路、与主人作伴，处处都有它们矫健的身影。正因如此，狗几乎在世界各国都受到宠爱和保护。各种各样的狗协会遍及世界各地，在西方发达国家还有很多专门为狗设立的服务性机构。以前，为了控制狂犬病对人的威胁，我国曾实行灭狗的政策。随着经济的发展和医学的进步，通过接种疫苗已经能很好地控制狂犬病。所以近年来各大城市也逐步改变了过去那种一味灭狗的非人道做法，并针对养狗制定了一系列比较客观、合理的规章制度，使我国的养狗事业正逐步走向科学化、法制化。</p>
                    <p style="text-indent:2em;margin:10px 0">   犬具有很强的智力，能够领会人的语言、表情和各种手势，有时会做出令人们惊叹不已的事情。如通过训练，能计数、识字等。</p>
                    <p style="text-indent:2em;margin:10px 0">犬的时间观念和记忆力很强。在时间观念方面，每一个养犬者都有这样的体会，每到喂食的时间，犬都会自动的来到喂食的地点，表现出异常的兴奋，如果主人稍显迟钝，它就会以低声的呻吟或扒门来提醒你。
                        在记忆力方面，犬对饲养过它的主人和住所，甚至主人的声音都会有很强的记忆能力。如在英国，有一只犬从收音机里听到它阔别近10年的主人的声音后，马上站起来走到收音机旁专注的倾听着，直到长长的一段话结束后，才若有所失的带着悲伤的神情，默默地离开收音机。</p>

                    <hr>
                    <center><h3>狗狗品种大全</h3></center>
                    <div class="tab-content clearfix" style="background: #fff">
                        <div role="tabpanel" class="tab-pane active" id="A">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="aierlanlielangquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/aierlanlielangquan"><img width="280" height="250" src="http://i1.bagong.cn/be/08/97970ca90532a634a90b03f7f6d7_280x250_1.jpg" alt='爱尔兰猎狼犬|'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>爱尔兰猎狼犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="aijiaochangshengeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/aijiaochangshengeng"><img width="280" height="250" src="http://i1.bagong.cn/58/ff/814ac6e76b4087a55569fc521042_280x250_1.jpg" alt='短脚长身梗|'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>短脚长身梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="aierlanxuedaquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/aierlanxuedaquan"><img width="280" height="250" src="http://i1.bagong.cn/5c/3e/6aee5b2f5fa26e64ef9939d61dab_280x250_1.jpg" alt='爱尔兰雪达犬|爱尔兰塞特犬,爱尔兰蹲猎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>爱尔兰雪达犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="alasijia">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/alasijia"><img width="280" height="250" src="http://i1.bagong.cn/cd/c9/2751bac8ea409a71f97c0c97768d_280x250_1.jpg" alt='阿拉斯加雪橇犬|阿拉斯加犬,阿拉斯加,马拉缪犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>阿拉斯加雪橇犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="afuhan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/afuhan"><img width="280" height="250" src="http://i1.bagong.cn/ce/ae/79f4605ab329f997449520856fb9_280x250_1.jpg" alt='阿富汗猎犬|阿富汗犬,阿富汗,俾路支猎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>阿富汗猎犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="B">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="boenshan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/boenshan"><img width="280" height="250" src="http://i1.bagong.cn/23/92/44448d0bd61a89c6475531f71db4_280x250_1.jpg" alt='伯恩山犬|瑞士伯恩山犬,伯尔尼兹山地犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>伯恩山犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bomei">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bomei"><img width="280" height="250" src="http://i1.bagong.cn/f4/44/eb76556f2028ce6107adf008c268_280x250_1.jpg" alt='博美犬|博美,松鼠犬,波美拉尼亚犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>博美犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="boerduoquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/boerduoquan"><img width="280" height="250" src="http://i1.bagong.cn/26/5e/4784fd8bb100fce94361c46eda23_280x250_1.jpg" alt='波尔多犬|法国獒犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>波尔多犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="boshidun">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/boshidun"><img width="280" height="250" src="http://i1.bagong.cn/62/da/e2e651917aca227f533054a759d4_280x250_1.jpg" alt='波士顿梗|波士顿犬,波士顿'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>波士顿梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bajidu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bajidu"><img width="280" height="250" src="http://i1.bagong.cn/c4/88/873fa5f574c1b5c17770acdf7d6e_280x250_1.jpg" alt='巴吉度犬|巴塞特猎犬,巴吉度猎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>巴吉度犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bilishi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bilishi"><img width="280" height="250" src="http://i1.bagong.cn/d6/35/61d656636dc0afc243debb067dd2_280x250_1.jpg" alt='比利时牧羊犬|比牧/特弗伦,比利时特弗伦犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>比利时牧羊犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bandian">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bandian"><img width="280" height="250" src="http://i1.bagong.cn/7e/70/cccb8715d521f3eb5674d37349c9_280x250_1.jpg" alt='大麦町犬|斑点犬,斑点狗,斑点,达尔马提犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>大麦町犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bianmu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bianmu"><img width="280" height="250" src="http://i1.bagong.cn/4e/32/2e154b8ba6f0f8c5179fb3bfca83_280x250_1.jpg" alt='边境牧羊犬|边境柯利犬,边牧,边境柯利牧羊犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>边境牧羊犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="beijigelifendingquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/beijigelifendingquan"><img width="280" height="250" src="http://i1.bagong.cn/89/fc/188c54af9e3dff3e8f071fa97293_280x250_1.jpg" alt='迷你贝吉格里芬凡丁犬|贝吉格里芬凡丁犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>迷你贝吉格里芬凡丁犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="boliquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/boliquan"><img width="280" height="250" src="http://i1.bagong.cn/a9/09/0839e2f9c792cbd357f8922e4e1c_280x250_1.jpg" alt='波利犬|匈牙利波利犬,波利牧羊犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>波利犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bage">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bage"><img width="280" height="250" src="http://i1.bagong.cn/33/3a/38b76f9133ffdf458fa7d42afbe0_280x250_1.jpg" alt='巴哥犬|巴哥,八哥,哈叭狗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>巴哥犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="beijingquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/beijingquan"><img width="280" height="250" src="http://i1.bagong.cn/61/d4/7f2e7bec06ea39a98bd2c156e170_280x250_1.jpg" alt='北京犬|京吧,京巴,京吧犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>北京犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bite">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bite"><img width="280" height="250" src="http://i1.bagong.cn/6f/58/8afe52de39b2c4ad734d5e111968_280x250_1.jpg" alt='比特犬|比特斗牛犬,美国比特,美国比特犬,比特'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>比特犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="beilingdun">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/beilingdun"><img width="280" height="250" src="http://i1.bagong.cn/a5/a1/3f30c5fdf6a10cb992822044014c_280x250_1.jpg" alt='贝林顿梗|贝灵顿,罗史卑利犬,林登梗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>贝林顿梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bige">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bige"><img width="280" height="250" src="http://i1.bagong.cn/34/fc/d82777c500a2c44c89a3834f6535_280x250_1.jpg" alt='比格犬|比格,米格鲁猎犬,猎兔犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>比格犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="baxianjiquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/baxianjiquan"><img width="280" height="250" src="http://i1.bagong.cn/27/e8/4156b0de6582f5d4e86b5f3e8c74_280x250_1.jpg" alt='巴仙吉犬|刚果犬,贝森吉犬,贝仙吉犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>巴仙吉犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="boyinda">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/boyinda"><img width="280" height="250" src="http://i1.bagong.cn/04/a6/d820e9fca7cb6a893bcbad979fac_280x250_1.jpg" alt='波音达犬|指示犬,波音达,德国短毛犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>波音达犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bixiong">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/bixiong"><img width="280" height="250" src="http://i1.bagong.cn/a2/5c/42031333e74994d355bd0f9c4c46_280x250_1.jpg" alt='比熊|比熊,比雄,卷毛比熊犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>比熊</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                       <div id="spread">
                        <div role="tabpanel" class="tab-pane active" id="F">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="falaowangliequan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/falaowangliequan"><img width="280" height="250" src="http://i1.bagong.cn/ba/cc/4831d14f17f2a5246f964dd51961_280x250_1.jpg" alt='法老王猎犬|科博特菲勒犬,猎兔犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>法老王猎犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="fadou">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/fadou"><img width="280" height="250" src="http://i1.bagong.cn/a1/86/cef3f0294d2ff0b1330997dab54f_280x250_1.jpg" alt='法国斗牛犬|法斗,法兰西斗牛犬,法国老虎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>法国斗牛犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="X">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="xiledi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/xiledi"><img width="280" height="250" src="http://i1.bagong.cn/3e/1b/b32c0519a8f747f62dbdd0c03e16_280x250_1.jpg" alt='喜乐蒂牧羊犬|喜乐蒂,设得兰群岛牧羊犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>喜乐蒂牧羊犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xishi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/xishi"><img width="280" height="250" src="http://i1.bagong.cn/24/96/7e063aa5f13bc38c224ddcade3e5_280x250_1.jpg" alt='西施犬|西施,赛珠犬,菊花犬,狮子犬,狮毛犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>西施犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xunxue">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/xunxue"><img width="280" height="250" src="http://i1.bagong.cn/88/a6/0054d39e10854ac830047a3540cd_280x250_1.jpg" alt='寻血猎犬|英国寻血猎犬,寻血犬,圣休伯特猎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>寻血猎犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xuenarui">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/xuenarui"><img width="280" height="250" src="http://i1.bagong.cn/53/c6/209adbdc694f9fd5764b6cc73c70_280x250_1.jpg" alt='雪纳瑞|史纳莎,史揉查梗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>雪纳瑞</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xiongyalimuyangquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/xiongyalimuyangquan"><img width="280" height="250" src="http://i1.bagong.cn/56/0a/b85fa5620b2b8add0b8376f41bc5_280x250_1.jpg" alt='匈牙利牧羊犬|匈牙利牧羊犬,墩布狗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>匈牙利牧羊犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xigaodi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/xigaodi"><img width="280" height="250" src="http://i1.bagong.cn/de/c5/6bca3be5a2fb76cb7ab65313fa07_280x250_1.jpg" alt='西高地梗|西高地,西高地白梗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>西高地梗</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="J">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="jingba">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/jingba"><img width="280" height="250" src="http://i1.bagong.cn/6c/82/f9a2bac2be3c3b5cdaa5911137ef_280x250_1.jpg" alt='京巴犬|京吧,京吧犬,北京犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>京巴犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="jiwawa">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/jiwawa"><img width="280" height="250" src="http://i1.bagong.cn/81/dc/31561a7e4c4920002c5c6361d42b_280x250_1.jpg" alt='吉娃娃|芝娃娃,奇娃娃,齐花花玩赏犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>吉娃娃</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="jvxue">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/jvxue"><img width="280" height="250" src="http://i1.bagong.cn/a4/69/6c41402506dc7ccef714dadcb9b6_280x250_1.jpg" alt='巨型雪纳瑞|巨型雪娜瑞,巨型史纳莎'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>巨型雪纳瑞</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="jiekeluosugeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/jiekeluosugeng"><img width="280" height="250" src="http://i1.bagong.cn/7b/2c/9f51bd1dc68b3fd6c2ee174ad454_280x250_1.jpg" alt='杰克罗素梗|帕尔森罗塞尔梗,杰克罗塞梗,杰克罗素狗,杰克罗素犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>杰克罗素梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="jinmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/jinmao"><img width="280" height="250" src="http://i1.bagong.cn/ce/8c/1042054e65951b88c57de549f519_280x250_1.jpg" alt='金毛犬|金毛,金毛寻回犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>金毛犬</h4>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="M">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="mashitifuquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/mashitifuquan"><img width="280" height="250" src="http://i1.bagong.cn/7a/36/1353b1322128cdf47e4c0afd7f24_280x250_1.jpg" alt='马士提夫獒犬|大獒,马士提夫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>马士提夫獒犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="maerjisi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/maerjisi"><img width="280" height="250" src="http://i1.bagong.cn/ca/f9/a8c192cdbdd2b6d17efabc0b1260_280x250_1.jpg" alt='玛尔济斯|马尔基斯,马尔济斯犬,马尔济斯'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>玛尔济斯</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="minipin">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/minipin"><img width="280" height="250" src="http://i1.bagong.cn/d2/fa/6e8a982f87dfd42d7370bd9f7079_280x250_1.jpg" alt='迷你杜宾|迷你品,迷你杜宾犬,小鹿犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>迷你杜宾</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="meiguoliehuquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/meiguoliehuquan"><img width="280" height="250" src="http://i1.bagong.cn/08/c7/fc6d9beb48cf7eac3e3e05c291fb_280x250_1.jpg" alt='美国猎狐犬|美洲猎狐犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>美国猎狐犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="meika">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/meika"><img width="280" height="250" src="http://i1.bagong.cn/30/f2/10ba5a88f7a8f7bd8b305d9afa14_280x250_1.jpg" alt='美国可卡犬|可卡,美卡,可卡獚,斗鸡獚'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>美国可卡犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="mixue">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/mixue"><img width="280" height="250" src="http://i1.bagong.cn/53/c6/209adbdc694f9fd5764b6cc73c70_280x250_1.jpg" alt='迷你雪纳瑞|迷你雪娜瑞,迷你史纳莎'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>迷你雪纳瑞</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="G">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="gaojiasuo">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/gaojiasuo"><img width="280" height="250" src="http://i1.bagong.cn/4c/8b/bf7814f1aedac16e66f46fe6b0cd_280x250_1.jpg" alt='高加索犬|奥特卡犬,高加索牧羊犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>高加索犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="gedengxueda">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/gedengxueda"><img width="280" height="250" src="http://i1.bagong.cn/a4/7c/9fa5a91f466944ffc8f578286a92_280x250_1.jpg" alt='戈登雪达犬|戈登赛特犬,哥顿雪达犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>戈登雪达犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="guanmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/guanmao"><img width="280" height="250" src="http://i1.bagong.cn/05/ea/7dc8dd7d470b4287c53bc6a1cc02_280x250_1.jpg" alt='冠毛犬|中国冠毛犬,中国无毛犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>冠毛犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="guibing">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/guibing"><img width="280" height="250" src="http://i1.bagong.cn/df/10/212a2bcc40bdc7d2d85f43c37f7f_280x250_1.jpg" alt='标准贵宾犬|贵妇犬,贵宾,标准贵宾'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>标准贵宾犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="gumu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/gumu"><img width="280" height="250" src="http://i1.bagong.cn/4f/a0/8b37b8e6290ec2a18cb77f56aa93_280x250_1.jpg" alt='古代英国牧羊犬|古牧,英国古代牧羊犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>古代英国牧羊犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="S">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="shapi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/shapi"><img width="280" height="250" src="http://i1.bagong.cn/75/b8/8306dcb4d375b1c7cbea92ea9154_280x250_1.jpg" alt='沙皮犬|沙皮,大沥沙皮,沙皮狗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>沙皮犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="simaogeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/simaogeng"><img width="280" height="250" src="http://i1.bagong.cn/a6/87/99768f26488629d08849b40daf3f_280x250_1.jpg" alt='丝毛梗|澳洲丝毛梗,澳大利亚梗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>丝毛梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="shengbona">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/shengbona"><img width="280" height="250" src="http://i1.bagong.cn/90/9b/53c0fc2123534ef1ede62e08613e_280x250_1.jpg" alt='圣伯纳犬|圣伯纳,阿尔卑斯山獒'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>圣伯纳犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="sumu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/sumu"><img width="280" height="250" src="http://i1.bagong.cn/70/1d/9e69952bf006b82233cc9dc42104_280x250_1.jpg" alt='苏格兰牧羊犬|苏牧,柯利牧羊犬,粗毛柯利犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>苏格兰牧羊犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="saluji">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/saluji"><img width="280" height="250" src="http://i1.bagong.cn/55/cf/b7f719fd59b92ca42f122a6a7a7e_280x250_1.jpg" alt='萨路基猎犬|阿拉伯猎犬,猎羚犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>萨路基猎犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="sugelangeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/sugelangeng"><img width="280" height="250" src="http://i1.bagong.cn/7a/23/61d7dddade75603bad2f91ddf4f4_280x250_1.jpg" alt='苏格兰梗|亚伯丁梗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>苏格兰梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="sibingeliequan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/sibingeliequan"><img width="280" height="250" src="http://i1.bagong.cn/47/ad/5a2793cd4a578eb5186fd63219fe_280x250_1.jpg" alt='英国跳猎犬|史宾格猎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>英国跳猎犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="samoye">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/samoye"><img width="280" height="250" src="http://i1.bagong.cn/06/a4/c4f1d62a3be5bda9c097746705e9_280x250_1.jpg" alt='萨摩耶犬|萨摩耶,萨莫耶,萨摩耶德犬,萨摩'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>萨摩耶犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="songshi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/songshi"><img width="280" height="250" src="http://i1.bagong.cn/a3/ca/b8bca11f1819222e11c8b794f9bc_280x250_1.jpg" alt='松狮犬|松狮,熊狮犬,中国食犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>松狮犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="D">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="douniugeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/douniugeng"><img width="280" height="250" src="http://i1.bagong.cn/e8/2a/19bf7b6bb0ed1be070612ba25d1b_280x250_1.jpg" alt='斗牛梗|斗兽场斗牛梗,美国斗牛犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>斗牛梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="dabaixiong">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/dabaixiong"><img width="280" height="250" src="http://i1.bagong.cn/ed/dc/2559c798ae865149041ae9ce9f0f_280x250_1.jpg" alt='大白熊犬|大白熊,比利牛斯山地犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>大白熊犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="dugao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/dugao"><img width="280" height="250" src="http://i1.bagong.cn/3d/3b/88328234e25f500f5d0a488e16f5_280x250_1.jpg" alt='杜高犬|阿根廷獒阿,根廷杜高'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>杜高犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="dadan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/dadan"><img width="280" height="250" src="http://i1.bagong.cn/ad/ca/f65f074a775b7dfc790027e7dee8_280x250_1.jpg" alt='大丹犬|大丹,德国猛犬,德国马士'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>大丹犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="demu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/demu"><img width="280" height="250" src="http://i1.bagong.cn/46/c0/e54ef677fc08bfa679479c6857ac_280x250_1.jpg" alt='德国牧羊犬|牧羊犬,工作犬,畜牧与守卫犬,黑背'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>德国牧羊犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="dubin">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/dubin"><img width="280" height="250" src="http://i1.bagong.cn/48/4b/078887610852532970df08ec6e48_280x250_1.jpg" alt='杜宾犬|多伯曼犬,笃宾犬,德国杜宾'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>杜宾犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="douniuaoquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/douniuaoquan"><img width="280" height="250" src="http://i1.bagong.cn/8d/07/33f5a392373666b816e05c6cd1d2_280x250_1.jpg" alt='斗牛獒犬|斗牛马士提夫犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>斗牛獒犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="K">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="kunming">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/kunming"><img width="280" height="250" src="http://i1.bagong.cn/de/17/8bea3c32469892cc5597e24a3920_280x250_1.jpg" alt='昆明犬|狼狗,狼犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>昆明犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="kaililan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/kaililan"><img width="280" height="250" src="http://i1.bagong.cn/ed/99/627b9aafd99643a766cb82f2e2ff_280x250_1.jpg" alt='凯利蓝梗|爱尔兰梗,凯利兰,凯莉蓝'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>凯利蓝梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="kasiluo">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/kasiluo"><img width="280" height="250" src="http://i1.bagong.cn/6c/6f/050d28ae631eb58606b4e80abfde_280x250_1.jpg" alt='卡斯罗犬|意大利卡斯罗犬,卡斯罗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>卡斯罗犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="keka">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/keka"><img width="280" height="250" src="http://i1.bagong.cn/c1/92/bac76c0d3fa3aec67db7da97e884_280x250_1.jpg" alt='可卡犬|曲架犬,猎鹬犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>可卡犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="kejiquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/kejiquan"><img width="280" height="250" src="http://i1.bagong.cn/ae/57/1e3461855300fdc5f11b89e8e415_280x250_1.jpg" alt='威尔士柯基|柯基犬,威尔士柯基犬,彭不罗克威尔士柯基犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>威尔士柯基</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="L">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="luoweina">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/luoweina"><img width="280" height="250" src="http://i1.bagong.cn/53/6f/de63911adfd2a0f78884f5e338e2_280x250_1.jpg" alt='罗威纳犬|罗威娜,罗威那,洛威拿'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>罗威纳犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="lachang">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/lachang"><img width="280" height="250" src="http://i1.bagong.cn/47/fb/5333189afe1cc336e650e9b80fd5_280x250_1.jpg" alt='腊肠犬|腊肠,猪獾犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>腊肠犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="lingti">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/lingti"><img width="280" height="250" src="http://i1.bagong.cn/7c/1d/60c9551f187937861ed24f31b995_280x250_1.jpg" alt='灵缇|格雷伊猎犬,灵缇犬,意大利灵缇犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>灵缇</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="lielang">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/lielang"><img width="280" height="250" src="http://i1.bagong.cn/e3/ef/0677af76b24e1bb511d0a401702e_280x250_1.jpg" alt='苏俄猎狼犬|俄罗斯猎狼犬,波索尔,俄罗斯猎狼'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>苏俄猎狼犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="labuladuo">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/labuladuo"><img width="280" height="250" src="http://i1.bagong.cn/37/fe/d4cf6af4630ee585d5bbaec0f2c7_280x250_1.jpg" alt='拉布拉多犬|拉布拉多,拉不拉多,拉拉,拉布拉多寻回犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>拉布拉多犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="liehu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/liehu"><img width="280" height="250" src="http://i1.bagong.cn/81/6f/008b93e0a4c3bb2cc780f27927e3_280x250_1.jpg" alt='刚毛猎狐梗|猎狐梗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>刚毛猎狐梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="lasaquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/lasaquan"><img width="280" height="250" src="http://i1.bagong.cn/27/73/6af69c9a56c20b4220935c13f822_280x250_1.jpg" alt='拉萨犬|西藏犬,拉萨狮子犬,西藏梗'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>拉萨犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="H">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="helanmaoshiquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/helanmaoshiquan"><img width="280" height="250" src="http://i1.bagong.cn/53/04/3e3f50e916fc6bd17b82db98da07_280x250_1.jpg" alt='荷兰毛狮犬|荷兰狮毛犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>荷兰毛狮犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="huibitequan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/huibitequan"><img width="280" height="250" src="http://i1.bagong.cn/7d/c7/581a2e0a7e8829020c62f63e0a9a_280x250_1.jpg" alt='惠比特犬|威比特犬,惠比特,鞭犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>惠比特犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="hashiqi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/hashiqi"><img width="280" height="250" src="http://i1.bagong.cn/22/81/7b61621056cd21e5f2dccbb0d8ec_280x250_1.jpg" alt='哈士奇|哈士其,雪橇犬,西伯利亚雪橇犬,二哈'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>哈士奇</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="hudie">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/hudie"><img width="280" height="250" src="http://i1.bagong.cn/3f/03/346ca51c8d8950f29033f28eccde_280x250_1.jpg" alt='蝴蝶犬|蝶耳犬,松鼠猎鹬犬,蝴蝶'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>蝴蝶犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="N">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="niufenlan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/niufenlan"><img width="280" height="250" src="http://i1.bagong.cn/a1/d6/9841a96b354ab3ea04f0b0220358_280x250_1.jpg" alt='纽芬兰犬|纽芬兰'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>纽芬兰犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="nabulesiao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/nabulesiao"><img width="280" height="250" src="http://i1.bagong.cn/a0/0b/a41ad963c0312c5ce3582672e6da_280x250_1.jpg" alt='那不勒斯獒|拿波里獒犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>那不勒斯獒</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="niutougeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/niutougeng"><img width="280" height="250" src="http://i1.bagong.cn/6b/33/de6e382a6cfbd5097425a0245f15_280x250_1.jpg" alt='牛头梗|牛头梗犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>牛头梗</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="T">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="taidi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/taidi"><img width="280" height="250" src="http://i1.bagong.cn/bb/5b/acec161a47f66e906023b7d8032e_280x250_1.jpg" alt='泰迪犬|泰迪,泰迪熊'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>泰迪犬</h4>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="Q">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="quanshi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/quanshi"><img width="280" height="250" src="http://i1.bagong.cn/d6/af/8d1bb8a83d779bd980fbca38df7f_280x250_1.jpg" alt='拳师犬|拳师犬,拳师,拳狮,德国拳师犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>拳师犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="qiutian">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/qiutian"><img width="280" height="250" src="http://i1.bagong.cn/9a/d7/a2492adca94989fe9958bcd496f8_280x250_1.jpg" alt='秋田犬|日本狼青,秋田,日本秋田'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>秋田犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="Y">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="yingka">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/yingka"><img width="280" height="250" src="http://i1.bagong.cn/03/0f/16a173b0b5ea23e7b37897c40267_280x250_1.jpg" alt='英国可卡犬|英卡,可卡,英国长毛獚'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>英国可卡犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="yuekexia">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/yuekexia"><img width="280" height="250" src="http://i1.bagong.cn/dd/d0/86a538d08491bf77b4e25cc67a32_280x250_1.jpg" alt='约克夏|约克夏梗,约克郡梗,约瑟犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>约克夏</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="yinhu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/yinhu"><img width="280" height="250" src="http://i1.bagong.cn/94/92/c64a97458c9f9467d7afa274cf94_280x250_1.jpg" alt='银狐犬|日本丝（绒）毛犬,日本尖嘴犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>银狐犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="yingguoliehuquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/yingguoliehuquan"><img width="280" height="250" src="http://i1.bagong.cn/ca/5b/32fb17745ff5fae0aa88333c632b_280x250_1.jpg" alt='英国猎狐犬|猎狐犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>英国猎狐犬</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="yingdou">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/yingdou"><img width="280" height="250" src="http://i1.bagong.cn/18/0f/26608cce8014adc6b0134381ba31_280x250_1.jpg" alt='英国斗牛犬|英斗,斗牛犬,老虎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>英国斗牛犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="P">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="putaoyashuiquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/putaoyashuiquan"><img width="280" height="250" src="http://i1.bagong.cn/19/cf/6b704e413d56a1c660c7ea9a0054_280x250_1.jpg" alt='葡萄牙水犬|葡萄牙水猎犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>葡萄牙水犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="C">
                            <ul class="thumbnails list-unstyled">

                                <li class="col-sm-3" data-k="chaiquan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/chaiquan"><img width="280" height="250" src="http://i1.bagong.cn/cd/b0/db7098a44f0d4d11410208c97754_280x250_1.jpg" alt='柴犬|日本柴犬,西巴犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>柴犬</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="W">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="weiershigeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/weiershigeng"><img width="280" height="250" src="http://i1.bagong.cn/9f/2d/1f3eda3e7c3d2051fe27fa4cbc90_280x250_1.jpg" alt='威尔士梗|'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>威尔士梗</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="wannenggeng">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/wannenggeng"><img width="280" height="250" src="http://i1.bagong.cn/bc/ff/da62254d6217b394d9efcbdc4e00_280x250_1.jpg" alt='万能梗|艾里梗,梗王,河畔犬,宾格利犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>万能梗</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="Z">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="zangao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/dog/zangao"><img width="280" height="250" src="http://i1.bagong.cn/73/53/1469f9a368322a8d4745b6822be8_280x250_1.jpg" alt='藏獒|西藏獒犬,藏獒犬'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>藏獒</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                       </div>
                        <hr>
                        <center><button id="btn" class="btn btn-default" onclick="a()">展开</button></center>
                    </div>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">热点问题</h3>
                </div>
                <div class="panel-body">
                    <h3>话题一:文明养犬</h3>
                    <p style="text-indent:2em;">狗狗作为人类培育几千年来的家畜，被认为是人类最忠实的无言陪伴，近几年在城市里更是作为宠物犬成为家庭的一分子，宠物犬的地位也从最初的狩猎和看家护院到现在的家庭成员和感情寄托，但是回顾2019年，你会发现关于宠物犬，尤其是城市里养犬，最大最热门的话题，不再是宠物犬的品种血统，而是更多的关注评论关于文明养犬，依法养犬，似乎人犬矛盾达到了某个零界点！</p>
                <p style="text-indent:2em;">其实关于文明养犬之所以成为人们对于宠物犬关注的焦点，首先在于时代的发展，人们的生活环境以及城市化发展的推进，使得人们的生活空间变得更加狭小，而且生活也越来越格式化！因此人们需要宠物犬这样的忠实欢乐的陪伴，来增添生活的乐趣和情感的抒发！因此而造成的宠物犬数量直线增长，尤其是城市里人们的生活环境越来越蜂居式，人犬接触的机会大大增加！</p>
               <p style="text-indent:2em;">其次是宠物犬主人的素质参差不齐，在人犬接触几率大大增加的同时，宠物犬干扰他人生活的事情也就越来越清晰，比如吠叫扰民，甚至伤害到他人的出行安全，比如宠物犬伤人，这些行为已经严重影响到他人正常生活，所以是引发人犬矛盾的关键因素，也是倡导文明养犬的关键所在！其中以遛狗牵绳最为突出，因为切实关乎到他人的出行安全，尤其是现在社会的最为敏感的老龄化和妇女儿童！</p>
                <p style="text-indent:2em;">还有就是人们生活环境中的安全隐患，已经让人们感觉到安全受到威胁的流浪狗问题，这也是倡导文明养犬的重要一环，因为流浪狗中最严重的问题就是弃养的宠物犬，很多不负责任的主人，感觉宠物犬长大后不可爱了，或者其他原因，将宠物犬抛弃，而这些流浪的宠物犬，处于对人们的依赖，也会围绕人们的生活环境生存，但是因为某些原因而出现的主动或被动的侵扰甚至伤害人们的行为！</p>
               <p style="text-indent:2em;">最后是社会整体素质的提高，倡导文明养犬，是势在必行的结果，城市化的发展把人们集中在了一起，使得家养宠物犬已经走进人们的生活，不仅是主人家的生活也包括周围环境，以及邻里之间的生活，比如“出门狗屎运”，而且同一个小区，同一栋楼，甚至同一层住户，宠物犬影响的已经不仅仅是主人的一家了！最重要的一点是“恶犬伤人”的事件时有发生，切实威胁到人们的生活安全！</p>
           <!--    <p style="text-indent:2em;">而这些问题似乎在即将过去的一年显得格外突出，所以才会产生文明养犬这个热门话题，因为这些问题切实关系到我们芸芸众生的实际生活！因此现在大部分城市都已经出台了相关的文明养犬管理规定或条例，来规范养犬人合理的饲养宠物犬，也希望我们养犬的朋友，在宠物犬给我们带来欢乐的同时，也不要影响到周围街坊邻居，因为环境是我们大家，需要我们共同维护！
               </p>-->
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">室内饲养</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">户外活动</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">预防疾病</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            </div>

<hr>

<!--第四部分-->
        <div id="add2" class="row banner" style="">
            <div class="col-md-3 ull" style="background-color: #92B8B1;">

                <ul>
                    <li><a href="#">动物品种介绍<span>></span></a></li>
                    <li><a href="#add1">憨狗知识窝<span>></span></a></li>
                    <li><a href="#add2">萌猫知识窝<span>></span></a></li>
                    <li><a href="#add3">佩奇知识窝<span>></span></a></li>
                    <li><a href="#add4">其它知识窝<span>></span></a></li>
                </ul>
            </div>


            <div id="myCarousel1" class="carousel slide col-md-9">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel1" data-slide-to="1"></li>
                    <li data-target="#myCarousel1" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="../static/img/cat9.png" alt="First slide">
                        <div class="carousel-caption"><h3>欢迎来到萌猫窝</h3></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/cat10.png"   alt="Second slide">
                        <div class="carousel-caption"><h3>卖萌如我</h3></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/cat11.png" alt="Third slide">
                        <div class="carousel-caption"><h3>一起进入我的世界</h3></div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>


        <div class="row " style="background-color: white">

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        动物品种介绍
                    </h3>
                </div>
                <div class="panel-body">
                    <p style="text-indent:2em;margin:10px 0">猫，属于猫科动物，分家猫、野猫，是全世界家庭中较为广泛的宠物。家猫的祖先据推测是起源于古埃及的沙漠猫，波斯的波斯猫，已经被人类驯化了3500年（但未像狗一样完全地被驯化）。一般的猫：头圆、颜面部短，前肢五指，后肢四趾，趾端具锐利而弯曲的爪，爪能伸缩。夜行性。以伏击的方式猎捕其他动物，大多能攀缘上树。猫的趾底有脂肪质肉垫，以免在行走时发出声响，捕猎时也不会惊跑鼠。行进时爪子处于收缩状态，防止爪被磨钝，在捕鼠和攀岩时会伸出来。</p>
                    <p style="text-indent:2em;margin:10px 0">物种始源:猫，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧，样子招人喜爱。好奇心重。</p>
                    <p style="text-indent:2em;margin:10px 0"> 形态特征:猫的身体分为头、颈、躯干、四肢和尾五部分，大多数部位披毛，少数为无毛猫。猫的趾底有脂肪质肉垫，因而行走无声，捕鼠时不会惊跑鼠，趾端生有锐利的指甲。爪能够缩进和伸出。猫在休息和行走时爪缩进去，只在捕鼠和攀爬时伸出来，防止指甲被磨钝。猫的前肢有五指，后肢有四指。猫的牙齿分为门齿、犬齿和臼齿。犬齿特别发达，尖锐如锥，适于咬死捕到的鼠类，臼齿的咀嚼面有尖锐的突起，适于把肉嚼碎；门齿不发达。</p>
                    <p style="text-indent:2em;margin:10px 0">猫还能从它的牙齿来判断它的年龄:成年猫咪的牙齿共30枚。幼年猫咪的牙齿共26枚。
                        猫的牙齿从两边往中间分别是：上排——臼齿大臼齿前臼齿犬齿6颗门齿下排——大臼齿前臼齿犬齿6颗门齿，14天左右开始长牙，2～3周龄乳门牙长齐。近两月龄时，乳牙全部长齐，呈白色，细而尖，3～4月龄更换第一乳门牙，5～6月龄换第二三乳门齿及乳犬牙，6月龄以后全部换上恒齿，8月龄恒齿长齐，洁白光亮，门齿上部有尖凸，1岁下颌第二门齿大尖峰，磨损至小尖峰平齐，此现象称为尖峰磨灭，2岁下颌第二门齿尖峰磨灭，3岁上颌第一门齿尖峰磨灭，4岁上颌第二门齿尖峰磨灭，5岁下颌第三门齿尖峰稍磨损，下颌第一二门齿磨损面为矩形，5.5岁下颌第三齿尖磨灭，犬齿钝圆，6.5岁下颌第一门齿磨损至齿根部，磨损面为纵椭圆形，7.5岁下颌第一门齿磨损面向前方倾斜，8.5岁下颌第二及上颌第一门齿磨损面呈纵椭圆形，9～16岁门齿脱落犬齿不齐</p>
                    <p style="text-indent:2em;margin:10px 0">生活习性:猫行动敏捷，善跳跃。吃鱼，鼠，兔等。猫之所以喜爱吃鱼和老鼠，是因为猫是夜行动物，为了在夜间能看清事物，需要大量的牛磺酸，而老鼠和鱼的体内就含牛磺酸，所以猫不仅仅是因为喜欢吃鱼和老鼠，也是因为自己的需要才吃。猫作为鼠类的天敌，可以有效减少鼠类对青苗等作物的损害，由猫的字形“苗”可见中国古代农业生活之。￼￼￼猫能在高墙上若无其事地散步，轻盈跳跃，不禁折服于它的平衡感。这主要得益于猫的出类拔萃的反应神经和平衡感。它只需轻微地改变尾巴的位置和高度就可取得身体的平衡，再利用后脚强健的肌肉和结实的关节就可敏捷地跳跃，即使在高空中落下也可在空中改变身体姿势，轻盈准确地落地。善于爬高，但却不善于从顶点下落。即使从高处掉下或者跳下来的时候，猫靠尾巴调整平衡，使带软垫的四肢着地。注意不要拽断猫的尾巴，会影响它的平衡能力，也会容易使猫腹泻，减短猫的寿命。</p>
                    <hr>
                    <center><h3>猫猫品种大全</h3></center>
                    <div class="tab-content clearfix" style="background: #fff">
                        <div role="tabpanel" class="tab-pane active" id="X1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="xuexie">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/xuexie"><img width="280" height="250" src="http://i1.bagong.cn/0e/62/d29f23921e28c9434a302e83193c_280x250_1.jpg" alt='雪鞋猫|雪鞋猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>雪鞋猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xianluo">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/xianluo"><img width="280" height="250" src="http://i1.bagong.cn/02/1b/29b0a92022d02be700da1a77e53c_280x250_1.jpg" alt='暹罗猫|西母猫,泰国猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>暹罗猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xinjiapo">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/xinjiapo"><img width="280" height="250" src="http://i1.bagong.cn/a1/86/5880a15cb1310bada6f12b92bcc4_280x250_1.jpg" alt='新加坡猫|阴沟猫|下水道猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>新加坡猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="ximalaya">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/ximalaya"><img width="280" height="250" src="http://i1.bagong.cn/56/40/f499c879f238e59dd4f0284a7aa3_280x250_1.jpg" alt='喜玛拉雅猫|重点色波斯猫|彩色斑点长毛猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>喜玛拉雅猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="xiboliya">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/xiboliya"><img width="280" height="250" src="http://i1.bagong.cn/58/17/54a402cdd435fde646f910dc7e70_280x250_1.jpg" alt='西伯利亚猫|西伯利亚森林猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>西伯利亚猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="K1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="kelate">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/kelate"><img width="280" height="250" src="http://i1.bagong.cn/a9/82/a8831d4823d23d8e0d44b682fcba_280x250_1.jpg" alt='柯拉特猫|考拉特猫|呵叻猫|银猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>柯拉特猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="kenisijuanmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/kenisijuanmao"><img width="280" height="250" src="http://i1.bagong.cn/a6/b1/505c0e173aef4c223fa12c71ec32_280x250_1.jpg" alt='柯尼斯卷毛猫|康沃耳帝王猫|帝王猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>柯尼斯卷毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="D1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="dongqini">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/dongqini"><img width="280" height="250" src="http://i1.bagong.cn/87/b9/8ed37b1d4a7ae3dd9ee13c452658_280x250_1.jpg" alt='东奇尼猫|越南猫,金暹罗猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>东奇尼猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="dewenjuanmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/dewenjuanmao"><img width="280" height="250" src="http://i1.bagong.cn/1c/88/b14fb41480fa3d8ff440b69ae486_280x250_1.jpg" alt='德文卷毛猫|德文帝王猫,王猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>德文卷毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="dongfang">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/dongfang"><img width="280" height="250" src="http://i1.bagong.cn/7c/ad/3e43a7ed06b7bd597f020407d047_280x250_1.jpg" alt='东方猫|东方短毛猫|东方长毛猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>东方猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div id="spread1">
                        <div role="tabpanel" class="tab-pane active" id="Y1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="yingguoduanmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/yingguoduanmao"><img width="280" height="250" src="http://i1.bagong.cn/dd/0d/7f9884d25d9153e563a70b192bcf_280x250_1.jpg" alt='英国短毛猫|英短,蓝猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>英国短毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="yiguo">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/yiguo"><img width="280" height="250" src="http://i1.bagong.cn/d2/1d/752f8a2e901b2f4a921c6450eae0_280x250_1.jpg" alt='异国猫|奇异猫,外来种猫,短毛猫,异国短毛猫,短毛波斯猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>异国猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="M1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="moiguojuaner">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/moiguojuaner"><img width="280" height="250" src="http://i1.bagong.cn/5c/8d/c47d23fba7664458dffb205e5ca3_280x250_1.jpg" alt='美国卷耳猫|美国反耳猫,美卷耳'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>美国卷耳猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="mandao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/mandao"><img width="280" height="250" src="http://i1.bagong.cn/f3/a4/6698af3c450565d3a1269ed61511_280x250_1.jpg" alt='曼岛猫|曼岛无尾猫|海曼岛猫|曼克斯猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>曼岛猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="mianyin">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/mianyin"><img width="280" height="250" src="http://i1.bagong.cn/9b/e3/efaa3e2363626915da1074d45457_280x250_1.jpg" alt='缅因猫|缅因库恩猫|缅因浣熊猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>缅因猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="moiguoyingmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/moiguoyingmao"><img width="280" height="250" src="http://i1.bagong.cn/be/dd/136695b8547d8c250aa5de719149_280x250_1.jpg" alt='美国硬毛猫|美国刚毛猫|美硬毛'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>美国硬毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="manqiekan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/manqiekan"><img width="280" height="250" src="http://i1.bagong.cn/63/80/74ab1f5a9b4f3d84d1bb95943db6_280x250_1.jpg" alt='曼切堪猫|曼基康猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>曼切堪猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="miandian">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/miandian"><img width="280" height="250" src="http://i1.bagong.cn/d4/df/e4d7107c3fc1ba3f82473abe1712_280x250_1.jpg" alt='缅甸猫|缅甸短毛猫|缅短'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>缅甸猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="moiguoduanwoi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/moiguoduanwoi"><img width="280" height="250" src="http://i1.bagong.cn/41/93/d3d737404dbfcba1adf91dabf637_280x250_1.jpg" alt='美国短尾猫|美短尾,虎斑'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>美国短尾猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="mengmai">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/mengmai"><img width="280" height="250" src="http://i1.bagong.cn/71/cb/8c6b0d6182dad29c7609e6bb7c3f_280x250_1.jpg" alt='孟买猫|小黑豹|黑孟买|蒙娜丽莎的萌猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>孟买猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="moiguoduanmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/moiguoduanmao"><img width="280" height="250" src="http://i1.bagong.cn/f2/ff/ba986b85a5e17fffd3046533cf50_280x250_1.jpg" alt='美国短毛猫|美短,棕色标准虎斑猫,虎斑'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>美国短毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="J1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="jianadawumao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/jianadawumao"><img width="280" height="250" src="http://i1.bagong.cn/a2/d3/b2ec7d2b7850e83ce487bd9566d5_280x250_1.jpg" alt='加拿大无毛猫|无毛猫|斯芬克斯猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>加拿大无毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="jinjila">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/jinjila"><img width="280" height="250" src="http://i1.bagong.cn/5d/d7/bbbca76f302f34ec5e06908e9125_280x250_1.jpg" alt='金吉拉|金吉拉'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>金吉拉</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="jiafei">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/jiafei"><img width="280" height="250" src="http://placehold.it/280x250" alt='加菲猫|加菲猫,异国短毛猫,波斯猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>加菲猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="O1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="ouzhoumiandian">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/ouzhoumiandian"><img width="280" height="250" src="http://i1.bagong.cn/8d/75/17690beb4f907371067bb49f95df_280x250_1.jpg" alt='欧洲缅甸猫|欧洲缅甸|欧缅'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>欧洲缅甸猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="S1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="sugelanzheer">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/sugelanzheer"><img width="280" height="250" src="http://i1.bagong.cn/85/0f/99475f7cf7ec214540fe108f068d_280x250_1.jpg" alt='苏格兰折耳猫|折耳猫|塌耳猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>苏格兰折耳猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="shandongshizi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/shandongshizi"><img width="280" height="250" src="http://i1.bagong.cn/9a/f3/39e04bf99d67a65dd782700fe80b_280x250_1.jpg" alt='山东狮子猫|临清狮子猫|中国大白猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>山东狮子猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="saierkaikejuanmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/saierkaikejuanmao"><img width="280" height="250" src="http://i1.bagong.cn/a7/72/0f1c28a2ccbf8c6ac30cbfbee822_280x250_1.jpg" alt='塞尔凯克卷毛猫|斯可可猫|塞尔凯克猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>塞尔凯克卷毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="suomali">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/suomali"><img width="280" height="250" src="http://i1.bagong.cn/45/a0/1e3e5e4ac48fb391d516bb25d75b_280x250_1.jpg" alt='索马里猫|长毛阿比|索马利猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>索马里猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="Z1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="zhongguotumao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/zhongguotumao"><img width="280" height="250" src="http://placehold.it/280x250" alt='土猫|土猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>土猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="zhongdianseduanmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/zhongdianseduanmao"><img width="280" height="250" src="http://i1.bagong.cn/1a/b7/126d70a81e96504f5727c0137fe2_280x250_1.jpg" alt='重点色短毛猫|重点色|端子色短毛猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>重点色短毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="zhongguolihua">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/zhongguolihua"><img width="280" height="250" src="http://i1.bagong.cn/22/56/00dd7de7981dacbd603deac9c0f0_280x250_1.jpg" alt='中国狸花猫|狸花猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>中国狸花猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="N1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="neihuada">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/neihuada"><img width="280" height="250" src="http://i1.bagong.cn/fd/ca/eb5043b070a4fc6fd6521e2dfbba_280x250_1.jpg" alt='内华达猫|尼比龙猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>内华达猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="nuoweisenlin">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/nuoweisenlin"><img width="280" height="250" src="http://i1.bagong.cn/34/fb/4666b527ac734014510242f2aa70_280x250_1.jpg" alt='挪威森林猫|挪威森林|森林猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>挪威森林猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="B1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="buou">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/buou"><img width="280" height="250" src="http://i1.bagong.cn/3f/31/f80b32813de46de550ced07cff51_280x250_1.jpg" alt='布偶猫|布娃娃猫|玩偶猫|布...'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>布偶猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bali">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/bali"><img width="280" height="250" src="http://i1.bagong.cn/03/49/0908e1018f4e2d111864861fff03_280x250_1.jpg" alt='巴厘猫|长毛暹罗猫,爪哇猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>巴厘猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bomila">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/bomila"><img width="280" height="250" src="http://i1.bagong.cn/93/07/b2d4be1f00a6df3df9b2e790828a_280x250_1.jpg" alt='波米拉猫|博美拉猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>波米拉猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="boman">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/boman"><img width="280" height="250" src="http://i1.bagong.cn/05/b1/29763655bc4cf0910e6d812951b0_280x250_1.jpg" alt='伯曼猫|波曼猫,巴曼猫,缅甸...'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>伯曼猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bidetu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/bidetu"><img width="280" height="250" src="http://i1.bagong.cn/ab/16/a4c743d308fbb51ef4f494b26884_280x250_1.jpg" alt='彼得秃猫|彼得秃猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>彼得秃猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="bosi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/bosi"><img width="280" height="250" src="http://i1.bagong.cn/06/68/731e8930471ad0ec6f94f276c4bb_280x250_1.jpg" alt='波斯猫|波斯猫儿|波丝'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>波斯猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="E1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="eluosilan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/eluosilan"><img width="280" height="250" src="http://i1.bagong.cn/7f/70/4f998ad27f3b7c73c94eb0d160e2_280x250_1.jpg" alt='俄罗斯蓝猫|俄罗斯蓝猫|俄国短毛...'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>俄罗斯蓝猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="A1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="abixiniya">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/abixiniya"><img width="280" height="250" src="http://i1.bagong.cn/38/04/c7601fd815fb654673cdece22238_280x250_1.jpg" alt='阿比西尼亚猫|兔猫,阿比,红阿比,埃塞俄比亚猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>阿比西尼亚猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="aiji">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/aiji"><img width="280" height="250" src="http://i1.bagong.cn/4a/a6/2309204914a21047130496d17c0e_280x250_1.jpg" alt='埃及猫|法老王猫|埃及神猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>埃及猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="aoxi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/aoxi"><img width="280" height="250" src="http://i1.bagong.cn/14/7f/88ebb89fe6af43b15edf4403e5f9_280x250_1.jpg" alt='奥西猫|奥西猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>奥西猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="T1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="tuerqifan">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/tuerqifan"><img width="280" height="250" src="http://i1.bagong.cn/09/0d/e65805de5a79197ee1dfb348a1e0_280x250_1.jpg" alt='土耳其梵猫|梵猫|凡湖'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>土耳其梵猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="tuerqiangela">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/tuerqiangela"><img width="280" height="250" src="http://i1.bagong.cn/81/d5/338ee7de3605efedea3c2dbad6c2_280x250_1.jpg" alt='土耳其安哥拉猫|安哥拉猫|安卡拉猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>土耳其安哥拉猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="H1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="hawanazongmao">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/hawanazongmao"><img width="280" height="250" src="http://i1.bagong.cn/cf/dc/8b1fba8a0aa2b7317a93398671fd_280x250_1.jpg" alt='哈瓦纳棕毛猫|哈瓦那褐猫,哈瓦那'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>哈瓦纳棕毛猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="Q1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="qiaerte">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/qiaerte"><img width="280" height="250" src="http://i1.bagong.cn/3e/7a/0f1b0a45a785efe892fae525a527_280x250_1.jpg" alt='卡尔特猫|夏特尔猫|沙特尔猫|传教士蓝猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>卡尔特猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="R1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="ribonduanwoi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/ribonduanwoi"><img width="280" height="250" src="http://i1.bagong.cn/36/6c/2eefa4cea2c481a3a6e21939f2e1_280x250_1.jpg" alt='日本短尾猫|日本截尾猫|日短尾'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>日本短尾猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="L1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="labang">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/labang"><img width="280" height="250" src="http://i1.bagong.cn/ad/33/3c349b2dbca90e6988211c66d2fd_280x250_1.jpg" alt='拉邦猫|电烫卷猫|达拉斯猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>拉邦猫</h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3" data-k="lanlu">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/lanlu"><img width="280" height="250" src="http://i1.bagong.cn/51/50/9a1465ea628c669d2cf1d686d9e5_280x250_1.jpg" alt='褴褛猫|褴褛'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>褴褛猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div role="tabpanel" class="tab-pane active" id="W1">
                            <ul class="thumbnails list-unstyled">
                                <li class="col-sm-3" data-k="weiershi">
                                    <div class="fff">
                                        <div class="thumbnail">
                                            <a href="/cat/weiershi"><img width="280" height="250" src="http://i1.bagong.cn/d2/9a/f6f8d2c7c34d4df3ea9e9a250900_280x250_1.jpg" alt='威尔士猫|塞尔特猫|韦尔斯猫'></a>
                                        </div>
                                        <div class="caption">
                                            <h4>威尔士猫</h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        </div>
                        <hr>
                        <center><button id="btn1" class="btn btn-default" onclick="a1()">展开</button></center>

                    </div>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">热点问题</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">室内饲养</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">户外活动</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">预防疾病</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

        </div>

<!--第五部分-->
        <div id="add3" class="row banner" style="">
            <div class="col-md-3 ull" style="background-color: #92B8B1;">

                <ul>
                    <li><a href="#">动物品种介绍<span>></span></a></li>
                    <li><a href="#add1">憨狗知识窝<span>></span></a></li>
                    <li><a href="#add2">萌猫知识窝<span>></span></a></li>
                    <li><a href="#add3">佩奇知识窝<span>></span></a></li>
                    <li><a href="#add4">其它知识窝<span>></span></a></li>
                </ul>
            </div>


            <div id="myCarousel2" class="carousel slide col-md-9">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel2" data-slide-to="1"></li>
                    <li data-target="#myCarousel2" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="../static/img/pig1.png" alt="First slide">
                        <div class="carousel-caption"><a>欢迎来到佩奇窝</a></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/pig3.png"   alt="Second slide">
                        <div class="carousel-caption"><a>可爱的狗狗</a></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/pig4.png" alt="Third slide">
                        <div class="carousel-caption">标题 3</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>


        <div class="row " style="background-color: white">

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        动物品种介绍
                    </h3>
                </div>
                <div class="panel-body">
                    <p style="text-indent:2em;margin:10px 0">猪（Pig、Swine）是一种脊椎动物、哺乳动物、家畜，也是古杂食类哺乳动物，主要分为家猪和野猪
                        。当前人们认为猪是猪科动物的简称，猪依据品种的不同，体貌特征也各不相同；通常以耳大，头长，四肢短小，鼻直，身体肥壮，腰背窄为主要形体特征。
                        毛发较粗硬，毛皮颜色通常为白色、粉色、黑色、棕色和花色。</p>
                    <p style="text-indent:2em;margin:10px 0">家猪是野猪被人类驯化后所形成的亚种，獠牙较野猪短，是人类所驯养的家畜之一，一般来说，家猪是指人类蓄养多供食用的猪种类型。</p>

                    <p style="text-indent:2em;margin:10px 0" > 猪是一种杂食类哺乳动物，身体肥壮，四肢短小，鼻子口吻较长，性格温驯，适应力强，繁殖快。有黑、白、酱红或黑白花等色。
                        出生后5～12个月可交配，妊娠期约为4个月，平均寿命20年。是五畜（牛、犬、羊、猪、鸡）之一。在十二生肖里之为亥。历史上有很多关于猪的典故和习俗。
                        人类蓄养家猪的历史相当悠久，不过至16世纪才广为世界所知，中国饲养的猪即是人类最早驯养的猪的直系后代。</p>

                    <h3>动物学分类</h3>
                    <p style="text-indent:2em;">亚种包括：欧洲中部野猪（Sus scrofa）、东南亚野猪（Sus vittatus）和印度野猪（Sus cristatus），染色体数（2n）在36～38之间，
                        虽然染色体数目不同，彼此间没有繁殖障碍。一般认为这三个亚种构成了家猪（Sus domesticus）的培育</p>
                    <h3>名称来源</h3>
                    <p style="text-indent:2em;">书画《猪》既是猪字又有猪形
                    书画《猪》既是猪字又有猪形
                    猪，繁体字“猪”，异体字“瘃{zhú}”古时也称豚，又称彘豚豨，别称刚鬣。又名“印忠”、“汤盎”、“黑面郎”及“黑 爷”。
                    就《朝野佥载》说，唐代洪州人养猪致富，称猪为“汤盎”。唐代《云仙杂记》引《承平旧纂》：“黑面郎，谓猪也。”
                        《史记集解》引邓展曰:“东海人名猪曰豨。”所以汉初陈豨、汉末昌豨都名“豨”。
                        是在华夏的土地上，早在母系氏族公社时期，就已开始饲养猪、狗等家畜。浙江余姚河姆渡新石器文化遗址出土的陶猪，
                        其图形与家猪形体十分相似，说明当时对猪的驯化已具雏形</p>

                    <h3> 生肖由来</h3>
                    <p style="text-indent:2em;">生肖猪剪纸
                    其实猪是一种非常温厚可爱的动物，它有着圆浑厚重的体态，和气量宽广的胸怀。
                    传说古时有个员外，家财万贯，良田万顷，只是膝下无子。谁知年近花甲之时，却得了一子。合家欢喜，亲朋共贺，员外更是大张宴席，庆祝后继有人。
                    嘉宴庆之时，一位相士来到孩子面前，见这孩子宽额大脸，耳阔有轮，天庭饱满，又白又胖，便断言这孩子必是大福大贵之人。
                    但这肥胖小子福里生，福里长，自小只知衣来伸手，饭来张口，不习文武，修农事，只是花天酒地，游手好闲，认为命相已定，福贵无比，
                        不必辛苦操劳。哪知这孩子长大成人之后，父母去世，家道衰落，田产典卖，家仆四散。这胖小子仍然继续过着挥金如土的生活，直到最后饿死在房中，
                        这胖小子死后阴魂不散，到阴曹地府的阎王那里告状，说自己天生富贵这相，不能如此惨淡而亡，阎王将这阴魂带到天上玉帝面前，请玉帝公断，
                        玉帝召来人间灶神，问及这位一脸富贵相的人怎么会饿死房中，灶神便将这胖小子不思学业、不务农事，挥霍荒淫的行为一一禀告。玉帝一听大怒，
                        令差官听旨，要胖小子听候发落，玉帝道：“你命相虽好，却懒惰成性，今罚你为猪，去吃粗糠”这段时间恰逢天宫在挑选生肖。这天宫差官把“吃粗糠”
                        听成了“当生肖”。当即把这胖小子带下人间，从此，胖小子成为一头猪，既吃粗糠，又当上了生肖。
                    </p>
                   <p style="text-indent:2em;margin:10px 0"> 猪靠自己的努力当上了生肖，在天宫排生肖那天，玉帝规定了必须在某个时辰到达天宫，
                       取首先到达的十二种动物为生肖，猪自知体笨行走慢，便半夜起床赶去排队当生肖。由于路途遥远，障碍也多，猪拼死拼活才爬到南天门，
                       但排生肖的时辰已过，但猪苦苦央求，其他五畜也为之求情，最后终于感动了天神，把猪放进南天门，当上了最后一名生肖。这
                       样，马、牛、羊、鸡、狗、猪“六畜”都成了人间的生肖。
                   </p>

                    <h3>猪的品种</h3>
                    <p  style="text-indent:2em;">杜洛克:
                    杜洛克又称为“万能猪种”，原产于美国东部的新泽西州和纽约州等地，主要亲本用纽约州的杜洛克和新泽西州的泽西红杂交育成，原称杜洛克泽西，后筒称杜洛克，分为美系和加系杜洛克；产于中国台湾的杜洛克经过培育自成风格，因而称台湾杜洛克或台系杜洛克 [2]  。
                    </p> <p style="text-indent:2em;margin:10px 0">成华猪:
                    俗话说“家家都有黑毛猪”，这种黑毛猪便是成华猪，全身黑毛、四肢短小、体型膘肥。以前，成华猪是成都猪肉市场的主力品种，也是回锅肉的“最好搭档”。成华猪是成都土生土长的黑毛猪。成华猪分布于四川新都、金堂、广汉、什邡、彭县、灌县、崇州、大邑、新津、德阳、绵竹、龙泉等县市，2013年5月27日，最适合做回锅肉的四川成华猪已濒临灭绝。
                </p><p style="text-indent:2em;margin:10px 0">
                    大白猪:
                    大白猪又叫作“大约克猪”。原产于英国，特称为“英国大白猪”。输入苏联后，经过长期风土驯化和培育，成为“苏联大白猪”。后者的体躯比前者结实、粗壮，四肢强健有力，适于放牧。十八世纪于英国育成。
                </p><p style="text-indent:2em;margin:10px 0">    约克夏猪:
                    约克夏猪是猪的一个著名品种。原产于英国约克郡（Yorkshire，英格兰东北部的一个旧郡，1974年分割为NorthYorkshire，South Yorkshire及West Yorkshire），由当地猪与中国猪等杂交育成。全身白色，耳向前挺立。有大、中、小三种，分别称为“大白猪”、“中白猪”和“小白猪”。大白猪属腌肉型，为全世界分布最广的猪种。体长大，成年公猪体重300至500公斤，母猪200至350公斤。繁殖力强，每胎产仔10到12头。小白猪早熟易肥，属脂肪型。中白猪体型介于两者之间，属肉用型。中国饲养大白猪较多 [2]  。
                </p><p style="text-indent:2em;margin:10px 0">   长白猪:
                    是“兰德瑞斯猪（Landrace）”在中国的通称。著名腌肉型猪品种。原产于丹麦。由当地猪与大白猪杂交育成。全身白色。体躯特长，呈流线型。头狭长、耳大前垂，背腰平直，后躯发达，大腿丰满，四肢较高。生长快，饲料利用率高。皮薄、瘦肉多。每胎产仔11至12头。成年公猪体重400到500公斤，母猪300公斤左右。要求有较好的饲养管理条件。遍布于世界各国 [2]  。
                </p> <p style="text-indent:2em;margin:10px 0"> 汉普夏猪:
                    著名肉用型猪品种。十九世纪初期由英国汉普夏（Hampshire，一译汉普郡）输往美国后，在肯塔基州（Kentucky）经杂交选育而成。毛色黑，肩颈接合部和前肢白色。鼻面稍长而直，正竖立。体躯较长，肌肉发达。成年公猪体重315至410公斤，母猪250至340公斤。早熟性，繁殖力中等，平均每胎产仔8头。母性强。屠体品质高，瘦肉比例大 [2]  。
                </p><p style="text-indent:2em;margin:10px 0">   波中猪:
                    猪的著名品种。原产于美国。由中国猪、俄国猪、英国猪等杂交而成。原属脂肪型，已培育为肉用型。全身黑色，有六白的特征。鼻面直，耳半下垂。体型肥大，成年公猪体重390至450kg，母猪300至400公斤。早熟易肥，屠体品质优良；但繁殖力较弱，每胎性仔8头左右。波中猪是一个家猪品种，1816年形成于美国俄亥俄州的迈阿密谷。波中猪是美国最古老的品种之一。波中猪在相同日龄的条件下，体重超过了其他各类猪种 [2]  。
                  <p/><p style="text-indent:2em;margin:10px 0">  马身猪:
                    马身猪原产于中国山西，体型较大，耳大、下垂超过鼻端，嘴筒长直，背腰平直狭窄，臀部倾斜，四肢坚实有力，皮、毛黑色，皮厚，毛粗而密，冬季密生棕红色绒毛，乳头7～10对。可分为“大马身猪”（大）、“二马身猪”（中）和“钵盂猪”（小）三型。虽生长速度较慢，但胴体瘦肉率较高 [2]  。
                </p>    <p style="text-indent:2em;margin:10px 0">   宁乡花猪:
                    宁乡花猪原产宁乡县，由于毛色仅有黑白之分又被称“熊猫猪”。作为全国四大生猪地方名种之一，已有300多年养殖历史。宁乡花猪必须在完全天然、健康的环境下生长，远离任何人工生长素，因此它们的武冈铜鹅一起被誉为湖南"三宝"。1981年国家标准总局正式确定宁乡猪不饱和脂肪酸含量高、肌肉更有弹性 [1]  、口感好、肉味香浓、无异味腥味等特点。2006年7月宁乡猪进入农业部确定的首批国家级畜禽遗传资源保护品种。生长速度较慢，但因肉质较好，受到人们喜爱。
                </p> <p style="text-indent:2em;margin:10px 0"> 松辽黑猪:

                    松辽黑猪是吉林省农业科学院以原产于我国东北地区的东北民猪、丹麦的兰德瑞斯猪（长白猪）和美国的杜洛克猪作为育种素材，培育的我国第一个北方瘦肉型母系品种。
                    松辽黑猪将猪肉品质良好、繁殖性能高和适宜东北地区的养猪产业实际需求作为育种目标，通过三元杂交育种方法，以吉林本地猪为母本，丹系长白猪为第一父本、美系杜洛克为第二父本，从1985年开始，经过杂交、横交、选育等阶段，辅以重叠式小群闭锁选育、重要性状的分子标记等技术手段，耗时30年，经20个世代的持续选育，培育出的具有自主知识产权的、我国北方瘦肉型黑色母系新品种。松辽黑猪是含杜洛克血液约46%、长白猪和本地猪血液各约27%的培育品种，不仅具备外来品种猪生长快、饲料价格低以及瘦肉率高等特点，还具有地方猪适应性强、繁殖率高、肉质好、无应激等特征特性，是优良的地方培育品种。于2009年11月5日通过国家畜禽遗传资源委员会的审定，中华人民共和国农业部公告第1325号文件公布，松辽黑猪通过国审，由国家畜禽遗传资源委员会颁发畜禽新品种、配套系证书，证书编号为农01新品种证字第17号。
                </p>   生活习性编辑 播报
                    采食行为
                    猪的采食行为包括摄食与饮水，并具有各种年龄特征

                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">热点问题</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">室内饲养</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">户外活动</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">预防疾病</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

        </div>

        <!--第六部分-->
        <div id="add4" class="row banner" style="">
            <div class="col-md-3 ull" style="background-color: #92B8B1;">

                <ul>
                    <li><a href="#">动物品种介绍<span>></span></a></li>
                    <li><a href="#add1">憨狗知识窝<span>></span></a></li>
                    <li><a href="#add2">萌猫知识窝<span>></span></a></li>
                    <li><a href="#add3">佩奇知识窝<span>></span></a></li>
                    <li><a href="#add4">其它知识窝<span>></span></a></li>
                </ul>
            </div>


            <div id="myCarousel3" class="carousel slide col-md-9">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel3" data-slide-to="1"></li>
                    <li data-target="#myCarousel3" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="../static/img/it1.png" alt="First slide">
                        <div class="carousel-caption"><a>欢迎来到其它窝</a></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/it.png"   alt="Second slide">
                        <div class="carousel-caption"><a>可爱的狗狗</a></div>
                    </div>
                    <div class="item">
                        <img src="../static/img/it2.png" alt="Third slide">
                        <div class="carousel-caption">标题 3</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel3" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel3" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>


        <div class="row " style="background-color: white">

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        动物品种介绍
                    </h3>
                </div>
                <div class="panel-body">
                    <p>狗是人类最早驯化的家畜之一，属于哺乳纲，肉食目，犬科。<p>生物学家研究认为，狗最早是由狼、狐和胡狼自然杂交而产生的。经过各民族采用不同方法进行长时间的驯化逐渐形成了现在繁多的品种。据联合国统计，现在全世界约有5亿条狗，我国大约有1亿条。</p>
                    <p> 从古至今狗始终是人类的朋友和得力的助手。从边境巡逻、缉毒、侦破案件、救护伤员到为盲人引路、与主人作伴，处处都有它们矫健的身影。正因如此，狗几乎在世界各国都受到宠爱和保护。各种各样的狗协会遍及世界各地，在西方发达国家还有很多专门为狗设立的服务性机构。以前，为了控制狂犬病对人的威胁，我国曾实行灭狗的政策。随着经济的发展和医学的进步，通过接种疫苗已经能很好地控制狂犬病。所以近年来各大城市也逐步改变了过去那种一味灭狗的非人道做法，并针对养狗制定了一系列比较客观、合理的规章制度，使我国的养狗事业正逐步走向科学化、法制化。</p>
                    <p>   犬具有很强的智力，能够领会人的语言、表情和各种手势，有时会做出令人们惊叹不已的事情。如通过训练，能计数、识字等。</p>
                    <p>犬的时间观念和记忆力很强。在时间观念方面，每一个养犬者都有这样的体会，每到喂食的时间，犬都会自动的来到喂食的地点，表现出异常的兴奋，如果主人稍显迟钝，它就会以低声的呻吟或扒门来提醒你。
                        在记忆力方面，犬对饲养过它的主人和住所，甚至主人的声音都会有很强的记忆能力。如在英国，有一只犬从收音机里听到它阔别近10年的主人的声音后，马上站起来走到收音机旁专注的倾听着，直到长长的一段话结束后，才若有所失的带着悲伤的神情，默默地离开收音机。</p>

                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">热点问题</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">室内饲养</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">户外活动</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">预防疾病</h3>
                </div>
                <div class="panel-body">
                    这是一个基本的面板
                </div>
            </div>

        </div>

    </div>
    <script src="../static/js/vue.js"></script>
</body>

</html>