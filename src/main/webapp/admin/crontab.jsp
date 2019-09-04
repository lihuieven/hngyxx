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
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">计划任务</span>
                    </div>
                </div>
                <div class="setbox bgw mtb15">
                    <div class="title c6 plr15">
                        <h3 class="f16">添加计划任务</h3>
                    </div>
                    <div class="setting-con ptb20">
                        <div class="clearfix plan">
                            <span class="typename c4 pull-left f14 text-right mr20">任务类型</span>
                            <div class="dropdown planjs pull-left mr20">
                                <button class="btn btn-default dropdown-toggle" type="button" id="excode" data-toggle="dropdown" style="width:auto">
                                    <b val="toShell">Shell脚本</b>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="excode">
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="toShell">Shell脚本</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="site">备份网站</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="database">备份数据库</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="logs">日志切割</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="path">备份目录</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="rememory">释放内存</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="toUrl">访问URL</a>
                                    </li>
                                </ul>
                            </div>
                            <span class="planSign"><i>*</i>任务类型包含以下部分：Shell脚本、备份网站、备份数据库、日志切割、释放内存、访问URL</span>
                        </div>
                        <div class="clearfix plan">
                            <span class="typename c4 pull-left f14 text-right mr20">任务名称</span>
                            <div class="planname pull-left"><input type="text" name="name" class="bt-input-text"></div>
                        </div>
                        <div class="clearfix plan">
                            <span class="typename c4 pull-left f14 text-right mr20">执行周期</span>
                            <div class="dropdown plancycle pull-left mr20">
                                <button class="btn btn-default dropdown-toggle" type="button" id="cycle" data-toggle="dropdown" style="width:94px">
                                    <b val="week">每星期</b>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="cycle">
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="day">每天</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="day-n">N天</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="hour">每小时</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="hour-n">N小时</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="minute-n">N分钟</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="week">每星期</a>
                                    </li>
                                    <li>
                                        <a role="menuitem" tabindex="-1" href="javascript:;" value="month">每月</a>
                                    </li>
                                </ul>
                            </div>
                            <div id="ptime" class="pull-left">
                                <div class="dropdown planweek pull-left mr20">
                                    <button class="btn btn-default dropdown-toggle" type="button" id="excode" data-toggle="dropdown"><b val="1">周一</b> <span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="excode">
                                        <li>
                                            <a role="menuitem" tabindex="-1" href="javascript:;" value="1">周一</a>
                                        </li>
                                        <li>
                                            <a role="menuitem" tabindex="-1" href="javascript:;" value="2">周二</a>
                                        </li>
                                        <li>
                                            <a role="menuitem" tabindex="-1" href="javascript:;" value="3">周三</a>
                                        </li>
                                        <li>
                                            <a role="menuitem" tabindex="-1" href="javascript:;" value="4">周四</a>
                                        </li>
                                        <li>
                                            <a role="menuitem" tabindex="-1" href="javascript:;" value="5">周五</a>
                                        </li>
                                        <li>
                                            <a role="menuitem" tabindex="-1" href="javascript:;" value="6">周六</a>
                                        </li>
                                        <li>
                                            <a role="menuitem" tabindex="-1" href="javascript:;" value="0">周日</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="plan_hms pull-left mr20 bt-input-text"> <span><input type="number" name="hour" value="1" maxlength="2" max="23" min="0"></span> <span class="name">时</span> </div>
                                <div class="plan_hms pull-left mr20 bt-input-text"> <span><input type="number" name="minute" value="30" maxlength="2" max="59" min="0"></span> <span class="name">分</span> </div>
                            </div>
                        </div>
                        <div class="clearfix plan">
                            <span class="typename controls c4 pull-left f14 text-right mr20">脚本内容</span>
                            <div id="implement" style="line-height:34px"><textarea class="txtsjs bt-input-text" name="sBody"></textarea></div>
                        </div>
                        <div class="clearfix plan">
                            <div class="bt-submit plan-submit" onclick="planAdd()">添加任务</div>
                        </div>
                        <ul class="help-info-text c7 ptb15 mlr20">
                            <li>当添加完备份任务，应该手动运行一次，并检查备份包是否完整</li>
                            <li>磁盘容量不够、数据库密码错误、网络不稳定等原因，可能导致数据备份不完整</li>
                        </ul>
                    </div>
                    <form id="set-Config" action="/crontab?action=AddCrontab" enctype="multipart/form-data" method="post" style="display: none;">
                        <input type="text" name="name" value="" />
                        <input type="text" name="type" value="" />
                        <input type="number" name="where1" value="" />
                        <input type="number" name="hour" value="" />
                        <input type="number" name="minute" value="" />
                        <input type="text" name="week" value="" />
                        <input type="text" name="sType" value="" />
                        <textarea name='sBody'></textarea>
                        <input id="sFile" type="file" name="sFile" value="" />
                        <input id="sName" type="text" name="sName" value="" />
                        <input id="backupTo" type="text" name="backupTo" value="localhost" />
                        <input type="number" name="save" value="" />
                        <input type="submit" />
                    </form>
                </div>
                <div class="setbox bgw mtb15">
                    <div class="title c6 plr15">
                        <h3 class="f16">任务列表</h3>
                        <span id="allDelete" style="float: right;display: none;">
                    <button onclick="allDeleteCron();" class="btn btn-default btn-sm">删除选中</button>
                </span>
                    </div>
                    <div class="setting-con divtable pd15">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th width='30px'><input onclick="checkSelect();" type="checkbox" id="setBox"></th>
                                <th>任务名称</th>
                                <th>状态</th>
                                <th>周期</th>
                                <th>执行时机</th>
                                <th>保存数量</th>
                                <th>备份到</th>
                                <th>添加时间</th>
                                <th width="190">操作</th>
                            </tr>
                            </thead>
                            <tbody id="cronbody"></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>
        .layer-create-content .layui-layer-content{
            overflow: inherit;
        }
    </style>
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


<script src="static/js/crontab.js?date=6.8.7"></script>
<script type="text/javascript">
    setCookie('serverType',"nginx");
    toWeek();
    toHour();
    toMinute();
    toShell();
    getCronData();
</script>
</title>
</head>
<body>

</body>
</html>