<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String aa = request.getServletPath();
%>
<!--header-->
<div class="header">
    <div class="header-content">
        <div class="logo">
            <img src="static/images/logo.png">
        </div>
        <div class="nav">
            <ul class="menu">
                <li <%=aa.equals("/index") ? "class='active'" : ""%>><a href="/index">首页</a></li>
                <li <%=aa.equals("/school") ? "class='active'" : ""%>><a href="/school">学校简介</a></li>
                <li>
                    <a href="###">专业介绍</a>
                    <ul class="submenu">
                        <li><a href="/online" target="_blank">电商运营</a></li>
                        <li><a href="/ui" target="_blank">UI设计</a></li>
                        <li><a href="/phone" target="_blank">移动软件</a></li>
                        <li><a href="/kefuzy" target="_blank">商务客服</a></li>
                        <li><a href="/media" target="_blank">新媒体营销</a></li>
                        <li><a href="/big_data" target="_blank">大数据</a></li>
                    </ul>
                </li>
                <li <%=aa.equals("/enployment") ? "class='active'" : ""%>><a href="/employment">就业资讯</a></li>
                <li <%=aa.equals("/news") ? "class='active'" : ""%>><a href="/news">学校新闻</a></li>
                <li <%=aa.equals("/contact-us") ? "class='active'" : ""%>><a href="/contact-us">联系我们</a></li>
            </ul>
        </div>
    </div>
</div>