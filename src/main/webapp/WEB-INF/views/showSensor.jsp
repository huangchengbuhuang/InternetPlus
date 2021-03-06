<%--
  Created by IntelliJ IDEA.
  User: 侯景瀚
  Date: 2019/4/28
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>硬件展示-电力通信的“全科医生”</title>
    <link href="css/init.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="Font-Awesome-3.2.1/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- 导航和底部样式-->
    <link href="css/headerAndFooter.css" rel="stylesheet">
    <style>
        .main{
            width:80%;
            margin:0 auto;
            margin-top: 50px;
        }
        .main .mainShow{
            margin-bottom: 30px;
        }
        .thumbnail:hover{
            border-color: #2A9F96;
        }
        .thumbnail .intro{
            overflow:hidden;
            white-space:nowrap;
            text-overflow:ellipsis;
        }
        .row{
            display: flex;
            flex-wrap: wrap;
        }
        .row .imgHere{width:242px;height:200px;}
        .row .imgHere img{width:238px;height:200px;}
        .row .btn-color{
            background-color: #2A9F96;
            color: #fff;
        }
        .page{
            width:100%;
            height:40px;
            position: relative;
            margin-top: 50px;
        }
        .page .pagination{
            position: absolute;
            width:460px;
            margin: 0 auto;
            left:0;
            right:0;
        }
        .page .pagination li a{
            color:#2A9F96;
        }
        .page .pagination .active a{
            background-color: #2A9F96;
        }
        .pagination .active a:link{
            color:#fff;
        }
    </style>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--jqPaginator jquery分页插件-->
    <script src="js/jqPaginator.js"></script>
</head>
<body>
<!--导航-->
<header>
    <nav class="header">
        <img class="logo" src="image/electlogo3.png"/><!--logo-->
        <a class="items" href="homePage.html">首页</a>
        <a class="items" href="devicemanage.jsp">设备探索</a>
        <a class="items" href="hardwareShow.html">硬件展示</a>

        <div class="logined">
            <a class="developerBtn">开发者中心</a>
            <a class="icon-bell bell" href="UserHelp.html"></a>
            <a class="icon-user user" href="userHome.jsp"></a>
        </div>
    </nav>
</header>
<!--主要内容-->
<div class="main">
    <div class="mainShow">
        <span class="glyphicon glyphicon-stop" aria-hidden="true"></span>
        <span>硬件设备展示</span>
    </div>
    <div class="row">
    </div>
</div>
<!--分页-->
<div class="page">
    <div id="Pagination" class="pagination"><!-- 这里显示分页 --></div>
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
    var hardwares = {
        "hardwaresList": [
            {
                "name":"mq2",
                "id":"H001",
                "imgUrl":"<%=basePath%>/image/mq135.jpg",
                "intro":"C id elit non mi porta gravida at eged nibh ultricies vehicula ut id elit."
            },
            {
                "name":"温度传感器",
                "id":"H002",
                "imgUrl":"<%=basePath%>/image/wsd.jpg",
                "intro":"Cras j. Donet metus. Nullam id dolor id nibh ultricies vehicula ut id elit."
            },
            {
                "name":"湿度传感器",
                "id":"H003",
                "imgUrl":"<%=basePath%>/image/wsd.jpg",
                "intro":"Cras jurta gravida at eget mericies vehicula ut id elit."
            },
            {
                "name":"光照传感器",
                "id":"H004",
                "imgUrl":"<%=basePath%>/image/gz.jpg",
                "intro":"Crasd elit non mm id dolor id nibh ultricies vehicula ut id elit."
            },
            {
                "name":"电压传感器",
                "id":"H005",
                "imgUrl":"<%=basePath%>/image/dy.jpg",
                "intro":"Cra Donec id elietus. Nullam id dolor id nibh ultricies vehicula ut id elit."
            },
            {
                "name":"风向检测传感器",
                "id":"H006",
                "imgUrl":"<%=basePath%>/image/fx2.jpg",
                "intro":"Cra Donec id elietus. Nullam id dolor id nibh ultricies vehicula ut id elit."
            },
            {
                "name":"降水量传感器",
                "id":"H007",
                "imgUrl":"<%=basePath%>/image/yd.jpg",
                "intro":"Cra Donec id elietus. Nullam id dolor id nibh ultricies vehicula ut id elit."
            },
            {
                "name":"mq135",
                "id":"H008",
                "imgUrl":"<%=basePath%>/image/mq2.jpg",
                "intro":"Cra Donec id elietus. Nullam id dolor id nibh ultricies vehicula ut id elit."
            }
        ]
    };
    $(function(){
        var showlist = everyHardware(hardwares.hardwaresList);
        for(var i=0;i<hardwares.hardwaresList.length;i++){
            $(".row").append(showlist[i]);
        }

        // 创建分页
        //将num值传给后台
        $("#Pagination").jqPaginator( {
            totalPages: 6,
            visiblePages: 5,
            currentPage: 1,
            onPageChange: function (num, type) {
                //alert(num);
            },
            first: '<li class="first"><a href="javascript:void(0);">首页<\/a><\/li>',
            prev: '<li class="prev"><a href="javascript:void(0);"><i class="arrow arrow2"><\/i>上一页<\/a><\/li>',
            next: '<li class="next"><a href="javascript:void(0);">下一页<i class="arrow arrow3"><\/i><\/a><\/li>',
            last: '<li class="last"><a href="javascript:void(0);">末页<\/a><\/li>',
            page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>'
        });
    });

    function everyHardware(data){
        var list=[];
        for(var i=0;i<data.length;i++){
            list[i]='<div class="col-sm-6 col-md-3">'
                +'<div class="thumbnail">'
                +'<div class="imgHere">'
                +'<img src="'+data[i].imgUrl+'" alt="...">'+'</div>'
                +'<div class="caption">'
                +'<h3>'+data[i].name+'</h3>'
                +'<p class="intro">'+data[i].intro+'</p>'
                +'<p>'+'<button type="button" class="btn btn-color" data-toggle="modal" data-target="#'+data[i].id+'">'
                +"了解详情"+"</button>"
                +'<div class="modal fade" tabindex="-1" role="dialog" id="'+data[i].id+'" aria-labelledby="'+data[i].id+"label"+'">'
                +'<div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header">'
                +'<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">'
                +"&times;"+'</span></button>'+'<h4 class="modal-title" id="'+data[i].id+"label"+'">'+data[i].name+'</h4></div>'
                +'<div class="modal-body">'+data[i].intro+'</div></div></div></div></p></div></div></div>';
        }
        return list;
    }
</script>
</body>
</html>
