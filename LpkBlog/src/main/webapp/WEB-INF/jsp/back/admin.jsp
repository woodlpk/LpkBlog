<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">

<head>

    <meta charset="utf-8"/>
    <!-- basic styles -->
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css"/>

    <!--[if IE 7]>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"/>

    <!-- ace styles -->

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ace-skins.min.css"/>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="<%=request.getContextPath()%>/assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/assets/js/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="page-content">
    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="row" style="height: ">

                <div class="col-sm-6">
                    <div class="widget-box">
                        <div class="widget-header widget-header-flat">
                            <h4>最新发布</h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <div class="row">
                                    <div class="col-sm-11">
                                        <ul style="list-style-type:none">
                                            <c:forEach items="${articleCustomList}" begin="0" end="9" step="1" var="a">
                                                <li><span><fmt:formatDate value="${a.articlePostTime}"
                                                                          pattern="HH:mm MM月dd日"/> </span>
                                                    <a href="/article/${a.articleId}"
                                                       target="_blank">${a.articleTitle}</a>
                                                </li>
                                            </c:forEach>

                                        </ul>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /span -->
                <div class="col-sm-6">
                    <div class="widget-box">
                        <div class="widget-header widget-header-flat">
                            <h4>近期评论</h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <div class="row">
                                    <div class="col-sm-11">
                                        <ul style="list-style-type:none">
                                            <c:forEach items="${commentListVoList}" begin="0" end="4" step="1" var="c">
                                                <li>
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <img alt=""
                                                                 src="https://en.gravatar.com/userimage/149699588/6ecf7be161a34051ceb1368c510e9dd3.jpeg"
                                                                 height="50" width="50" style="margin-top: 5px">
                                                        </div>
                                                        <div class="col-md-10 comment_item" style="height:70px" >
                                                            <p style="line-height: 1em;">
                                                                由<cite>
                                                                <a target="_blank" href="${c.commentAuthorUrl}"
                                                                   rel="external nofollow"
                                                                   class="url">${c.commentAuthorName}</a>
                                                            </cite>发表在
                                                                《<a href="/article/${c.commentArticleId}">${c.article.articleTitle}</a>》
                                                            </p>

                                                            <p style="line-height: 1em;">${c.commentContent}</p>
                                                            <p class="row-actions" style="line-height: 1em;display: none">|
                                                                <span class="">
                                                            <a
                                                                    href="/admin/comment/reply/${c.commentId}">
                                                                回复
                                                            </a>
                                                            </span>
                                                                <span class=""> |
                                                                <a href="/admin/comment/edit/${c.commentId}">编辑</a>
                                                            </span>
                                                                <span class=""> |
                                                                <a href="javascript:void(0)"
                                                                   onclick="deleteComment(${c.commentId})">删除</a>
                                                            </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /span -->

            </div>

            <!-- PAGE CONTENT ENDS -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</div>
<!-- /.page-content -->

<!-- basic scripts -->

<!--[if !IE]> -->

<!-- <![endif]-->

<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>" + "<" + "/script>");
</script>
<![endif]-->

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<!-- ace scripts -->

<script src="<%=request.getContextPath()%>/assets/js/ace-elements.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    jQuery(function ($) {

        window.prettyPrint && prettyPrint();
        $('#id-check-horizontal').removeAttr('checked').on('click', function () {
            $('#dt-list-1').toggleClass('dl-horizontal').prev().html(this.checked ? '&lt;dl class="dl-horizontal"&gt;' : '&lt;dl&gt;');
        });

    })

    //显示和隐藏row-actions
    $(".comment_item").mouseenter(function () {
        $(this).find(".row-actions").show();
    })
    $(".comment_item").mouseleave(function () {
        $(this).find(".row-actions").hide();
    })

</script>
</body>

</html>