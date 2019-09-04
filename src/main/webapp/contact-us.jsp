<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>河南省工业学校_电子商务专业_郑州中专学校_郑州公办中专-来院路线</title>
     <meta name="keywords" content="河南省工业学校地址,河南省工业学校电话,来校路线,郑州公办中专">
    <meta name="description" content="河南省工业学校来学校时的路线介绍，有利于同学们路线的查找">
 <link rel="icon" href="static/images/favicon.ico">    
<link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="static/js/swiper.min.css">
    <link href="static/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="static/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script src="static/js/marqueue.js"></script>
    <script src="static/js/common.js"></script>
    <script src="static/js/index.js"></script>
    <script src="static/js/swiper.min.js"></script>

</head>
<body>
<!--header-->
<jsp:include page="header.jsp"/>
<!-- header 结束 -->
<!--设置轮播图，轮播效果使用swiper插件实现，轮播图设置的背景图-->
<div class="apple-banner">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <c:forEach items="${adList}" var="adList">
                <div class="swiper-slide" onclick="location.href=${adList.url}"
                     style="background: #000 url(/uploads/ad/${adList.img}) no-repeat center;cursor: pointer"
                     title=${adList.title}>
                </div>
            </c:forEach>
        </div>
        <div class="swiper-button-prev"><span></span></div>
        <div class="swiper-button-next"><span></span></div>
        <ul class="swiper-pagination autoplay">
        </ul>
    </div>
</div>
<!--六个专业-->
<div class="school-wrap">
    <div class="nav-inner">
        <ul>
            <li class="iconbg1">
                <a href="kefuzy.jsp">
                    <span>商务客服</span>
                </a>
            </li>
            <li class="iconbg2">
                <a href="big_data.jsp" target="_blank">
                    <p class="iconbg"></p><span>大数据开发</span>
                </a>
            </li>
            <li class="iconbg3">
                <a href="online.jsp">
                    <span>电商运营</span>
                </a>
            </li>
            <li class="iconbg4">
                <a href="phone.jsp" target="_blank">
                    <span>移动软件</span>
                </a>
            </li>
            <li class="iconbg5">
                <a href="ui.jsp" target="_blank">
                    <span>UI设计</span>
                </a>
            </li>
            <li class="iconbg6">
                <a href="media.jsp">
                    <span>新媒体营销</span>
                </a>
            </li>
        </ul>
    </div>
</div>

<!--联系我们 star-->
<div class="school-wrap">
    <div class="xxjj2">
        <!--蒙层效果-->
        <div class="xxjj_text2 mokuai2">
            <span class="security">联<span>系我</span>们</span>
            <img src="static/images/school.jpg" alt="" class="school">
            <div class="text_right">
                <!--<h2>学校简介</h2>-->
                <br/>
                <p>学校地址：郑州市文化路78号（文化路与北三环交叉口南100米路西）</p>
                <p>电商专业招生网：www.fengzeit.com</p>
                <p>联系电话：0371-63814567</p>
                <p>联系QQ：3282665598</p>
                <p>邮政编码：450002</p>
                <p></p>
            </div>
        </div>
    </div>
</div>

<!--联系我们 end-->
<!--来校路线start-->
<div class="school-wrap">
    <div class="router">
        <div class="router-content">
            <span class="security">来<span>校路</span>线</span>
            <ul>
                <li>从火车站东广场、客运中心站乘坐6路、966路车到博颂路站下车即到，乘坐8路车到文化路站下车向南200米路西即到。</li>
                <li>从火车站西广场乘坐41路车到北三环陈寨向南200米路西即到。</li>
                <li>从客运新北站乘坐966路车到博颂路站下车即到。</li>
                <li>从客运西站乘坐93路车到北三环文化路下车向南200米路西即到。</li>
                <li>从客运南站、客运总站乘坐906路车到创新大厦乘坐6路、966路到博颂路站下车即到。</li>
                <li>从客运东站、郑州汽车站乘坐916路车到新通桥站下车转乘6路、966路车到博颂路站下车即到。</li>
                <li>从龙海汽车站乘坐29路车到北三环陈寨下车向南200米路西即到。</li>
            </ul>
        </div>

    </div>
</div>

<!--来校路线end-->
<!--联系我们start-->
<div class="school-wrap">
    <div class="tel-us">
        <span class="security">联<span>系我</span>们</span>
        <div class="tel-left">
            <img src="static/images/map.jpg">
        </div>
        <div class="tel-right">

            <form action="###" method="post">
                姓名:<input type="text">
                <hr  color="#aface1">
                电话:<input type="text">
                <hr color="#aface1">
                <input type="submit" class="sub">
            </form>
        </div>

    </div>
</div>

<!--联系我们end-->
<!-- 底部 开始-->
<div class="footer">
    <div class="footer_box">
        <div class="footer_left">
         <!--   <p>友情链接：
                <a href="###">XXXXXXX</a>
                <a href="###">XXXXXX</a>
                <a href="###">XXXXXXXX</a>
            </p>-->
            <p>单位地址：郑州市金水区文化路78号</p>
            <p>联系电话：0371-63814567</p>
            <p>Q Q号码：3282665598</p>
        </div>
        <div class="footer_right">
            <img src="static/images/erweima.png" alt="">
            <p>关注官方微信</p>
            <p>获取最新学习资料</p>
        </div>
    </div>
</div>
<div class="footer_bottom">
    <p>豫ICP备11001962号-9</p>
    <p>河南丰泽教育咨询有限公司</p>
    <p>版权所有&reg;丰泽</p>
</div>
<!-- 底部 结束-->

</body>
<!--引入的js相关文件-->
<script src="static/js/swiper.min.js"></script>
<script src="static/js/apple.js"></script>
<script type="text/javascript" src="static/js/all.js"></script>
</html>