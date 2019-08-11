<%--
  Created by IntelliJ IDEA.
  User: zxguo
  Date: 2019-08-10
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>教师个人主页</title>
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
                    <a class="active-menu" href="teacherAdmin"><i class="fa fa-dashboard"></i> 签到</a>
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
                    <a href="teacherMyCourse"><i class="fa fa-dashboard"></i> 我的课程</a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick=ws()><i class="fa fa-qrcode"></i> 我的学生</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        安排签到<small>考勤签到</small>
                    </h1>
                    <ol class="breadcrumb">
                        <a href="javascript:void(0)" class="btn btn-primary" onclick=qdm()>输入签到码</a>
                        <a href="javascript:void(0)" class="btn btn-primary" onclick=qdqk()>查看签到情况</a>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="../statics/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../statics/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="../statics/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="../statics/js/morris/raphael-2.1.0.min.js"></script>
<script src="../statics/js/morris/morris.js"></script>
<script src="../statics/js/easypiechart.js"></script>
<script src="../statics/js/easypiechart-data.js"></script>
<!-- Custom Js -->
<script src="../statics/js/custom-scripts.js"></script>
</body>
<script>
    var openURL5="../Teacher/MyStudent.jsp";
    var openURL6="../Teacher/SignCode.jsp";
    var openURL7="../Teacher/SignStatusMid.jsp";
    var iWidth1=290;
    var iWidth2=550;
    var iHeight1=310;
    var iHeight2=200;
    var iHeight3=100;
    var iHeight4=130;
    var iTop1 = (window.screen.availHeight-30-iHeight1)/2; //获得窗口的垂直位置;
    var iTop2 = (window.screen.availHeight-30-iHeight2)/2; //获得窗口的垂直位置;
    var iTop3 = (window.screen.availHeight-30-iHeight3)/2; //获得窗口的垂直位置;
    var iTop4 = (window.screen.availHeight-30-iHeight4)/2; //获得窗口的垂直位置;
    var iLeft1 = (window.screen.availWidth-10-iWidth1)/2; //获得窗口的水平位置;
    var iLeft2 = (window.screen.availWidth-10-iWidth2)/2; //获得窗口的水平位置;
    function ws()
    {
        window.open(openURL5,"","height="+iHeight1+", width="+iWidth1+", top="+iTop1+", left="+iLeft1);
    }
    function qdm()
    {
        window.open(openURL6,"","height="+iHeight4+", width="+iWidth1+", top="+iTop4+", left="+iLeft1);
    }
    function qdqk()
    {
        window.open(openURL7,"","height="+iHeight1+", width="+iWidth1+", top="+iTop1+", left="+iLeft1);
    }
</script>

</html>
