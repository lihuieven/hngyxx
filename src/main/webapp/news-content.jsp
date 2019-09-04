<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>河南工业学校</title>
    <link rel="icon" href="static/images/favicon.ico">
    <link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="static/js/swiper.min.css">
    <link href="static/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="static/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script src="static/js/marqueue.js"></script>
    <script src="static/js/common.js"></script>
    <script src="static/js/swiper.min.js"></script>
      <!-- 百度统计-->
  <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?ee7ac43f2733e14f1a36b495e46ac403";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<!-- 百度统计-->
</head>
<body>
<!--header-->
<jsp:include page="header.jsp"/>
<!-- header 结束 -->
<!--设置轮播图，轮播效果使用swiper插件实现，轮播图设置的背景图-->
<div class="apple-banner">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide slide1">
            </div>
            <div class="swiper-slide slide2">
            </div>
            <div class="swiper-slide slide3">
                <div class="title txt">
                </div>
            </div>
        </div>
        <div class="swiper-button-prev"><span></span></div>
        <div class="swiper-button-next"><span></span></div>
        <ul class="swiper-pagination autoplay">
        </ul>
    </div>
</div>
<!--六个专业-->
    <div class="nwes_content">
        <div style="margin-bottom: 40px;">
            ${news.content}
        </div>
        <a href="#" class="page">上一篇：电子商务运营与管理专业</a>
        <a href="#" class="page">下一篇：移动端大数据</a>
    </div>
<!-- 底部 开始-->
<div class="footer">
    <div class="footer_box">
        <div class="footer_left">
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
    <script>
        $(document).ready(function () {
            $("#footer").load("footer.html");
        });
    </script>
</body>
</html>