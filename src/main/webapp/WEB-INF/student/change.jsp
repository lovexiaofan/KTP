<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zxguo
  Date: 2019-08-10
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改个人信息</title>
</head>
<body onload="close()">
<form name="uf" accept-charset="utf-8" id="uf" class="uf" method="get" action="studentChangeSave">
    <c:forEach items="${studentInfo}" var="studentInfo">
    <span>用 户 名：</span>
    <label>
        <input type="text" maxlength="20" readonly style="margin-top: 10px" name="no" value="${studentInfo.sno}">
    </label>
    <br/>
    <span>姓&nbsp;&nbsp;名：</span>
    <label>
        <input type="text" maxlength="10" readonly style="margin-top: 10px" name="name" value="${studentInfo.sname}">
    </label>
    <br/>
    <span>密&nbsp;&nbsp;码：</span>
    <label>
        <input id="passwd" type="password" maxlength="20" style="margin-top: 10px" name="pass" value="${studentInfo.password}">
    </label>
    <br/>
    <span>重&nbsp;&nbsp;复：</span>
    <label>
        <input id="passwd2" type="password" maxlength="20" style="margin-top: 10px" name="repass" value="${studentInfo.password}" onkeyup="checkpass()">
        <span id="passerror" style="color: red; visibility: hidden">不一致！</span>
    </label>
    <br/>
    <span>手 机 号：</span>
    <label>
        <input type="text" maxlength="13" style="margin-top: 10px" name="tel" value="${studentInfo.tel}">
    </label>
    <br/>
    <span>性&nbsp;&nbsp;别：</span>
    <label>
        <input type="text" maxlength="2" readonly style="margin-top: 10px" name="sex" value="${studentInfo.sex}">
    </label>
    <br/>
    <span>学&nbsp;&nbsp;校：</span>
    <label>
        <input type="text" maxlength="10" style="margin-top: 10px" name="uni" value="${studentInfo.uni}">
    </label>
    <br/>
    <span>学&nbsp;&nbsp;院：</span>
    <label>
        <input type="text" maxlength="10" style="margin-top: 10px" name="academy" value="${studentInfo.academy}">
    </label>
    <br/>
    </c:forEach>
    <button type="submit" style="margin-top: 15px;margin-left: 100px">保存</button>
</form>
</body>
<script type="application/javascript">
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
    function close() {
        var msg = '<%=request.getAttribute("message")%>';
        if (msg === "更新成功"){
            alert(msg);
        }
        if (msg === "更新失败"){
            alert(msg);
        }
    }
</script>
</html>
