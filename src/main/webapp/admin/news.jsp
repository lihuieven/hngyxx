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
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">新闻管理</span>
                    </div>
                </div>
                <div class="safe bgw mtb15 pd15">
                    <a class="btn btn-success btn-sm" href="/admin/news">全部新闻</a>
                    <a class="btn btn-default btn-sm" href="/admin/addnews.jsp">添加新闻</a>
<%--                    <a class="btn btn-success btn-sm" href="/admin/addjob.jsp">添加就业同学信息</a>--%>

                    <div class="divtable mtb10">
                        <div class="tablescroll">
                            <table id="DataBody" class="table table-hover" width="100%" cellspacing="0" cellpadding="0" border="0" style="border: 0 none;text-align: center;">
                                <thead>
                                <tr>
                                    <th width="30" style="text-align:center;"><input class="check" type="checkbox"></th>
                                    <th width="20%" style="text-align:center;">导图</th>
                                    <th width="15%" style="text-align:center;">类别</th>
                                    <th style="text-align:center;">标题</th>
                                    <th style="text-align:center;">编写时间</th>
                                    <th style="text-align:center;">访问量</th>
                                    <th width="260" style="text-align:center;">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="news" items="${pageInfo.list}">
                                    <tr>
                                        <td><input value="52" class="check" type="checkbox"></td>
                                        <td><img src="/image/news/${news.img}" width="200px"></td>
                                        <td>${news.nclass}</td>
                                        <td>${news.title}</td>
                                        <td><fmt:formatDate value="${news.anow}" pattern="yyyy-MM-dd HH:dd:ss"/></td>
                                        <td>${news.atime}</td>
                                        <td><a href="/admin/new?id=${news.id}" class="btlink" title="详情">查看详情</a> |
                                            <a href="javascript:;" class="btlink" title="修改">修改</a> |
                                            <a href="javascript:;" class="btlink" title="删除" id="${news.id}">删除</a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                第${pageInfo.pageNum}页，共${pageInfo.pages}页，共${pageInfo.total}条记录
                            </div>
                            <div class="col-md-6 offset-md-4">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination pagination-sm">
                                        <li class="page-item"><a class="page-link" href="/admin/news?page=1">首页</a></li>
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="/admin/news?page=${pageInfo.pageNum-1}">上一页</a></li>
                                        </c:if>
                                        <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                                            <c:if test="${page==pageInfo.pageNum}">
                                                <li class="page-item active"><a class="page-link" href="#">${page}</a></li>
                                            </c:if>
                                            <c:if test="${page!=pageInfo.pageNum}">
                                                <li class="page-item"><a class="page-link"
                                                                         href="/admin/news?page=${page}">${page}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.hasNextPage}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="/admin/news?page=${pageInfo.pageNum+1}">下一页</a></li>
                                        </c:if>
                                        <li class="page-item"><a class="page-link" href="/admin/news?page=${pageInfo.pages}">末页</a>
                                        </li>
                                    </ul>
                                </nav>
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
