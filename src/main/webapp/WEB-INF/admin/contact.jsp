<%--
  Created by IntelliJ IDEA.
  User: zxguo
  Date: 2019-07-31
  Time: 20:01
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
    <link rel="stylesheet" type="text/css" href="../statics/css/thems.css">
</head>

<body>
<!--头部-->
<div class="head clearfix">
    <div class="logo"><a><img src="../statics/images/logo.png" alt=""/></a></div>
    <ul class="nav clearfix">
        <li>
            <a href="homePage">
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
        <li class="now" style="cursor: hand">
            <a>
                <em>关于我们</em>
                ABOUT US
            </a>
        </li>
        <li>
            <a href="loginOrRegister" target="_blank">
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
<div class="banner_s"><img src="../statics/upload/bh4.jpg" alt=""/></div>
<!--幻灯片-->
<div class="bg_b">
    <div class="pst">
        您当前的位置：<a style="cursor: hand">关于我们</a>> <a style="cursor: hand">联系我们</a>
    </div>
</div>
<div class="scd clearfix">
    <div class="scd_l">
        <div class="l_name">
            <img src="../statics/images/name_2.png" width="140" height="48" alt=""/>
            <i>&nbsp;</i>
        </div>
        <ul class="s_nav">
            <li>
                <a href="about">成员介绍</a>
            </li>
            <li class="on">
                <a href="contact">联系我们</a>
            </li>
        </ul>
    </div>
    <div class="scd_r">
        <div class="r_top"><span>联系我们</span></div>
        <div class="scd_m">
            <dl class="contact clearfix">
                <dt><img src="../statics/upload/ditu.JPG" alt="" style="width: 90%;height: 90%"/></dt>
                <dd>
                    <h1>上海市上大晓凡有限公司</h1>
                    <p><span>地址：</span>上海市宝山区南陈路333号计算机工程与科学学院</p>
                    <p><span>服务热线：</span> 400-888-8888</p>
                    <p><span>传真：</span>0755-88888888</p>
                    <p><span>网址：</span>http://www.xuexipai.com</p>
                </dd>
            </dl>
        </div>
    </div>
</div>
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
            版权所有上海市上大科技有限公司 沪ICP备10011234号
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
