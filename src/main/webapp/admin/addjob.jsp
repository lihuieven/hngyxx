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
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">就业管理</span>
                    </div>
                </div>
                <div class="safe bgw mtb15 pd15">
                    <a class="btn btn-default btn-sm" href="/admin/job">查看全部同学就业信息</a>
                    <a class="btn btn-success btn-sm" href="/admin/addjob.jsp">添加就业同学信息</a>

                    <div class="setbox bgw mtb15">
                        <div class="setting-con pd15">
                            <form enctype="multipart/form-data" action="/admin/addjob" method="post">
                                姓名：<input type="text" name="name" class="form-control"><br><br>
                                学习方向：<select class="form-control" name="major">
                                            <option value="0">请选择专业</option>
                                            <option value="电商运营">电商运营</option>
                                            <option value="UI设计">UI设计</option>
                                            <option value="移动软件">移动软件</option>
                                            <option value="商务客服">商务客服</option>
                                            <option value="新媒体营销">新媒体营销</option>
                                            <option value="大数据">大数据</option>
                                        </select><br><br>
                                就业公司：<input type="text" name="company" class="form-control"><br><br>
                                就业薪资：<input type="text" name="salary" class="form-control"><br><br>
                                工作福利：<input type="text" name="jobinfo" class="form-control"><br><br>
                                个人照片：<input type="file" name="image" class="form-control"><br><br>
                                <input type="submit" value="添加">
                            </form>
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