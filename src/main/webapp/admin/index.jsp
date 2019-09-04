<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>河南工业学校后台管理系统 - 首页</title>
    <link href="static/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/admin/site.css" rel="stylesheet">
</head>
<body>
<div class="bt-warp bge6">
    <div id="container" class="container-fluid">
        <!-- 左侧导航栏 -->
        <jsp:include page="header.jsp"/>
        <!-- 左侧导航栏结束 -->

        <!-- 主要内容 -->
        <div class="main-content">
            <div class="index-pos-box bgw">
                <div class="position f12 c6 pull-left" style="background:none;padding-left:15px">
                    <span class="bind-user c4"><a href="javascript:void(0)" class="btlink">河南工业学校</a><a class="btn btn-success btn-xs" href="#" target="_blank" style="margin-left:5px">注册</a></span>
                </div>
                <span class="pull-right f12 c6" style="line-height:52px; margin-right:15px">
                    <span><a class="btlink" href="javascript:index.re_server();">安全退出</a></span>
                </span>
            </div>
            <div class="container-fluid" style="padding-bottom: 66px;">
                <div class="danger-tips">
                    <div class="important-title" id="messageError" style="display: none; margin-top:15px"></div>
                </div>
                <div class="conter-box server bgw mtb15">
                    <div class="title c6 f16 plr15">
                        <h3 class="c6 f16 pull-left">待处理任务</h3>
                    </div>
                    <div class="server-circle">
                        <ul class="row" id="systemInfoList">
                            <li class="col-xs-6 col-sm-3 col-md-3 col-lg-2 mtb20 circle-box text-center loadbox">
                                <h3 class="c9 f15">预约未处理<a href="https://www.bt.cn/bbs/thread-11402-1-1.html" target="_blank" class="bt-ico-ask" style="cursor: pointer;">?</a></h3>
                                <div class="cicle">
                                    <div class="occupy"><a href="/admin/subscribeno" style="color: #dc0000;font-size: 32px">10</a></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="conter-box system-info bgw clearfix mtb15">
                    <div class="title c6 f16 plr15">
                        系统概览
                    </div>
                    <div class="system-info-con mtb20">
                        <ul class="clearfix text-center">
                            <li class="sys-li-box col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <p class="name f15 c9">已发布新闻</p>
                                <div class="val"><a class="btlink" href="/admin/news">2</a></div>
                            </li>
                            <li class="sys-li-box col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <p class="name f15 c9">已预约人数</p>
                                <div class="val"><a class="btlink" href="/admin/subscribeok">5</a></div>
                            </li>
                            <li class="sys-li-box col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <p class="name f15 c9">已就业人数</p>
                                <div class="val"><a class="btlink" href="/admin/job">4</a></div>
                            </li>
                            <li class="sys-li-box col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <p class="name f15 c9">轮播显示</p>
                                <div class="val"><a class="btlink" href="/admin/ad">4</a></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 pull-left pd0">
                    <div class="pr8">
                        <div class="bgw conter-box">
                            <div class="title c6 f16 plr15">软件</div>
                            <div class="setting-con" style="padding:0; height:442px; margin-right: -4px; overflow: hidden;">
                                <div class="container-fluid soft-man">
                                    <input name="list1SortOrder" type="hidden" value="" />
                                    <div id="indexsoft" class="row"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 pull-left pd0">
                    <div class="pl7">
                        <div class="bgw conter-box" style="height:491px">
                            <div class="title c6 f16 plr15">流量</div>
                            <div class="bw-info">
                                <div class="col-sm-6 col-md-3"><p class="c9"><span class="ico-up"></span>上行</p><a id="upSpeed">获取中: </a></div>
                                <div class="col-sm-6 col-md-3"><p class="c9"><span class="ico-down"></span>下行</p><a id="downSpeed">获取中: </a></div>
                                <div class="col-sm-6 col-md-3"><p class="c9">总发送</p><a id="upAll">获取中: </a></div>
                                <div class="col-sm-6 col-md-3"><p class="c9">总接收</p><a id="downAll">获取中: </a></div>
                            </div>
                            <div id="NetImg" style="width:100%;height:370px;"></div>
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