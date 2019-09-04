<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>河南省工业学校_郑州中专学校_郑州公办中专_校园动态</title>
    <meta name="keywords" content="河南省工业学校,郑州公办中专,电子商务学校,电子商务专业,UI设计,淘宝美工,网络营销专业,新媒体营销与策划,大数据,移动端软件开发,河南中专学校">
    <meta name="description" content="河南省工业学校以教授学生先进技能为己任，同时丰富学生的校园生活，定期举办各种校园活动">
 <link rel="icon" href="static/images/favicon.ico">
    <link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="static/js/swiper.min.css">
    <link href="static/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="static/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script src="static/js/marqueue.js"></script>
    <script src="static/js/common.js"></script>
    <script src="static/js/swiper.min.js"></script>
    <script src="static/js/index.js"></script>
    <script src="https://cdn.bootcss.com/vue/2.6.10/vue.min.js"></script>
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

<!-- 学校新闻 开始 -->
    <div class="news">
        <ul class="news_nav">
            <li class="actived">学校新闻</li>
            <li>行业新闻</li>
        </ul>
        <div id="wrap">
            <!--学校新闻 开始-->
            <div class="news_text selected">
            <div class="news_left">
                <p class="news_01">热门新闻学校新闻</p>
                <p class="news_02">3-26</p>
                <p class="news_03">河南省工业学校电子商务特色专业18级项目评审</p>
                <p class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化，是学生精神文化建设的重要途径。
                </p>
                <img src="static/images/news.jpg" alt="">
            </div>
            <div class="news_right">
                <ul>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>
                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>

                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>
                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>
                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                </ul>
            </div>
        </div>
            <!--学校新闻 结束-->

            <!-- 行业新闻 开始-->
            <div class="news_text">
            <div class="news_left">
                    <p class="news_01">热门新闻行业新闻/hot</p>
                    <p class="news_02">4-26</p>
                <p class="news_03">河南省工业学校电子商务特色专业18级项目评审</p>
                <p class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化，是学生精神文化建设的重要途径。
                </p>
                <img src="static/images/news.jpg" alt="">
            </div>
            <div class="news_right">
                <ul>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>
                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>

                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>
                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                    <li>
                        <a href="###">
                            <p class="news_03">河南省工业学校电子商务项目评审</p>
                            <span class="date">04-04</span>
                        </a>
                        <p  class="news_04">作为助推学生成长成才的重要平台和载体，校园文化艺术节是河南省工业学校的特色文化。</p>
                        <span class="more"><a href="news-content.jsp" target="_blank">MORE</a></span>
                    </li>
                </ul>
            </div>
        </div>
            <!-- 行业新闻 结束-->
        </div>

        <!-- 中间文字 结束-->
        <!--分页 开始-->
        <div class="page-icon">
            <span class="page-disabled">上一页</span>
            <a class="page-current">1</a>
            <a href="###">2</a>
            <a href="###">3</a>
            <a href="###">4</a>
            <a href="###">…</a>
            <a href="###">30</a>
            <a class="page-next" href="#">下一页<i></i></a>
        </div>
        <!--分页 结束-->
    </div>
<!-- 学校新闻 结束 -->
<!--预约动态开始 -->
<div class="yuyue">
    <div class="yuyue_div">
        <div id="notice" class="yuyue_left">
            <h2>预约动态：</h2>
            <div id="marquee5">
                <ul  class="col-xs-12 row">
                    <c:forEach items="${subscribeList}" var="s">
                        <li class="col-xs-12 text-center row">
                            <span class="col-xs-2">${s.name}</span>
                            <span class="col-xs-3">${s.school}</span>
                            <span class="col-xs-2">${s.phone}</span>
                            <span class="col-xs-3">${s.major}</span>
                            <span class="col-xs-2">预约成功</span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="yuyue_right">
            <h2>预约报名</h2>
            <form>
                <input type="text" class="form-control" placeholder="请输入姓名" name="name">
                <input type="text" class="form-control" placeholder="请输入毕业学校" name="school">
                <input type="text" class="form-control" placeholder="请输入手机号" name="phone">
                <select class="form-control" id="xiala">
                    <option value="0">请选择专业</option>
                    <option value="电商运营">电商运营</option>
                    <option value="UI设计">UI设计</option>
                    <option value="移动软件">移动软件</option>
                    <option value="商务客服">商务客服</option>
                    <option value="新媒体营销">新媒体营销</option>
                    <option value="大数据">大数据</option>
                </select>
                <span id="sub">马上预约</span>
            </form>
        </div>
    </div>

</div>
<!--/* 预约动态结束 -->
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
<!--引入的js相关文件-->
<script>
    //校园新闻  行业新闻
    function hover(obj){
        var index=obj.index();
        obj.addClass("actived").siblings().removeClass("actived");
        $("#wrap .news_text").eq(index).show().siblings().hide();
    }
    $(".news>ul>li").hover(function(){
        hover($(this));
        $(this).unbind("hover")
    },function(){});
//    六个专业
    function leave(i,local) {
        var img=document.getElementsByClassName("server");
        img[i].src="static/images/icon"+local+".png";
    }
    function  change(i,local) {
        var img=document.getElementsByClassName("server");
        img[i].src="static/images/icon"+local+".png";
    }

</script>
</body>
</html>