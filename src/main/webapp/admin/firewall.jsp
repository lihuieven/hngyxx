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


        <style>
            .weblog {
                font-size: 14px;
                display: inline-block;
                line-height: 30px;
            }
            .weblog em {
                font-style: normal;
                color: #666;
                margin: 0 15px;
                font-size:12px;
            }
            .weblog span {
                margin-right: 10px;
            }
            .weblog a {
                color: #20a53a;
            }
            .firewall-port-box{
                margin-bottom:15px;
            }
        </style>
        <div class="main-content">
            <div class="container-fluid" style="padding-bottom: 50px;">
                <div class="pos-box bgw mtb15">
                    <div class="position f14 c9 pull-left">
                        <a class="plr10 c4" href="index.jsp">首页</a>/<span class="plr10 c4">系统安全</span>
                    </div>
                    <div class="search pull-right">
                        <form target="hid" onsubmit="firewall.get_log_list(1,$(&quot;#SearchValue&quot;).prop(&quot;value&quot;))">
                            <input type="text" id="SearchValue" class="ser-text pull-left" placeholder="搜索日志">
                            <button type="button" class="ser-sub pull-left" onclick="firewall.get_log_list(1,$(&quot;#SearchValue&quot;).prop(&quot;value&quot;))"></button>
                        </form>
                        <iframe name="hid" id="hid" style="display:none"></iframe>
                    </div>
                </div>
                <div class="safe container-fluid bgw mtb15 pd15">
                    <div class="mr50 pull-left">
                        <form>
                            <div class="ss-text pull-left">
                                <em>启用SSH</em>
                                <div class="ssh-item" id="in_safe">
                                    <input class="btswitch btswitch-ios" id="sshswitch" type="checkbox"><label class="btswitch-btn sshswitch" for="sshswitch"></label>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="mr50 pull-left">
                        <div class="ss-text pull-left mr5">
                            <em>SSH端口：</em>
                            <input type="text" class="bt-input-text" id="mstscPort" value="" disabled="disabled">
                        </div>
                        <div class="ss-text pull-left">
                            <button id="mstscSubmit" onclick="bt.firewall.set_mstsc($(&quot;#mstscPort&quot;).prop(&quot;value&quot;))" class="btn btn-default btn-sm" type="button" disabled="disabled">更改</button>
                        </div>
                    </div>
                    <div class="mr50 pull-left" style="border-right: 1px solid #ccc; padding-right: 40px;">
                        <div class="ss-text pull-left">
                            <em>启用禁ping</em>
                            <div class="ssh-item" id="isPing">
                                <input class="btswitch btswitch-ios" id="noping" type="checkbox" checked="checked"><label class="btswitch-btn noping" for="noping"></label>
                            </div>
                        </div>
                    </div>
                    <div class="weblog">
                        <span class="f12 c5">Web日志：</span><a href="javascript:openPath('/www/wwwlogs');">/www/wwwlogs</a><em id="logSize">9.7K</em>
                        <button class="btn btn-default btn-sm" onclick="firewall.clear_logs_files();">清空</button>
                    </div>
                </div>
                <div class="white-black-ip bgw mtb15">
                    <div class="black-ip">
                        <div class="def-log">
                            <div class="title c6 plr15">
                                <h3 class="f16">防火墙</h3>
                            </div>
                            <div class="divtable pd15">
                                <div class="firewall-port-box">
                                    <select id="firewalldType" class="bt-input-text c5 mr5" name="type" style="width:80px;">
                                        <option value="port">放行端口</option>
                                        <option value="address">屏蔽IP</option>
                                    </select><input type="text" class="bt-input-text mr5" style="width: 117px;" id="AcceptPort" placeholder="端口"><input type="text" class="bt-input-text mr5" id="Ps" placeholder="备注/说明"><button id="toAccept" onclick="firewall.add_accept_port()" class="btn btn-default btn-sm va0" type="button">放行</button>
                                    <span id="f-ps" class="c9" style="margin-left: 10px;">说明: 支持放行端口范围，如: 3000:3500</span>
                                </div>
                                <div class="tablescroll">
                                    <table id="firewallBody" class="table table-hover" style="min-width: 640px;border: 0 none;"><thead><tr><th>编号</th><th>行为</th><th>状态<a href="https://www.bt.cn/bbs/thread-4708-1-1.html" class="bt-ico-ask" target="_blank" title="点击查看说明">?</a></th><th>添加时间</th><th>说明</th><th width="50" style="text-align:right;">操作</th></tr></thead><tbody><tr><td>55</td><td>放行端口:[551]</td><td>正常</td><td>2019-05-14 23:49:49</td><td>FTP端口</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(55,'551')">删除</a></td></tr><tr><td>54</td><td>放行端口:[40]</td><td>未使用</td><td>2019-05-14 15:37:11</td><td>mmaccms.com</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(54,'40')">删除</a></td></tr><tr><td>53</td><td>放行端口:[50]</td><td>未使用</td><td>2019-05-14 14:41:31</td><td>FTP端口</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(53,'50')">删除</a></td></tr><tr><td>52</td><td>放行端口:[1111]</td><td>未使用</td><td>2019-05-12 03:16:44</td><td>27.50.161.190</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(52,'1111')">删除</a></td></tr><tr><td>51</td><td>放行端口:[50000]</td><td>未使用</td><td>2019-05-10 14:40:47</td><td>www.jesper.top</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(51,'50000')">删除</a></td></tr><tr><td>50</td><td>放行端口:[8077]</td><td>未使用</td><td>2019-05-09 17:27:09</td><td>27.50.161.190</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(50,'8077')">删除</a></td></tr><tr><td>49</td><td>放行端口:[58315]</td><td>未使用</td><td>2019-05-08 14:57:55</td><td>226op38614.iok.l1a</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(49,'58315')">删除</a></td></tr><tr><td>48</td><td>放行端口:[9999]</td><td>未使用</td><td>2019-05-07 23:05:59</td><td>27.50.161.190</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(48,'9999')">删除</a></td></tr><tr><td>47</td><td>放行端口:[16666]</td><td>未使用</td><td>2019-05-05 18:00:21</td><td>1234.com</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(47,'16666')">删除</a></td></tr><tr><td>46</td><td>放行端口:[300]</td><td>未使用</td><td>2019-05-05 02:33:19</td><td>FTP端口</td><td style="text-align:right"><a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port(46,'300')">删除</a></td></tr></tbody></table>
                                </div>
                                <div class="dataTables_paginate paging_bootstrap page firewallBody" style="margin-bottom:0"><div><span class="Pcurrent">1</span><a class="Pnum" onclick="firewall.get_list(2)">2</a><a class="Pnum" onclick="firewall.get_list(3)">3</a><a class="Pnum" onclick="firewall.get_list(4)">4</a><a class="Pnum" onclick="firewall.get_list(5)">5</a><a class="Pnum" onclick="firewall.get_list(6)">6</a><a class="Pnext" onclick="firewall.get_list(2)">下一页</a><a class="Pend" onclick="firewall.get_list(6)">尾页</a><span class="Pcount">共54条数据</span></div></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="white-black-ip bgw mtb15">
                    <div class="black-ip">
                        <div class="def-log">
                            <div class="title c6 plr15">
                                <h3 class="f16">面板操作日志</h3>
                                <a class="btn btn-default btn-sm va0" onclick="bt.firewall.clear_logs(function(){firewall.get_log_list()});">清空</a>
                            </div>
                            <div class="divtable pd15">
                                <div class="tablescroll">
                                    <table id="logsBody" class="table table-hover" style="min-width: 640px;border: 0 none;"><thead><tr><th>编号</th><th>操作类型</th><th>详情</th><th>操作时间</th></tr></thead><tbody><tr><td>47739</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:125.41.184.175</td><td>2019-05-15 14:51:47</td></tr><tr><td>47738</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:113.116.23.13</td><td>2019-05-15 14:51:05</td></tr><tr><td>47737</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:203.90.246.242</td><td>2019-05-15 14:50:55</td></tr><tr><td>47736</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:122.4.65.215</td><td>2019-05-15 14:50:42</td></tr><tr><td>47735</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:223.85.2.252</td><td>2019-05-15 14:48:35</td></tr><tr><td>47734</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:134.159.206.103</td><td>2019-05-15 14:47:49</td></tr><tr><td>47733</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:120.41.239.205</td><td>2019-05-15 14:45:01</td></tr><tr><td>47732</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:222.93.133.128</td><td>2019-05-15 14:43:28</td></tr><tr><td>47731</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:182.119.214.228</td><td>2019-05-15 14:43:20</td></tr><tr><td>47730</td><td>用户登录</td><td><a style="color:green;">登录成功</a>,帐号:bt.cn,登录IP:117.143.136.90</td><td>2019-05-15 14:42:35</td></tr></tbody></table>
                                </div>
                                <div class="dataTables_paginate paging_bootstrap page logsBody" style="margin-bottom:0"><div><span class="Pcurrent">1</span><a class="Pnum" onclick="firewall.get_log_list(2)">2</a><a class="Pnum" onclick="firewall.get_log_list(3)">3</a><a class="Pnum" onclick="firewall.get_log_list(4)">4</a><a class="Pnum" onclick="firewall.get_log_list(5)">5</a><a class="Pnum" onclick="firewall.get_log_list(6)">6</a><a class="Pnum" onclick="firewall.get_log_list(7)">7</a><a class="Pnum" onclick="firewall.get_log_list(8)">8</a><a class="Pnext" onclick="firewall.get_log_list(2)">下一页</a><a class="Pend" onclick="firewall.get_log_list(4774)">尾页</a><span class="Pcount">共47739条数据</span></div></div>
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
        cursor:default;
    }

    .contextmenu li:hover a {
        color: #fff;
    }
</style>


<script type="text/javascript">

    var firewall = {
        get_init:function(){
            firewall.flush_init();
            firewall.get_list();
            firewall.get_log_list();
            firewall.get_logs_size();
            $('.sshswitch').click(function(){
                var status = $("#sshswitch").prop("checked")==true?1:0;
                bt.firewall.set_mstsc_status(status,function(rdata){
                    if(rdata===-1){
                        if(status){
                            $("#sshswitch").prop("checked","checked")
                        }else{
                            $("#sshswitch").removeAttr('checked');
                        }
                    }else{
                        bt.msg(rdata);
                        firewall.flush_init();
                    }
                })
            })
            $('.noping').click(function(){
                var status = $("#noping").prop("checked")==true?1:0;
                bt.firewall.ping(status,function(rdata){
                    if(rdata===-1){
                        if(status){
                            $("#noping").prop("checked","checked")
                        }else{
                            $("#noping").removeAttr('checked');
                        }
                    }else{
                        bt.msg(rdata);
                        firewall.flush_init();
                    }
                })
            })
            $("#firewalldType").change(function(){
                var type = $(this).val();
                var w = '120px';
                var p = lan.firewall.port;
                var t = lan.firewall.accept;
                var m = lan.firewall.port_ps;
                if(type == 'address'){
                    w = '150px';
                    p = lan.firewall.ip;
                    t = lan.firewall.drop;
                    m = lan.firewall.ip_ps;
                }
                $("#AcceptPort").css("width",w);
                $("#AcceptPort").attr('placeholder',p);
                $("#toAccept").html(t);
                $("#f-ps").html(m);
            });
        },
        flush_init:function(){
            bt.firewall.get_ssh_info(function(rdata){
                if(!rdata.status){
                    $("#mstscSubmit").attr('disabled','disabled')
                    $("#mstscPort").attr('disabled','disabled')
                    $('#sshswitch').removeAttr('checked');
                }
                else{
                    $("#mstscSubmit").removeAttr('disabled')
                    $("#mstscPort").removeAttr('disabled')
                    $('#sshswitch').attr('checked','checked');
                }
                if(rdata.ping){
                    $('#noping').removeAttr('checked');
                }else{
                    $('#noping').attr('checked','checked');
                }
                $("#mstscPort").val(rdata.port);
            })
        },
        get_logs_size:function(){
            bt.firewall.get_logs_size(function(rdata){
                $("#logSize").text(rdata);
            })
        },
        clear_logs_files:function(){
            bt.firewall.clear_logs_files(function(rdata){
                $("#logSize").text(rdata);
                bt.msg({msg:lan.firewall.empty,icon:1});
            })
        },
        add_accept_port:function(){
            var type = $("#firewalldType").val();
            var port = $("#AcceptPort").val();
            var ps = $("#Ps").val();
            bt.firewall.add_accept_port(type,port,ps,function(rdata){
                if(rdata.status){
                    firewall.get_list();
                    $("#AcceptPort").val('');
                    $("#Ps").val('');
                }
                bt.msg(rdata);
            })
        },
        remove_accept_port: function (id,port) {
            bt.firewall.del_accept_port(id, port, function (rdata) {
                if (rdata.status) {
                    firewall.get_list();
                }
                bt.msg(rdata);
            })
        },
        get_list:function(page,search){
            if(page==undefined) page=1;
            bt.firewall.get_list(page, search, function (rdata) {
                $('.firewallBody').html(rdata.page);
                var ports_ps = { "3306": "MySQL服务默认端口", "888": "phpMyAdmin默认端口", "22": "SSH远程服务", "20": "FTP主动模式数据端口", "21": "FTP协议默认端口", "39000-40000": "FTP被动模端口范围", "30000-40000": "FTP被动模端口范围","11211":"Memcached服务端口","873":"rsync数据同步服务","8888":"宝塔Linux面板默认端口"}
                var _tab =  bt.render({
                    table:'#firewallBody',
                    columns:[
                        { field: 'id', title: "编号"},
                        { field: 'port', title: "行为",templet:function(item){
                                var _ps = lan.firewall.accept_port;
                                if(bt.contains(item.port,'.')){
                                    _ps = lan.firewall.drop_ip;
                                }
                                _ps += ':['+item.port+']'
                                return _ps;
                            }},
                        { field: 'status', title: "状态",templet:function(item){
                                var status = '';
                                switch(item.status){
                                    case 0:
                                        status = lan.firewall.status_not;
                                        break;
                                    case 1:
                                        status = lan.firewall.status_net;
                                        break;
                                    default:
                                        status = lan.firewall.status_ok;
                                        break;
                                }
                                return status;
                            },help:'https://www.bt.cn/bbs/thread-4708-1-1.html'},
                        { field: 'addtime', title: "添加时间"},
                        { field: 'ps', title: "说明", templet: function (item) {
                                if (item.port in ports_ps) return ports_ps[item.port];
                                return item.ps;
                            }},
                        { field: 'opt',align:'right',width:50, title: "操作",templet:function(item){
                                return '<a href="javascript:;" class="btlink" onclick="firewall.remove_accept_port('+item.id+',\''+item.port+'\')">删除</a>';
                            }}
                    ],
                    data:rdata.data
                })
            })
        },
        get_log_list:function(page,search){
            if(page==undefined) page=1;
            bt.firewall.get_log_list(page,search,function(rdata){
                $('.logsBody').html(rdata.page);
                var _tab =  bt.render({
                    table:'#logsBody',
                    columns:[
                        { field: 'id', title: "编号"},
                        { field: 'type', title: "操作类型"},
                        { field: 'log', title: "详情"},
                        { field: 'addtime', title: "操作时间"}
                    ],
                    data:rdata.data
                })
            })
        }
    }
    firewall.get_init();
</script>
