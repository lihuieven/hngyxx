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

        <script src="static/bootstrap-3.3.7/js/bootstrap.min.js"></script>

        <div class="main-content pb55">
            <div class="container-fluid">
                <div class="pos-box bgw mtb15">
                    <div class="position f14 c9 pull-left">
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">预约管理</span>
                    </div>
                    <div class="search pull-right">
                        <form target="hid" onsubmit='site.get_list(1,$("#SearchValue").val())'>
                            <input type="text" id="SearchValue" class="ser-text pull-left" placeholder="网站搜索"/>
                            <button type="button" class="ser-sub pull-left" onclick='site.get_list(1,$("#SearchValue").val())'></button>
                        </form>
                        <iframe name='hid' id="hid" style="display:none"></iframe>
                    </div>
                </div>
                <div class="conter-box bgw mtb15 pd15">
                    <a class="btn btn-success btn-sm" href="/admin/subscribe">全部预约</a>
                    <a class="btn btn-default btn-sm" href="/admin/subscribeok">已处理预约</a>
                    <a class="btn btn-default btn-sm" href="/admin/subscribeno">未处理预约</a>
                    <div class="divtable mtb10">
                        <div class="tablescroll">
                            <table id="webBody" class="table table-hover" style="min-width: 900px;border: 0 none;text-align:center;">
                                <thead>
                                <tr>
                                    <th width="10%" style="text-align: center">姓名</th>
                                    <th width="10%" style="text-align: center">学校</th>
                                    <th width="20%" style="text-align: center">电话</th>
                                    <th width="20%" style="text-align: center">预约专业</th>
                                    <th width="20%" style="text-align: center">预约时间</th>
                                    <th width="10%" style="text-align: center">是否预约成功</th>
                                    <th width="10%" style="text-align: center">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${pageInfo.list}" var="all" >
                                    <tr>
                                        <td>${all.name}</td>
                                        <td>${all.school}</td>
                                        <td>${all.phone}</td>
                                        <td>${all.major}</td>
                                        <td><fmt:formatDate value="${all.stime}" pattern="yyyy-MM-dd HH:dd:ss"/></td>
                                        <td><c:if test="${all.isshow=='y'}">是</c:if><c:if test="${all.isshow=='n'}"><a href="javascript:;" class="btlink" name="chuli" id="${all.id}">处理一下</a></c:if></td>
                                        <td><span class="btlink" name="delete" id="${all.id}">删除</span></td>
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
                                        <li class="page-item"><a class="page-link" href="/admin/subscribe?page=1">首页</a></li>
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="/admin/subscribe?page=${pageInfo.pageNum-1}">上一页</a></li>
                                        </c:if>
                                        <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                                            <c:if test="${page==pageInfo.pageNum}">
                                                <li class="page-item active"><a class="page-link" href="#">${page}</a></li>
                                            </c:if>
                                            <c:if test="${page!=pageInfo.pageNum}">
                                                <li class="page-item"><a class="page-link"
                                                                         href="/admin/subscribe?page=${page}">${page}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.hasNextPage}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="/admin/subscribe?page=${pageInfo.pageNum+1}">下一页</a></li>
                                        </c:if>
                                        <li class="page-item"><a class="page-link" href="/admin/subscribe?page=${pageInfo.pages}">末页</a>
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
    $(document).ready(function () {
        $("span[name=delete]").live("click",function(e){
            var hang = $(e.currentTarget).parent().parent();
            var id = $(e.currentTarget).attr("id");

            $.ajax({
                url: "/admin/deleteSubscribe",
                type: "POST",
                data: {id:id},
                dataType: "json",
                success: function (data) {
                    hang.remove();
                    alert(data);
                },
                error: function () {
                    alert("删除失败");
                }
            });
        });

        //处理一下
        $("a[name='chuli']").live("click",function(e){
            var id = $(e.currentTarget).attr("id");
            var a = $(e.currentTarget).parent();
            var td = $(e.currentTarget).parent();

            $.ajax({
                url:"/admin/updateSubscribe",
                type:"POST",
                data:{id:id},
                dataType:"json",
                success:function(data){
                    alert(data);
                    // a.remove();
                    td.html("是");
                },
                error:function(){
                    alert("处理失败!");
                }
            })
        });
    });

</script>
</body>
</html>

