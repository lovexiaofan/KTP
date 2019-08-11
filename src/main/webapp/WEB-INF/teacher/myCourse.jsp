<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zxguo
  Date: 2019-08-11
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>我开设的课程</title>
    <!-- Bootstrap Styles-->
    <link href="../statics/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="../statics/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="../statics/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="../statics/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <%--    <link href="../statics/bootstrap/dashboard.css" rel="stylesheet">--%>
</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand"><i class="fa fa-comments"></i><strong>   ${cname}</strong></a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="teacherChange" target="_blank"><i class="fa fa-user fa-fw"></i> 个人信息</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="lr"><i class="fa fa-sign-out fa-fw"></i> 登出</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a href="teacherAdmin"><i class="fa fa-dashboard"></i> 签到</a>
                </li>
                <li>
                    <a href="teacherNotice"><i class="fa fa-qrcode"></i> 笔记 & 公告</a>
                </li>
                <li>
                    <a href="teacherOpenCourse"><i class="fa fa-dashboard"></i> 开课</a>
                </li>
                <li>
                    <a href="teacherCloseCourse"><i class="fa fa-qrcode"></i> 关课</a>
                </li>
                <li>
                    <a class="active-menu" href="teacherMyCourse"><i class="fa fa-dashboard"></i> 我的课程</a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick=ws()><i class="fa fa-qrcode"></i> 我的学生</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >
        <div id="page-inner">
            <div class="container-fluid">
                <div class="row">
                    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                        <h2>我的课程</h2>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                <tr>
                                    <th>课程号</th>
                                    <th>课程名</th>
                                    <th>上课时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${myCourseInfo}" var="myCourseInfo">
                                    <tr>
                                        <td>${myCourseInfo.courseno}</td>
                                        <td>${myCourseInfo.coursename}</td>
                                        <td>${myCourseInfo.coursetime}</td></tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </main>
                </div>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="../statics/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../statics/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="../statics/js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="../statics/js/custom-scripts.js"></script>
</body>
</html>
