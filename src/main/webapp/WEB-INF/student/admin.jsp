<%--
  Created by IntelliJ IDEA.
  User: zxguo
  Date: 2019-08-10
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>学生个人主页</title>
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
            <a class="navbar-brand"><i class="fa fa-comments"></i><strong>  ${sname}</strong></a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a>
                            <div>
                                <strong>张三</strong>
                                <span class="pull-right text-muted">
                                    <em>Today</em>
                                </span>
                            </div>
                            <div>作业借我抄抄</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center">
                            <strong>所有消息</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a>
                            <div>
                                <p>
                                    <strong>任务1</strong>
                                    <span class="pull-right text-muted">60% 完成</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (success)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>

                    <li>
                        <a class="text-center">
                            <strong>所有任务</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-tasks -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a>
                            <div>
                                <i class="fa fa-comment fa-fw"></i> 新评论
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>

                    <li>
                        <a class="text-center">
                            <strong>所有提醒</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="javascript:void(0)" onclick=change()><i class="fa fa-user fa-fw"></i> 个人信息</a>
                    </li>
                    <li><a><i class="fa fa-gear fa-fw"></i> 设置</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="loginOrRegister"><i class="fa fa-sign-out fa-fw"></i> 登出</a>
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
                    <a class="active-menu" href="studentAdmin"><i class="fa fa-dashboard"></i> 签到</a>
                </li>
                <li>
                    <a href="../Student/Notice.jsp"><i class="fa fa-qrcode"></i> 笔记 & 公告</a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick=jk()><i class="fa fa-dashboard"></i> 加课</a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick=tk()><i class="fa fa-qrcode"></i> 退课</a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick=wk()><i class="fa fa-dashboard"></i> 我的课程</a>
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
                        学生签到<small>考勤签到</small>
                    </h1>
                    <ol class="breadcrumb">
                        <a href="javascript:void(0)" class="btn btn-primary" onclick=qdm()>点击签到</a>
                    </ol>
                </div>
            </div>

        </div>
    </div>

</div>
<!-- /. PAGE INNER  -->
<!-- /. PAGE WRAPPER  -->
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
    var openURL1="studentChange";
    var openURL2="../Student/EnterCourse.jsp";
    var openURL3="../Student/QuitCourse.jsp";
    var openURL4="../Student/MyCourse.jsp";
    var openURL6="../Student/Sign.jsp";
    var iWidth1=300;
    var iWidth2=550;
    var iHeight1=310;
    var iHeight2=100;
    var iHeight4=130;
    var iTop1 = (window.screen.availHeight-30-iHeight1)/2; //获得窗口的垂直位置;
    var iTop2 = (window.screen.availHeight-30-iHeight2)/2; //获得窗口的垂直位置;
    var iTop4 = (window.screen.availHeight-30-iHeight4)/2; //获得窗口的垂直位置;
    var iLeft1 = (window.screen.availWidth-10-iWidth1)/2; //获得窗口的水平位置;
    var iLeft2 = (window.screen.availWidth-10-iWidth2)/2; //获得窗口的水平位置;
    function change()
    {
        window.open(openURL1,"","height="+iHeight1+", width="+iWidth1+", top="+iTop1+", left="+iLeft1);
    }
    function jk()
    {
        window.open(openURL2,"","height="+iHeight2+", width="+iWidth1+", top="+iTop2+", left="+iLeft1);
    }
    function tk()
    {
        window.open(openURL3,"","height="+iHeight2+", width="+iWidth1+", top="+iTop1+", left="+iLeft1);
    }
    function wk()
    {
        window.open(openURL4,"","height="+iHeight1+", width="+iWidth2+", top="+iTop1+", left="+iLeft2);
    }
    function qdm()
    {
        window.open(openURL6,"","height="+iHeight4+", width="+iWidth1+", top="+iTop4+", left="+iLeft1);
    }
</script>
</html>