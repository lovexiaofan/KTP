<%--
  Created by IntelliJ IDEA.
  User: zxguo
  Date: 2019-07-30
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
    <title>学习派</title>
    <link rel="stylesheet" type="text/css" href="../statics/css/reset.css"/>
    <script type="text/javascript" src="../statics/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../statics/js/js_z.js"></script>
    <script type="text/javascript" src="../statics/js/banner.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/thems.css">
    <script type="application/javascript">
        $(function(){
            $('#owl-demo').owlCarousel({
                items: 1,
                navigation: true,
                navigationText: ["上一个","下一个"],
                autoPlay: true,
                stopOnHover: true
            }).hover(function(){
                $('.owl-buttons').show();
            }, function(){
                $('.owl-buttons').hide();
            });
        });
    </script>
</head>

<body class="s_m">
<!--头部-->
<div class="head clearfix">
    <div class="logo"><img src="../statics/images/logo.png" alt=""/></div>
    <ul class="nav clearfix">
        <li class="now" style="cursor: hand">
            <a>
                <em>首页</em>
                HOME
            </a>
        </li>
        <li>
            <a href="javascript:void(0)" onclick=ps()>
                <em>产品与方案</em>
                PRODUCT
            </a>
        </li>
        <li>
            <a href="javascript:void(0)" onclick=ps()>
                <em>服务与支持</em>
                SERVICE
            </a>
        </li>
        <li>
            <a href="about">
                <em>关于我们</em>
                ABOUT US
            </a>
        </li>
        <li>
            <a href="lr" target="_blank">
                <em>注册登录</em>
                LOGIN/REGISTER
            </a>
        </li>
    </ul>
    <div class="search">
        <div class="s_m">
            <label>
                <input name="" type="text" placeholder="请输入你查询的…">
            </label>
            <input name="" type="submit" value="">
        </div>
        <p class="tip">热门搜索：<a>课程管理哪家强？</a></p>
    </div>
</div>
<!--头部-->
<!--幻灯片-->
<div id="banner" class="banner">
    <div id="owl-demo" class="owl-carousel">
        <a class="item" style="background-image:url(../statics/upload/bh4.jpg)">
            <img src="../statics/upload/bh4.jpg" alt="">
        </a>
    </div>
</div>
<!--幻灯片-->
<div class="bg_a">
    <div class="t_news">
        <div class="t_news">
            <b>热点新闻：</b>
            <ul class="news_li">
                <li style="cursor: hand"><a>最好用的学生学习管理工具</a></li>
                <li style="cursor: hand"><a>最方便的教师课程管理工具</a></li>
                <li style="cursor: hand"><a>最直接的师生交流问答工具</a></li>
                <li style="cursor: hand"><a>最优秀的课程作业发布工具</a></li>
            </ul>
            <ul class="swap"></ul>
        </div>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<ul class="i_ma clearfix">
    <li>
        <div class="tu"><a><img src="../statics/upload/bh1.JPG" alt=""/></a></div>
        <div class="wen">
            <div class="name"><a>在线考勤</a></div>
            <div class="des">用学习派最大的好处就是教师在上课的过程中可以直接发布签到，统计上课人数，不需要浪费时间一一点名。</div>
        </div>
    </li>
    <li>
        <div class="tu"><a><img src="../statics/upload/bh2.JPG" alt=""/></a></div>
        <div class="wen">
            <div class="name"><a>课程讨论</a></div>
            <div class="des">用学习派最大的好处就是在学习的过程中，随时跟老师同学们进行沟通和分享，获得别人的指导和鼓励。</div>
        </div>
    </li>
    <li>
        <div class="tu"><a><img src="../statics/upload/bh3.JPG" alt=""/></a></div>
        <div class="wen">
            <div class="name"><a>作业管理</a></div>
            <div class="des">用学习派最大的好处就是教师可以在线发布作业，同学们完成后将电子版作业上传，由助教负责统计和整理。</div>
        </div>
    </li>
</ul>
<div class="space_hx">&nbsp;</div>
<div class="line">&nbsp;</div>
<ul class="f_nav clearfix">
    <li>
        <b>产品与方案</b>
        <p style="cursor: hand"><a>在线考勤</a></p>
        <p style="cursor: hand"><a>记录表现</a></p>
        <p style="cursor: hand"><a>作业统计</a></p>
        <p style="cursor: hand"><a>课件共享</a></p>
    </li>
    <li>
        <b>服务于支持</b>
        <p style="cursor: hand"><a>成绩总会</a></p>
        <p style="cursor: hand"><a>课程讨论</a></p>
        <p style="cursor: hand"><a>班级公告</a></p>
        <p style="cursor: hand"><a>助教协助</a></p>
    </li>
    <li>
        <b>关于我们</b>
        <p style="cursor: hand"><a>成员简介</a></p>
        <p style="cursor: hand"><a>开发历程</a></p>
        <p style="cursor: hand"><a>获得荣誉</a></p>
        <p style="cursor: hand"><a>联系方式</a></p>
    </li>
    <li class="code">
        <img src="../statics/upload/code.png" alt=""/>
        <p>扫一扫</p>
    </li>
    <li class="dz">
        <h1>上海市上大晓凡有限公司</h1>
        <p class="tel">服务热线： 400-888-8888</p>
        <p class="email">企业邮箱：<a href="mailto:www.sales@satlead.com">xiaofan@xuexipai.com</a></p>
        <p class="address">地址：上海市宝山区南陈路333号计算机工程与科学学院</p>
    </li>
</ul>
<div class="space_hx">&nbsp;</div>
<div class="f_bg">
    <div class="foot clearfix">
        <div class="f_r">
            版权所有上海市上大晓凡有限公司 沪ICP备10011234号
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function ps()
    {
        alert("新功能马上上线！敬请期待！");
    }
</script>
</html>
