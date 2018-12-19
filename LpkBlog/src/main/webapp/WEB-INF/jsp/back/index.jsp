<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>LPKBlog</title>
    <!-- basic styles -->
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- ace styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ace.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ace-skins.min.css" />

    <script src="<%=request.getContextPath()%>/assets/js/ace-extra.min.js"></script>

    <style type="text/css">

        body {
            overflow: hidden;
        }
        .tab-content {
            border: none;
            padding: 10px 0px;
        }

        #menu_li_0 {
            display: none;
        }
    </style>

</head>

<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try{ace.settings.check('navbar' , 'fixed')}catch(e){}
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="icon-cogs"></i>
                    LPK Blog 后台
                </small>
            </a><!-- /.brand -->
        </div><!-- /.navbar-header -->

    </div><!-- /.container -->
</div>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
            </script>

            <ul class="nav nav-list" id="menu">

            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
            </script>
        </div>

        <div class="main-content">


            <div class="page-content">


                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <ul class="nav nav-tabs" role="tablist">
                            <!--<li class="active"><a href="#Index" role="tab" data-toggle="tab">首页</a></li>-->
                        </ul>
                        <div class="tab-content">
                            <!--<div role="tabpanel" class="tab-pane active" id="Index"></div>-->
                        </div>

                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div><!-- /.main-content -->

        <!-- /#ace-settings-container -->
    </div><!-- /.main-container-inner -->
</div><!-- /.main-container -->

<!-- basic scripts -->
<script src='<%=request.getContextPath()%>/assets/js/jquery-2.0.3.min.js'></script>
<!-- 自定义js -->
<script src="<%=request.getContextPath()%>/assets/js/sidebar-menu.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap-tab.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/typeahead-bs2.min.js"></script>
<!-- page specific plugin scripts -->
<script src="<%=request.getContextPath()%>/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.sparkline.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/flot/jquery.flot.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/flot/jquery.flot.pie.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/flot/jquery.flot.resize.min.js"></script>

<!-- ace scripts -->

<script src="<%=request.getContextPath()%>/assets/js/ace-elements.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    $(window).resize(function() {
        $("#sidebar").height($(window).height()-$("#navbar").height());
        $("div .tab-pane iframe").height($("#sidebar").height()-60);
    });

    $(function () {
        $("#sidebar").height($(window).height()-$("#navbar").height()-40);

        $('#menu').sidebarMenu({
            data: [{
                id: '0',
                text: '首页',
                icon: 'icon-cog',
                url: '',
                menus: [{
                    id: '00',
                    text: '首页',
                    icon: 'icon-glass',
                    close: false,
                    url: '/admin'
                }]
            }, {
                id: '1',
                text: '文章',
                icon: 'icon-cog',
                url: '',
                menus: [{
                    id: '11',
                    text: '全部文章',
                    icon: 'icon-glass',
                    url: ''
                },{
                    id: '12',
                    text: '写文章',
                    icon: 'icon-glass',
                    url: ''
                },{
                    id: '13',
                    text: '全部分类',
                    icon: 'icon-glass',
                    url: ''
                },{
                    id: '14',
                    text: '全部标签',
                    icon: 'icon-glass',
                    url: ''
                }]
            }, {
                id: '2',
                text: '页面',
                icon: 'icon-leaf',
                url: '',
                menus: [{
                    id: '21',
                    text: '全部页面',
                    icon: 'icon-glass',
                    url: ''
                }, {
                    id: '22',
                    text: '添加页面',
                    icon: 'icon-glass',
                    url: ''
                }]
            }, {
                id: '3',
                text: '链接',
                icon: 'icon-user',
                url: '',
                menus: [{
                    id: '31',
                    text: '全部链接',
                    icon: 'icon-user',
                    url: ''
                }, {
                    id: '32',
                    text: '添加链接',
                    icon: 'icon-apple',
                    url: ''
                }]
            }, {
                id: '4',
                text: '公告',
                icon: 'icon-envelope',
                url: '',
                menus: [{
                    id: '41',
                    text: '全部公告',
                    icon: 'icon-glass',
                    url: ''
                }, {
                    id: '42',
                    text: '添加公告',
                    icon: 'icon-glass',
                    url: ''
                }, {
                    id: '43',
                    text: '订单撤排',
                    icon: 'icon-glass',
                    url: ''
                }]
            }, {
                    id: '5',
                    text: '评论',
                    icon: 'icon-envelope',
                    url: ''
            }, {
                    id: '6',
                    text: '用户',
                    icon: 'icon-envelope',
                    url: '',
                    menus: [{
                        id: '61',
                        text: '全部用户',
                        icon: 'icon-glass',
                        url: ''
                    }, {
                        id: '62',
                        text: '添加用户',
                        icon: 'icon-glass',
                        url: ''
                    }]
                }, {
                    id: '7',
                    text: '设置',
                    icon: 'icon-envelope',
                    url: '',
                    menus: [{
                        id: '71',
                        text: '菜单',
                        icon: 'icon-glass',
                        url: ''
                    }, {
                        id: '72',
                        text: '主要选项',
                        icon: 'icon-glass',
                        url: ''
                    }]
                }]
        });
        eval($("#menu_li_00 a").attr("href"));
    });

</script>
</body>
</html>

