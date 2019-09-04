<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>河南工业学校后台管理系统 - 首页</title>
    <link href="static/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/admin/site.css" rel="stylesheet">
    <script src="static/jquery/jquery-1.8.3.min.js"></script>
    <%--这里两个js文件导入要注意顺序--%>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"></script>
</head>
<body>
<div class="bt-warp bge6">
    <div id="container" class="container-fluid">
        <!-- 左侧导航栏 -->
        <jsp:include page="header.jsp"/>
        <!-- 左侧导航栏结束 -->
        <script src="static/bootstrap-3.3.7/js/bootstrap.min.js"></script>

        <div class="main-content pb55">
            <div class="container-fluid">
                <div class="pos-box bgw mtb15">
                    <div class="position f14 c9 pull-left">
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">新闻管理</span>
                    </div>
                </div>
                <div class="safe bgw mtb15 pd15">
                    <a class="btn btn-default btn-sm" href="/admin/news">全部新闻</a>
                    <a class="btn btn-success btn-sm" href="/admin/addnews.jsp">添加新闻</a>

                    <div class="setbox bgw mtb15">
                        <div class="setting-con pd15">
                            <form enctype="multipart/form-data" action="/admin/addnews" method="post">
                                标题：<input type="text" name="title" class="form-control"><br>
                                类别：<select class="form-control" name="nclass">
                                            <option value="0">请选择新闻类别</option>
                                            <option value="学校动态">学校动态</option>
                                            <option value="行业新闻">行业新闻</option>
                                     </select><br>
                                内容：<script id="ueditor" name="content" type="text/plain">请输入新闻正文</script>
                                导图：<input type="file" name="image" class="form-control"><br>
                                <input type="submit" value="添加">
                            </form>
                            <!-- 实例化编辑器 -->
                            <script type="text/javascript">
                                var editor = UE.getEditor('ueditor');
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 版权信息 -->
        <jsp:include page="copyright.jsp"/>
    </div>
</div>
</body>
</html>
<style type="text/css">
    .contextmenu {
        position: absolute;
        width: 120px;
        background: #FFFFFF;
        border-radius: 5px;
        overflow: hidden;
        z-index: 99999999;
    }

    .contextmenu li {
        border-left: 3px solid transparent;
        transition: ease 0.3s;
    }

    .contextmenu li:hover {
        background: #707070;
        border-left: 3px solid #333;
    }

    .contextmenu li a {
        display: block;
        padding: 5px 10px;
        color: #000000;
        text-decoration: none;
        transition: ease 0.3s;
        cursor:default;
    }

    .contextmenu li:hover a {
        color: #fff;
    }
</style>
