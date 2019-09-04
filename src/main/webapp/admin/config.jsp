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

        <div class="main-content">
            <div class="container-fluid" style="padding-bottom:54px">
                <div class="pos-box bgw mtb15">
                    <div class="position f14 c9 pull-left">
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">面板设置</span>
                    </div>
                </div>
                <div class="clearfix bgw mtb15 pd15">
                    <div class="safe-port pull-left">
                        <div class="ss-text pull-left mr50">
                            <em>关闭面板</em>
                            <div class='ssh-item'>
                                <input class='btswitch btswitch-ios' id='closePl' type='checkbox'>
                                <label class='btswitch-btn' for='closePl' onclick='ClosePanel()'></label>
                            </div>
                        </div>
                        <div class="ss-text pull-left mr50">
                            <em class="btlink" style="color: #20a53a;" onclick="GetPanelSSL()" title="点击自定义面板证书">面板SSL</em>
                            <div class='ssh-item'>
                                <input class='btswitch btswitch-ios' id='panelSSL' type='checkbox'>
                                <label class='btswitch-btn' for='panelSSL' onclick="setPanelSSL()"></label>
                            </div>
                        </div>
                        <div class="ss-text pull-left mr50">
                            <em class="btlink" style="color: #20a53a;" onclick="GetPanelApi()" title="点击配置API接口">API接口</em>
                            <div class='ssh-item'>
                                <input class='btswitch btswitch-ios' id='panelApi' type='checkbox' >
                                <label class='btswitch-btn' for='panelApi' onclick="SetPanelApi(2)"></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="setbox bgw mtb15">
                    <div class="title c6 plr15">
                        <h3 class="f16">设置</h3>
                        <button class="btn btn-default btn-sm" style="float: right;margin-top: 10px;display: none;" onclick="apiSetup()">API设置</button>
                    </div>
                    <div class="info-title-tips" style="margin: 20px 30px 0px;">
                        <p><span class="glyphicon glyphicon-alert" style="color: #f39c12; margin-right: 10px;"></span>为了提高安全，请修改别名、默认端口、面板用户和密码!</p>
                    </div>
                    <div class="setting-con pd15">
                        <form id="set-Config">
                            <p class="mtb15"><span class="set-tit text-right" title="别名">别名</span><input id="webname" name="webname" class="inputtxt bt-input-text" type="text" value="宝塔Linux面板"><span class="set-info c7">给面板取个别名，用于伪装面板</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="面板端口">面板端口</span><input id="banport" name="port" class="inputtxt bt-input-text" type="number" value="8888" maxlength="5"><span class="set-info c7">建议端口范围8888 - 65535</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="管理入口路径">安全入口</span><input id="admin_path" name="admin_path" class="inputtxt bt-input-text disable" type="text" value="/" disabled><span class="modify btn btn-xs btn-success" onclick="modify_auth_path()">修改</span><span class="set-info c7">面板管理入口,设置后只能通过指定安全入口登录面板,如: /www_bt_cn</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="域名">域名</span><input name="domain" class="inputtxt bt-input-text" type="text" value=""><span class="set-info c7">为面板绑定一个访问域名;注意：一旦绑定域名,只能通过域名访问面板!</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="授权IP">授权IP</span><input name="limitip" class="inputtxt bt-input-text" type="text" value=""><span class="set-info c7">设置访问授权IP,多个请使用逗号(,)隔开;注意：一旦设置授权IP,只有指定IP的电脑能访问面板!</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="默认建站目录">默认建站目录</span><input name="sites_path" class="inputtxt bt-input-text" type="text" value="/www/wwwroot"><span class="set-info c7">新创建的站点,默认将保存到该目录的下级目录!</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="默认备份目录">默认备份目录</span><input name="backup_path" class="inputtxt bt-input-text" type="text" value="/www/backup"><span class="set-info c7">网站和数据库的备份目录!</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="服务器IP">服务器IP</span><input name="address" class="inputtxt bt-input-text" type="text" value="网站控制台"><span class="set-info c7">默认为外网IP,若您在本地虚拟机测试,请填写虚拟机内网IP!</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="服务器时间">服务器时间</span><input id="systemdate" name="systemdate" class="inputtxt bt-input-text disable" type="text" value="2019-05-15 13:20:44 CST +0800"><span class="modify btn btn-xs btn-success" onclick="syncDate()">同步</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="面板用户">面板用户</span><input name="username_" class="inputtxt bt-input-text disable" type="text" value="bt.cn" disabled><span class="modify btn btn-xs btn-success" onclick="setUserName()">修改</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="面板密码">面板密码</span><input name="password_" class="inputtxt bt-input-text disable" type="text" value="******" disabled><span class="modify btn btn-xs btn-success" onclick="setPassword()">修改</span></p>
                            <p class="mtb15"><span class="set-tit text-right" title="绑定宝塔账号">绑定宝塔账号</span><input name="btusername" class="inputtxt bt-input-text disable" type="text" value="" disabled><span class="modify btn btn-xs btn-success mr5" onclick="bindBTName(2,'b')">绑定</span></p>
                            <p class="mtb15 wxapp_p"><span class="set-tit text-right">微信小程序</span><input class="inputtxt bt-input-text disable" type="text" value="当前未绑定微信号" disabled><span class="modify btn btn-xs btn-success mr5" onclick="open_wxapp()">绑定</span></p>
                        </form>
                        <div class="bt-submit set-submit">保存</div>
                    </div>
                </div>
            </div>
        </div>
        <style>
            .boxConter {
                height: 458px;
                position: relative;
                overflow: auto;
            }

            .iconCode {
                padding: 50px 60px;
            }

            .box-conter {
                width: 100%;
            }

            #QRcode {
                margin-bottom: 25px;
                text-align: center;
            }

            .iconCode #QRcode,
            .iconCode .codeTip {
                width: 100%;
                text-align: center;
                font-size: 17px;
            }

            .iconCode .weChatSamll img {
                width: 100%;
            }

            .iconCode .weChatSamll {
                display: none;
                width: 200px;
                height: 200px;
                position: absolute;
                border: 1px solid #ececec;
                border-radius: 5px;
                bottom: 150px;
                right: 50px;
                padding: 20px;
                background-color: #fff;
            }

            .iconCode .weChatSamll:after {
                content: '';
                width: 15px;
                height: 15px;
                background: #ffffff;
                border-bottom: 1px solid #ececec;
                border-right: 1px solid #ececec;
                transform: rotate(45deg);
                position: absolute;
                border-radius: 4px;
                left: 90px;
                bottom: -8px;
            }

            .iconCode .weChat {
                margin-left: 15px;
            }

            .iconCode .weChat:hover .weChatSamll {
                display: block;
            }

            .iconCode .QRcode {
                margin-bottom: 15px;
                text-align: center;
            }

            .codeTip ul li {
                margin-bottom: 10px;
            }

            .personalDetails .head_img {
                width: 50px;
                height: 50px;
                float: left;
                margin-right: 30px;
            }

            .personalDetails .head_img img {
                height: 100%;
                border-radius: 50%;
            }

            .personalDetails .nick_name {
                height: 50px;
                line-height: 50px;
                width: 148px;
                float: left;
                font-size: 15px;
                color: #808080;
            }

            .personalDetails .userList {
                height: 100%;
            }

            .personalDetails .userList .addweChat {
                height: 50px;
                text-align: center;
                padding-top: 20px;
                color: #20a53a;
                font-size: 16px;
            }

            .personalDetails .userList .addweChat:hover {
            }

            .personalDetails .userList .item {
                height: 70px;
                padding: 10px 15px;
                border: 1px solid #ececec;
                margin: 15px 65px;
                border-radius: 5px;
            }

            .personalDetails .userList .cancelBind {
                height: 50px;
                width: 60px;
                float: right;
                line-height: 50px;
                text-align: center;
            }
        </style>
        <script type="text/javascript" src="static/js/jquery.qrcode.min.js"></script>
        <script src="static/js/config.js?date=6.8.7"></script>
        <script type="text/javascript">
            setCookie('serverType',"nginx");
        </script>
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
        cursor:default;
    }

    .contextmenu li:hover a {
        color: #fff;
    }
</style>

