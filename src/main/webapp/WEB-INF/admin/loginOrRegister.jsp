<%--
  Created by IntelliJ IDEA.
  User: zxguo
  Date: 2019-07-31
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <title>学习派 - 注册登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="../statics/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="../statics/images/login.js"></script>
    <link href="../statics/css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body style="background: url('../statics/images/1.jpg') round" onload="msg()">
<h1>学习派<sup>V2019</sup></h1>
<div class="login" style="margin-top:50px">
    <div class="header">
        <div class="switch" id="switch">
            <a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
            <a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a>
            <div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0;">
            </div>
        </div>
    </div>
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 265px;">
        <!--登录-->
        <div class="web_login" id="web_login">
            <div class="login-box">
                <div class="login_form">
                    <form name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="get" action="loginOrRegister">
                        <input type="hidden" name="did" value="0"/>
                        <input type="hidden" name="to" value="log"/>

                        <div class="uinArea" id="uinArea">
                            <label class="input-tips" for="u">账号：</label>
                            <div class="inputOuter" id="uArea">
                                <input type="text" id="u" name="no" class="inputstyle"/>
                            </div>
                        </div>

                        <div class="pwdArea" id="pwdArea">
                            <label class="input-tips" for="p">密码：</label>
                            <div class="inputOuter" id="pArea">
                                <input type="password" id="p" name="password" class="inputstyle"/>
                            </div>
                        </div>

                        <div class="cArea" id="cArea">
                            <label class="input-tips">身份：</label>
                            <div class="inputOuter">
                                <label>
                                    <input type="radio" name="choose" value="tea" style="width: 20px;height: 20px;position: relative; top:4px">
                                </label>教师
                                <label>
                                    <input type="radio" name="choose" value="stu" style="width: 20px;height: 20px;position: relative; top:4px">
                                </label>学生
                            </div>
                        </div>

                        <div style="padding-left:50px;margin-top:20px;">
                            <input type="submit" value="登录" style="width:150px;" class="button_blue" name="lr"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--登录end-->
    </div>

    <div class="qlogin" id="qlogin" style="display: none">
        <!--注册-->
        <div class="web_login">
            <form name="rform" id="regUser" accept-charset="utf-8" method="get" action="loginOrRegister">
                <input type="hidden" name="to" value="reg"/>
                <input type="hidden" name="did" value="0"/>
                <ul class="reg_form" id="reg-ul">
                    <div id="userCue" class="cue" onclick=reru()>
                        注册请符合相关规定
                    </div>
                    <li>
                        <label for="user"  class="input-tips2">用户名：</label>
                        <div class="inputOuter2">
                            <input type="text" id="user" name="user" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="name"  class="input-tips2">姓名：</label>
                        <div class="inputOuter2">
                            <input type="text" id="name" name="name" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="passwd" class="input-tips2">密码：</label>
                        <div class="inputOuter2">
                            <input type="password" id="passwd"  name="passwd" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="passwd2" class="input-tips2">确认密码：</label>
                        <div class="inputOuter2">
                            <input type="password" id="passwd2" name="" maxlength="16" class="inputstyle2" onkeyup="checkpass()"/><span id="passerror" style="color: red; visibility: hidden">两次密码不一致！</span>
                        </div>
                    </li>
                    <li>
                        <label for="tel" class="input-tips2">手机号：</label>
                        <div class="inputOuter2">
                            <label for="tel"></label><input type="text" id="tel" name="tel" maxlength="13" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label class="input-tips2">性别：</label>
                        <div class="inputOuter2">
<%--                            <label for="sex"></label><input type="text" id="sex" name="sex" maxlength="2" class="inputstyle2"/>--%>
                            <label>
                                <input type="radio" name="sex" value="male" style="width: 20px;height: 20px;position: relative; top:4px">
                            </label>
                            男
                            <label>
                                <input type="radio" name="sex" value="female" style="width: 20px;height: 20px;position: relative; top:4px">
                            </label>
                            女
                        </div>
                    </li>
                    <li>
                        <label for="school" class="input-tips2">学校：</label>
                        <div class="inputOuter2">
                            <label for="school"></label><input type="text" id="school" name="school" maxlength="20" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="academy" class="input-tips2">院系：</label>
                        <div class="inputOuter2">
                            <label for="academy"></label><input type="text" id="academy" name="academy" maxlength="10" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label class="input-tips2">身份：</label>
                        <div class="inputOuter2">
                            <label>
                                <input type="radio" name="choose" value="tea" style="width: 20px;height: 20px;position: relative; top:4px">
                            </label>
                            教师
                            <label>
                                <input type="radio" name="choose" value="stu" style="width: 20px;height: 20px;position: relative; top:4px">
                            </label>
                            学生
                        </div>
                    </li>
                    <li>
                        <div class="inputArea">
                            <input type="submit" id="reg"  style="margin-top:10px;margin-left:85px" class="button_blue" value="同意协议并注册" name="lr"/>
                            <a href="javascript:void(0)" class="zcxy" onclick=rule()>注册协议</a>
                        </div>
                    </li>
                    <div class="cl">
                    </div>
                </ul>
            </form>
        </div>
    </div>
    <!--注册end-->
</div>

<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站
</div>

</body>
<script type="text/javascript">
    function msg() {
        var msg = '<%=request.getAttribute("message")%>';
        if (msg !== "null"){
            alert(msg);
        }
    }
    function rule()
    {
        alert("请遵守使用规则！");
    }
    function reru()
    {
        alert("用户名至少四位字符!"+"\n"+"密码至少六位字符!"+"\n"+"学校院系请输入真实情况!"+"\n"+"请选择教师和学生身份!");
    }
    function checkpass() {
        var pass1 = document.getElementById("passwd").value;
        var pass2 = document.getElementById("passwd2").value;
        if (pass1 !== pass2){
            document.getElementById("passerror").style.visibility = "visible";
        }
        else {
            document.getElementById("passerror").style.visibility = "hidden";
        }
    }
</script>
</html>
