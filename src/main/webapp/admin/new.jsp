<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <div class="main-content pb55">
            <div class="container-fluid">
                <div class="pos-box bgw mtb15">
                    <div class="position f14 c9 pull-left">
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">详情预览</span>
                    </div>
                </div>
                <div class="safe bgw mtb15 pd15">
                    <a class="btn btn-success btn-sm" href="/admin/news">全部新闻</a>
                    <a class="btn btn-default btn-sm" href="/admin/addnews.jsp">添加新闻</a>
<%--                    <a class="btn btn-success btn-sm" href="/admin/addjob.jsp">添加就业同学信息</a>--%>

                    <div class="divtable mtb10">
                        <div class="tablescroll">
                            <div class="nwes_content">
                                <div style="margin-bottom: 40px;width: 80%;">
                                    ${onenew.content}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 版权信息 -->
        <jsp:include page="copyright.jsp"/>
    </div>
</div>
<script>
    $(document).ready(function() {
        $("a[title='删除']").live("click",function(e){
            var id = $(e.currentTarget).attr("id");
            var td= $(e.currentTarget).parent().parent();

            $.ajax({
                url:"/admin/deletenews",
                type:"POST",
                data:{id:id},
                dataType:"json",
                success:function(data){
                    alert(data);
                    td.remove();
                },
                error:function(){
                    alert("删除失败,请重新尝试！")
                }
            });
        });
    });
</script>
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
        cursor: default;
    }

    .contextmenu li:hover a {
        color: #fff;
    }
</style>
