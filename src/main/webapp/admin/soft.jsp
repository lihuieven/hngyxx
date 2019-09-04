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
<body>
<div class="bt-warp bge6">
    <div id="container" class="container-fluid">
        <!-- 左侧导航栏 -->
        <jsp:include page="header.jsp"/>
        <!-- 左侧导航栏结束 -->

        <div class="main-content">
            <div class="container-fluid" style="padding-bottom:54px">
                <div class="pos-box bgw mtb15">
                    <div class="position f14 c9 pull-left">
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">软件管理</span>
                    </div>
                    <div class="search pull-right">
                        <form target="hid" onsubmit='soft.get_list(1,0,$("#SearchValue").val())'>
                            <input type="text" id="SearchValue" class="ser-text pull-left" placeholder="search"/>
                            <button type="button" class="ser-sub pull-left" onclick='soft.get_list(1,0,$("#SearchValue").val())'></button>
                        </form>
                        <iframe name='hid' id="hid" style="display:none"></iframe>
                    </div>
                </div>
                <div class="softbox bgw mtb15">
                    <div class="softlist">
                        <div class="divtable pd15 relative">
                            <div class="menu-sub softtype"><span typeid="0" class="on">全部</span><span typeid="5">运行环境</span><span typeid="6">系统工具</span><span typeid="7">宝塔插件</span><span typeid="8">付费插件</span><span typeid="10">第三方应用</span><span typeid="11">一键部署</span></div>
                            <button class="btn btn-default btn-sm" onclick="soft.flush_cache()" title="从云端更新列表" style="position:absolute;top:12px;right:15px">更新软件列表</button>
                            <div id="updata_pro_info">
                                <div class="alert alert-success" style="margin-bottom:15px"><strong>升级专业版，所有插件，免费使用。</strong>
                                    <button class="btn btn-success btn-xs va0 updata_pro" onclick="bt.soft.updata_pro()" title="立即升级专业版" style="margin-left:8px">立即升级</button>
                                </div>
                            </div>
                            <table id="softList" class="table table-hover" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <thead>
                                <tr>
                                    <th width="165">软件名称</th>
                                    <th style="width: 345.25px;">说明</th>
                                    <th width="92">价格</th>
                                    <th width="120">到期时间</th>
                                    <th width="40">位置</th>
                                    <th width="40">状态</th>
                                    <th width="64">首页显示</th>
                                    <th width="120" style="text-align:right;">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-tamper_proof.png">网站防篡改程序 </span></td>
                                    <td><span style="width: 404.25px;">事件型防篡改程序,可有效保护网站重要文件不被木马篡改</span></td>
                                    <td><span style="color:#fc6d26">￥37.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('网站防篡改程序','100000015',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-syssafe.png">宝塔系统加固 </span></td>
                                    <td><span style="width: 404.25px;">提供灵活的系统加固功能，防止系统被植入木马</span></td>
                                    <td><span style="color:#fc6d26">￥37.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('宝塔系统加固','100000016',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-total.png">网站监控报表 </span></td>
                                    <td><span style="width: 404.25px;">实时精确统计网站流量、ip、uv、pv、请求、蜘蛛等数据</span></td>
                                    <td><span style="color:#fc6d26">￥19.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('网站监控报表','100000014',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-btwaf_httpd.png">Apache防火墙 </span></td>
                                    <td><span style="width: 404.25px;">有效防止sql注入/xss/一句话木马等常见渗透攻击,当前仅支持Apache2.4<a href="https://www.bt.cn/bbs/thread-13647-1-1.html" target="_blank" class="btlink"> &gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥19.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('Apache防火墙','100000012',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-btwaf.png">Nginx防火墙 </span></td>
                                    <td><span style="width: 404.25px;">有效防止sql注入/xss/一句话木马等常见渗透攻击,当前仅支持nginx<a href="https://www.bt.cn/bbs/thread-13647-1-1.html" target="_blank" class="btlink"> &gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥19.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('Nginx防火墙','100000010',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-load_leveling.png">宝塔负载均衡 </span></td>
                                    <td><span style="width: 404.25px;">基于nginx的负载均衡，04/25日前安装的面板，需重装nginx方可正常使用<a href="https://www.bt.cn/bbs/thread-13074-1-1.html" target="_blank" class="btlink"> &gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥19.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('宝塔负载均衡','100000009',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-masterslave.png">MySQL主从复制 </span></td>
                                    <td><span style="width: 404.25px;">轻松实现MySQL一主多从复制，需要MySQL5.5及以上版本<a href="https://www.bt.cn/bbs/thread-12900-1-1.html" target="_blank" class="btlink">&gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥9.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('MySQL主从复制','100000008',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-task_manager.png">宝塔任务管理器 </span></td>
                                    <td><span style="width: 404.25px;">轻松管理进程、启动项、用户、服务、计划任务、会话<a href="https://www.bt.cn/bbs/thread-12682-1-1.html" target="_blank" class="btlink"> &gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥9.9</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('宝塔任务管理器','100000007',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-app.png">微信小程序 </span></td>
                                    <td><span style="width: 404.25px;">宝塔小程序提供服务器监控及安全扫码登录面板<a href="https://www.bt.cn/bbs/thread-12427-1-1.html" target="_blank" class="btlink"> &gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥4.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('微信小程序','100000001',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-msg_push.png">异常监控推送 </span></td>
                                    <td><span style="width: 404.25px;">可对服务器、站点状态进行监控推送，当前仅支持Centos7.x<a class="btlink" href="https://www.bt.cn/bbs/thread-23574-1-1.html" target="_blank">&gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥9.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('异常监控推送','100000017',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-rsync.png">宝塔数据同步工具 </span></td>
                                    <td><span style="width: 404.25px;">基于inotify+lsyncd+rsync开发的数据同步工具 <a href="https://www.bt.cn/bbs/thread-11231-1-1.html" target="_blank" class="btlink"> &gt;&gt;教程</a></span></td>
                                    <td><span style="color:#fc6d26">￥4.8</span></td>
                                    <td>未开通</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.re_plugin_pay('宝塔数据同步工具','100000005',0)">立即购买</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-safeip.png">高防IP </span></td>
                                    <td><span style="width: 404.25px;">对备案域名提供10G~50G套餐防护，更高防护需求可联系客服定制。</span></td>
                                    <td>免费</td>
                                    <td>--</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.install('safeip')">安装</a></td>
                                </tr>
                                <tr>
                                    <td><span onclick="soft.set_soft_config('nginx')" style="cursor:pointer"><img src="static/admin/img/soft_ico/ico-nginx.png">Nginx 1.14.2</span></td>
                                    <td><span style="width: 404.25px;">轻量级，占有内存少，并发能力强</span></td>
                                    <td>免费</td>
                                    <td>--</td>
                                    <td><span class="glyphicon glyphicon-folder-open" onclick="openPath('/www/server/nginx')"></span></td>
                                    <td><span style="color:#20a53a" class="glyphicon glyphicon-play"></span></td>
                                    <td>
                                        <div class="index-item"><input class="btswitch btswitch-ios" id="index_nginx" type="checkbox"><label class="btswitch-btn" for="index_nginx" onclick="bt.soft.to_index('nginx')"></label></div>
                                    </td>
                                    <td style="text-align:right"><a class="btlink" onclick="soft.set_soft_config('nginx')">设置</a> | <a class="btlink" onclick="bt.soft.un_install('nginx')">卸载</a></td>
                                </tr>
                                <tr>
                                    <td><span><img src="static/admin/img/soft_ico/ico-apache.png">Apache </span></td>
                                    <td><span style="width: 404.25px;">世界排名第一，快速、可靠并且可通过简单的API扩充</span></td>
                                    <td>免费</td>
                                    <td>--</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.install('apache')">安装</a></td>
                                </tr>
                                <tr>
                                    <td><span onclick="soft.set_soft_config('mysql')" style="cursor:pointer"><img src="static/admin/img/soft_ico/ico-mysql.png">MySQL 5.6.42</span></td>
                                    <td><span style="width: 404.25px;">MySQL是一种关系数据库管理系统!</span></td>
                                    <td>免费</td>
                                    <td>--</td>
                                    <td><span class="glyphicon glyphicon-folder-open" onclick="openPath('/www/server/mysql')"></span></td>
                                    <td><span style="color:red" class="glyphicon glyphicon-pause"></span></td>
                                    <td>
                                        <div class="index-item"><input class="btswitch btswitch-ios" id="index_mysql" type="checkbox" checked=""><label class="btswitch-btn" for="index_mysql" onclick="bt.soft.to_index('mysql')"></label></div>
                                    </td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.update_soft('mysql','5.6','43')">更新</a> | <a class="btlink" onclick="soft.set_soft_config('mysql')">设置</a> | <a class="btlink" onclick="bt.soft.un_install('mysql')">卸载</a></td>
                                </tr>
                                <tr>
                                    <td><span onclick="soft.set_soft_config('php-7.3')" style="cursor:pointer"><img src="static/admin/img/soft_ico/ico-php.png">PHP-7.3 </span></td>
                                    <td><span style="width: 404.25px;">PHP是世界上最好的编程语言</span></td>
                                    <td>免费</td>
                                    <td>--</td>
                                    <td><span class="glyphicon glyphicon-folder-open" onclick="openPath('/www/server/php/73')"></span></td>
                                    <td><span style="color:#20a53a" class="glyphicon glyphicon-play"></span></td>
                                    <td>
                                        <div class="index-item"><input class="btswitch btswitch-ios" id="index_php-73" type="checkbox" checked=""><label class="btswitch-btn" for="index_php-73" onclick="bt.soft.to_index('php-7.3')"></label></div>
                                    </td>
                                    <td style="text-align:right"><a class="btlink" onclick="bt.soft.update_soft('php-7.3','7.3','5')">更新</a> | <a class="btlink" onclick="soft.set_soft_config('php-7.3')">设置</a> | <a class="btlink" onclick="bt.soft.un_install('php-7.3')">卸载</a></td>
                                </tr>
                                </tbody>
                            </table>
                            <div id="softPage" class="dataTables_paginate paging_bootstrap page">
                                <div><span class="Pcurrent">1</span><a class="Pnum" onclick="soft.get_list(2)">2</a><a class="Pnum" onclick="soft.get_list(3)">3</a><a class="Pnum" onclick="soft.get_list(4)">4</a><a class="Pnext" onclick="soft.get_list(2)">下一页</a><a class="Pend" onclick="soft.get_list(4)">尾页</a><span class="Pnumber">1/4</span><span class="Pline">从1-15条</span><span class="Pcount">共54条数据</span></div>
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
</body>
</html>
<script type="text/javascript">
    $("#setBox").click(function () {
        if ($(this).prop("checked")) {
            $("input[name=id]").prop("checked", true)
        } else {
            $("input[name=id]").prop("checked", false)
        }
    });
    setCookie('order', 'id desc');
</script>
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


<script type="text/javascript" src="static/js/jquery.dragsort-0.5.2.min.js"></script>
<script type="text/javascript" src="static/laydate/laydate.js?date=20180301"></script>
<script type="text/javascript" src="static/js/soft.js?version=6.8.7"></script>
<script type="text/javascript">
    bt.set_cookie('serverType', "nginx");


</script>
