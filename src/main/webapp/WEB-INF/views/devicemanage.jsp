<%--
  Created by IntelliJ IDEA.
  User: 侯景瀚
  Date: 2019/4/28
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>数据展示-电力通信的“全科医生”</title>
    <link href="css/init.css " rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/headerAndFooter.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/highcharts.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--<script src="js/highchart.js"></script>-->
    <link href="Font-Awesome-3.2.1/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- 此页面样式-->
    <link href="css/userHelp.css" rel="stylesheet">
    <style>

        .tab{
            width:100%;
            height:800px;
            position:relative;
            margin:0 auto;
            top:5px;
        }
        .menu{
            font-size:30px;
            color:#2A9F96;
            margin:30px 30px;

        }
        .tab_menu {
            width: 19.8%;
            float: left;
            border: 1px solid #ccc;
            height: 800px;
            background: #f8f8f8;
        }
        .tabBox {
            width:80%;
            float:right;
            border:1px solid #ccc;
            height:800px;
        }
        .tab_menu ul li{
            border:1px solid #ccc;
            width:180px;
            list-style:none;
            height:50px;
            line-height:50px;
            text-align:center;
            margin-top:20px;
            border-radius:20px;
            font-size:18px;

        }
        .tabBox>div{
            /*border:1px solid #ddd;*/
            /*width:300px;*/
            width:80%;
            /*right:0.2%;*/
            height:800px;
            padding-left:10px;
            position:absolute;
        }
        .sp{
            font-size:22px;
            margin:20px -5px;
            font-weight:600;
            width:200px;
            margin-left:0%;
        }
        .selected{
            background:#2A9F96;
            color:#fff;
            /*box-shadow: #2A9F96 0 3px 3px 3px;*/
            box-shadow: 0 0 0 #ccc, /*左边阴影*/
            0 0px 0 #ccc, /*顶部阴影*/
            0 3px 0 #ddd, /*//底部阴影*/
            3px 0 0 #ddd; /*//右边阴影*/
        }
        .hides{
            display:none;
        }
        table{
            text-align:center;
        }
        .ww{
            margin-top:30px;
            margin-left:20px;
        }
        #baidudt{margin-top:30px;margin-left:-5px;}
        #title{font-size:24px;}
        span{font-size:20px;}
        #longitude,#latitude{width:130px;height:23px;border:1px solid #444;border-radius:4%;}
        #bs{height:28px;width:80px;text-align:center;background-color:#ccccf1;border:1px solid #ccccf1;font-size:16px;color:#fff;}
        #allmap{margin-left:15px;margin-top:20px;display:inline-block;width:980px;height:580px;border:1px solid #ccc;overflow: hidden;}
        .anchorBL{display:none;}
        #r-result{margin-left:15px;margin-top:10px;}
        #r-result>.bb{width:160px;height:35px;text-align:center;border:1px solid #ccccf1;background-color:#b2b1f1;color:#fff;font-size:20px;}
        #hang{margin-top:100px;}
        #cc{margin-left:100px;}
    </style>
    <script language="JavaScript" src="http://api.map.baidu.com/api?v=3.0&ak=H4xvZmumKH5zmN91FPv84Mq4xIpUGucf"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
</head>
<body>
<header>
    <h2>${pageContext.request.contextPath}</h2>
    <nav class="header">
        <img class="logo" src="<%=basePath%>/image/electlogo3.png"/><!--logo-->
        <a class="items" href="<%=basePath%>/index">首页</a>
        <a class="items" href="<%=basePath%>/sensor/list">设备探索</a>
        <a class="items" href="<%=basePath%>/showSensor">硬件展示</a>
        <div class="logined">
            <a class="developerBtn">开发者中心</a>
            <a class="icon-bell bell" href="<%=basePath%>/user/userHelp"></a>
            <a class="icon-user user" href="<%=basePath%>/user/userHome"></a>
        </div>
    </nav>
</header>

<div class="tab">
    <div class="tab_menu">
        <div class="menu">menu：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="image/specific.png" width="33px"/></div>
        <ul>
            <li class="selected">传感器</li>
            <li>实时数据</li>
            <li>地图模式</li>
            <li>集中监控</li>
            <li>图表展示</li>
        </ul>
    </div>
    <div class="tabBox">
        <div>
            <div class="sp">传感器列表</div>
            <table border='1' width='98%' cellpadding='3' cellspacing='0'>
                <tr height='45'bgcolor="#dfdfdf">
                    <td >设备名称</td>
                    <td>传感器名称</td>
                    <td>最新数据</td>
                    <td>创建时间</td>
                    <td>类型</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${sensorList}" var="sensor">
                    <tr height='35'>
                        <td>智能机房巡检系统</td>
                        <td>${sensor.name}</td>
                        <td class="ddt"></td>
                        <td>${sensor.created}</td>
                        <td>${sensor.type}</td>
                        <td><a href=""/>删除|编辑</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <!--TODO-->
        <!--实时数据展示-->
        <div class="hides">
            <div class="sp">实时数据展示</div>
            <table border='1' width='98%' cellpadding='3' cellspacing='0'>
                <tr height='45'bgcolor="#dfdfdf">
                    <td>传感器名称</td>
                    <td>正常值范围</td>
                    <td>最新数据</td>
                    <td>历史数据</td>
                    <td>接收数据时间</td>
                    <td>操作</td>
                </tr>

                <tr height='35' bgcolor="#f2f2f2">
                    <td>温度传感器</td>
                    <td>10-40</td>
                    <td class="qqs"></td>
                    <td class="hhd"></td>
                    <td class="a"></td>
                    <td>查看更多|删除|编辑</td>
                </tr>
            </table>
        </div>

        <div class="hides">
            <div id="baidudt">
                <div id="title">地图模式</div>
                <!--<span>经度：</span><input id="longitude" type="text"/>
                <span>纬度：</span><input id="latitude" type="text"/>
                <input id="bs" type="button" value="查询" onclick="theLocation()" />-->
            </div>
            <div id="allmap"></div>
            <div id="r-result">
                <input class="bb" type="button" onclick="add_overlay();" value="添加点聚合" />
                <input class="bb" type="button" onclick="remove_overlay();" value="重新生成点聚合" />
                <span id="cc">经度：</span><input id="longitude" type="text"/>
                <span>纬度：</span><input id="latitude" type="text"/>
                <input id="bs" type="button" value="查询" onclick="theLocation()" />
            </div>
            <div id="hang"></div>
        </div>
        <!--TODO-->
        <!--嵌入式传递数据-->
        <div class="hides ww">
            <table border='1'width="200" cellpadding='3' cellspacing='0'>
                <div style="width:200px;background:#ddd;height:30px;text-align:center;font-size:20px;">电网全科医生</div>
                <tr>
                    <td>空气中的温度</td>
                    <td>27℃</td>
                </tr>
                <tr>
                    <td>空气中的湿度</td>
                    <td>52</td>
                </tr>
                <tr>
                    <td>降水量检测模块</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>太阳光照强度</td>
                    <td>240</td>
                </tr>
                <tr>
                    <td>风速检测模块</td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>电压检测</td>
                    <td>200V</td>
                </tr>
                <tr>
                    <td>mq135检测</td>
                    <td>2.1</td>
                </tr>
                <tr>
                    <td>海拔高度</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td>风向检测</td>
                    <td>东南</td>
                </tr>
                <tr>
                    <td>风速传感检测</td>
                    <td>80</td>
                </tr>
                <tr>
                    <td>是否下雨检测</td>
                    <td>否</td>
                </tr>
                <tr>
                    <td>有毒气体检测</td>
                    <td>2</td>
                </tr>
            </table>
        </div>
        <div class="hides">
            <div class="container0" class='dfg' style="width: 800px; height: 380px;margin: 20px 10px 5px 100px"></div>
            <div class="container1" class='dfg' style="width: 800px; height: 380px;margin: 10px 10px 5px 100px"></div>
        </div>
    </div>
</div>
<!--底部-->
<footer class="footer">
    <div class="link">
        <h2>友情链接</h2>
        <a href="http://iot.10086.cn/cn/">中移物联网</a>
        <a href="http://iot.10086.cn/cn/corp/priv-net">物联网专网</a>
        <a href="https://www.oschina.net/">开源中国</a>
        <a href="http://bbs.elecfans.com/">电子发烧友</a>
    </div>
    <div class="app">
        <h2>APP下载</h2>
        <img src="image/homePage-2DCode.png" style="width: 150px; height: 150px"/>
    </div>
    <div class="contact">
        <h2>联系方式</h2>
        <a href="javascript: return false;">电话：029-88166000</a>
        <a href="javascript: return false;">传真：029-88166000</a>
        <a href="javascript: return false;">QQ：1234567890</a>
        <a href="javascript: return false;">WeChat: xingongshiyanshi</a>
        <a href="javascript: return false;">邮箱：1234567890@qq.com</a>
        <a href="javascript: return false;">地址：陕西省西安市长安区西安邮电大学信工实验室</a>
    </div>
</footer>

<script>
    $("div.tab_menu ul li").click(function(){
        $(this).addClass("selected").siblings().removeClass("selected");
        var index=$("div.tab_menu ul li").index(this);
        $("div.tabBox>div").eq(index).show().siblings().hide();
    }).hover(function(){
        $(this).addClass("hover");
    },function(){
        $(this).removeClass("hover");
    });

    setInterval(function(){
        $.ajax({
            type: "post",
            url:"http://47.100.6.42/electric/get_data.php",
            dataType: "json",
            success: function(res){
                if (res != null && res != "") {
                    console.log(res);
                    var aa=[];
                    for(var i=0;i<res.length;i++){
                        var nn=res[i].split("");
                        var len=res[i].split("").length;
                        for(var j=0;j<len;j++){
                            if(res[i].split("")[j]==':'){
                                var dd=nn.slice(j+1,len).join('');
                                aa.push(dd);
                                break;
                            }
                        }
                    }
                    for(var i=0;i<15;i++){
                        $(".hhd")[i].innerHTML=aa[i];
                    }
                }
            }
        });
    },6000);
    setInterval(function(){
        $.ajax({
            type: "post",
            url:"http://47.100.6.42/electric/get_data.php",
            dataType: "json",
            success: function(res){
                if (res != null && res != "") {
                    console.log(res);
                    var aa=[];
                    for(var i=0;i<res.length;i++){
                        var nn=res[i].split("");
                        var len=res[i].split("").length;
                        for(var j=0;j<len;j++){
                            if(res[i].split("")[j]==':'){
                                var dd=nn.slice(j+1,len).join('');
                                aa.push(dd);
                                break;
                            }
                        }
                    }
                    for(var i=0;i<15;i++){
                        $(".ddt")[i].innerHTML=aa[i];
                    }
                }
            }
        });
    },500);
    setInterval(function(){
        $.ajax({
            type: "post",
            url:"http://47.100.6.42/electric/get_data.php",
            dataType: "json",
            success: function(res){
                if (res != null && res != "") {
                    //   console.log(res);
                    var aa=[];
                    for(var i=0;i<res.length;i++){
                        var nn=res[i].split("");
                        var len=res[i].split("").length;
                        for(var j=0;j<len;j++){
                            if(res[i].split("")[j]==':'){
                                var dd=nn.slice(j+1,len).join('');
                                aa.push(dd);
                                break;
                            }
                        }
                    }
                    console.log(aa);
                    for(var i=0;i<15;i++){
                        $(".qqs")[i].innerHTML=aa[i];
                    }

                    var date=new Date();
                    var year=date.getFullYear(); //获取当前年份   
                    var mon=date.getMonth()+1; //获取当前月份   
                    var da=date.getDate(); //获取当前日     
                    var h=date.getHours(); //获取小时   
                    var m=date.getMinutes(); //获取分钟   
                    var s=date.getSeconds(); //获取秒
                    var vv=document.getElementsByClassName("a");
                    for(var i=0;i<15;i++){
                        vv[i].innerHTML=year+'-'+mon+'-'+da+'  '+h+':'+m+':'+s;
                    }
                }
            }
        });
    },3000);

    $.ajax({
        type: "post",
        url:"http://47.100.6.42/electric/get_data.php",
        dataType: "json",
        success: function(res){
            if (res != null && res != "") {
                //console.log(res);
                var aa=[];
                for(var i=0;i<res.length;i++){
                    var nn=res[i].split("");
                    var len=res[i].split("").length;
                    for(var j=0;j<len;j++){
                        if(res[i].split("")[j]==':'){
                            var dd=nn.slice(j+1,len).join('');
                            aa.push(dd);
                            break;
                        }
                    }
                }
                for(var i=0;i<15;i++){
                    $(".hhd")[i].innerHTML=aa[i];
                }
            }
        }
    });

    var map=new BMap.Map("allmap");//创建Map实例
    map.centerAndZoom(new BMap.Point(113.404,36.915),12);//初始化地图
    var opts = {type: BMAP_NAVIGATION_CONTROL_SMALL};
    map.addControl(new BMap.NavigationControl(opts));

    map.setCurrentCity("北京");
    map.enableScrollWheelZoom();

    //用经纬度设置地图中心点
    function theLocation(){
        if(document.getElementById("longitude").value!=""&&document.getElementById("latitude").value!=""){
            map.clearOverlays();
            var new_point=new BMap.Point(document.getElementById("longitude").value,document.getElementById("latitude").value);
            var marker=new BMap.Marker(new_point);//创建标注
            map.addOverlay(marker);//将标注添加到地图中
            map.panTo(new_point);
        }
    }

    //从数据库获取，并动态显示在地图里
    function getLonandLat(){
        $.ajax({
            url:"",//请求的地址
            cache:true,
            async:"true",
            dataType:"json",
            type:"GET",
            success:function(result){
                if(result!=undefined&&result.length>0){
                    map.clearOverlays();//清除上一次的标记
                    //将实时获得的经纬度显示在地图上
                    map.panTo(new BMap.Point(result.longitude,result.latitude));
                }
            }
        });
        //实现一秒钟更新一次数据
        /*setTimeout(function(){
            getLonandLat();
        },1000);*/
    }
    getLonandLat();//调用函数

    //实现点聚合功能
    var MAX=10;
    var markers=[];
    var markerClusterer=null;
    for(var i=0;i<MAX;i++){
        var pt=new BMap.Point(Math.random()*40+85,Math.random()*30+21);
        var marker=new BMap.Marker(pt);
        map.addOverlay(marker);//增加标记
        markers.push(marker);//添加到数组中
    }
    //生成一个marker数组，然后调用markerClusterer类
    function add_overlay(){
        markerClusterer=new BMapLib.MarkerClusterer(map,{markers:markers});
    }
    function remove_overlay(){
        for(var i=0;i<4;i++){
            map.removeOverlay(markers[i]);
        }
        var markers1=markers.slice(4,markers.length);
        markerClusterer.clearMarkers();
        markerClusterer=new BMapLib.MarkerClusterer(map,{markers:markers1});
    }


    var datas=[],names=["temperature","illumination","speed","direction","rainfall","isRain","mq135","mq2", "humidity","pressure","altitude","voltage","pitch","roll","yaw"];
    var cname=['温度传感器(℃)','光照传感器(lux)','风速传感器(m/s)',
        '风向传感器','风向传感器','是否下雨传感器','有害气体传感器(Nm3/h)',
        '烟雾传感器(Nm3/h)','湿度传感器(%RH)','大气压强传感器(Pa)','海拔高度传感器(m)']
    $(".dfg").ready(function() {
        var chart = {
            type: 'spline',
            animation: Highcharts.svg,// don't animate in IE < IE 10.
            marginRight: 10,
            marginTop:60,
            events: {
                load: function () {
                    // set up the updating of the chart each second
                    var series = this.series[0];
                    setInterval(function () {
                        $.ajax({
                            url: "http://47.100.6.42/electric/get_data.php",
                            type: 'post',
                            dataType: "json",
                            async: false,
                            cache: false,
                            success: function (res){
                                //console.log(res);
                                for(var i=0;i<res.length;i++){
                                    var nn=res[i].split("");
                                    var len=res[i].split("").length;
                                    for(var j=0;j<len;j++){
                                        if(res[i].split("")[j]==':'){
                                            var dd=nn.slice(j+1,len).join('');
                                            datas.push(dd);
                                            break;
                                        }
                                    }
                                }
                                var x=(new Date()).getTime();
                                for(var i=0;i<2;i++){
                                    var y=Number(datas[i]);
                                }
                                series.addPoint([x, y], true, true);
                            }
                        });
                    }, 1000);
                }
            }
        };
        var xAxis = {
            type: 'datetime',
            tickPixelInterval: 150//横轴的间距
        };
        var yAxis = {
            title: {
                text: 'Value'
            },
            plotLines: [{
                value: 0,
                width: 3,
                color: '#808080'//横轴的线颜色
            }]
        };
        //标注
        var tooltip = {
            formatter: function () {
                //console.log(this.x);
                return '<b>' + this.series.name + '</b><br/>' +
                    Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                    Highcharts.numberFormat(this.y, 2);
            }
        };
        //以平滑的曲线展现
        var plotOptions = {
            area: {
                pointStart: 1940,
                marker: {
                    enabled: false,
                    symbol: 'circle',
                    radius: 2,
                    states: {
                        hover: {
                            enabled: true
                        }
                    }
                }
            }
        };
        var legend = {
            enabled: false
        };
        var credits={
            enabled:false
        };
        var exporting = {
            enabled: false
        };
        var series= [{
            name: 'Random data',
            data: (function () {
                // generate an array of random data
                var data = [],time = (new Date()).getTime(),i;
                for (i = -6; i <= 0; i += 1) {//代表有多少个点
                    data.push({
                        x: time + i * 1000,
                        y:(Math.random() * (1.1 - 1) + 1)*20
                    });
                }
                //console.log(data);
                return data;
            }())
        }];
        for(var i=0;i<2;i++){
            var title = {
                //text: 'Live random data'
                text: names[i]+cname[i]
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.tooltip = tooltip;
            json.xAxis = xAxis;
            json.yAxis = yAxis;
            json.legend = legend;
            json.exporting = exporting;
            json.series = series;
            json.plotOptions = plotOptions;
            json.credits=credits;
            Highcharts.setOptions({
                global: {
                    useUTC: false
                }
            });
            $('.container'+i).highcharts(json);
        }
    });
</script>

</body>
</html>
