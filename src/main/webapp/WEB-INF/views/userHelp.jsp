<%--
  Created by IntelliJ IDEA.
  User: 侯景瀚
  Date: 2019/4/28
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>开发者文档-电力通信的“全科医生”</title>
    <link href="css/init.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/headerAndFooter.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="Font-Awesome-3.2.1/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- 此页面样式-->
    <link href="css/userHelp.css" rel="stylesheet">
    <style>
        .main{
            width:80%;
            margin:0 auto;
            margin-top: 50px;
            margin-bottom: 50px;
        }

    </style>
</head>
<body>
<header>
    <nav class="header">
        <img class="logo" src="image/electlogo3.png"/><!--logo-->
        <a class="items" href="homePage.html">首页</a>
        <a class="items" href="devicemanage.jsp ">设备探索</a>
        <a class="items" href="hardwaresShow.html">硬件展示</a>


        <div class="logined">
            <a class="developerBtn">开发者中心</a>
            <a class="icon-bell bell" href="UserHelp.html"></a>
            <a class="icon-user user" href="userHome.jsp"></a>
        </div>
    </nav>
</header>
<div class="main">
    <section class="example">
        <section class="hashTabber-sandstone-wrapper">
            <ol class="hashTabber-nav hashTabber-sandstone" data-hashtabber-id="dinosaurs" data-hashtabber-default="pterosaur">
                <h2>Species:</h2>
                <li data-hashtabber-pair="trilobite" class=" active">
                    <a href="#dinosaurs=trilobite">平台概述</a>
                </li>
                <li data-hashtabber-pair="velociraptor" class="">
                    <a href="#dinosaurs=velociraptor">协议指南</a>
                </li>
                <li data-hashtabber-pair="pterosaur" class="">
                    <a href="#dinosaurs=pterosaur">帮助文档</a>
                </li>
                <li data-hashtabber-pair="lambeosaurus" class="">
                    <a href="#dinosaurs=lambeosaurus">Lambeosaurus magnicristatus</a>
                </li>
                <li data-hashtabber-pair="eoraptor" class="">
                    <a href="#dinosaurs=eoraptor">Eoraptor</a>
                </li>
            </ol><!--
 --><ol class="hashTabber-data hashTabber-sandstone" data-hashtabber-id="dinosaurs">
            <li data-hashtabber-pair="trilobite" class=" active">
                <article>
                    <h3>Trilobite</h3>
                    <p>Trilobites are a well-known fossil group of extinct marine arthropods that form the class Trilobita. Trilobites form one of the earliest known groups of arthropods. The first appearance of trilobites in the fossil record defines the base of the Atdabanian stage of the Early Cambrian period (521 million years ago), and they flourished throughout the lower Paleozoic era before beginning a drawn-out decline to extinction when, during the Devonian, all trilobite orders except Proetida died out. Trilobites finally disappeared in the mass extinction at the end of the Permian about 250 million years ago. The trilobites were among the most successful of all early animals, roaming the oceans for over 270 million years.</p>
                </article>
            </li>
            <li data-hashtabber-pair="velociraptor" class="">
                <article>
                    <h3>Velociraptor</h3>
                    <p>Velociraptor is a genus of dromaeosaurid theropod dinosaur that lived approximately 75 to 71 million years ago during the later part of the Cretaceous Period.Two species are currently recognized, although others have been assigned in the past. The type species is V. mongoliensis; fossils of this species have been discovered in Mongolia. A second species, V. osmolskae, was named in 2008 for skull material from Inner Mongolia, China.</p>
                </article>
            </li>

            <li data-hashtabber-pair="pterosaur" class="">
                <article>
                    <h3>Pterosaur</h3>
                    <p>Pterosaurs were flying reptiles of the clade or order Pterosauria. They existed from the late Triassic to the end of the Cretaceous Period (228 to 66 million years ago). Pterosaurs are the earliest vertebrates known to have evolved powered flight. Their wings were formed by a membrane of skin, muscle, and other tissues stretching from the ankles to a dramatically lengthened fourth finger. Early species had long, fully toothed jaws and long tails, while later forms had a highly reduced tail, and some lacked teeth. Many sported furry coats made up of hair-like filaments known as pycnofibres, which covered their bodies and parts of their wings. Pterosaurs spanned a wide range of adult sizes, from the very small Nemicolopterus to the largest known flying creatures of all time, including Quetzalcoatlus and Hatzegopteryx.</p>
                </article>
            </li>
            <li data-hashtabber-pair="lambeosaurus" class="">
                <article>
                    <h3>Lambeosaurus magnicristatus</h3>
                    <p>Lambeosaurus is a genus of hadrosaurid dinosaur that lived about 76 to 75 million years ago, in the Late Cretaceous period (Campanian) of North America. This bipedal/quadrupedal, herbivorous dinosaur is known for its distinctive hollow cranial crest, which in the best-known species resembled a hatchet. Several possible species have been named, from Canada, the United States, and Mexico, but only the two Canadian species are currently recognized as valid.</p>
                </article>
            </li>

            <li data-hashtabber-pair="eoraptor" class="">
                <article>
                    <h3>Eoraptor</h3>
                    <p>Eoraptor was one of the world's earliest dinosaurs that lived ca. 231.4 million years ago, during the latter part of the Triassic Period in Western Gondwana, what is now the northwestern region of Argentina. It was a small sized (1 m (3.3 ft) long), lightly-built, ground-dwelling, two-legged bipedal saurischian, close to the ancestry of both theropods and sauropodomorphs. It is known from several well-preserved skeletons. When first described in 1993, it was considered to be one of the earliest, if not the earliest known dinosaur. Eoraptor has heterodont dentition, suggesting that it was omnivorous, and that this feeding strategy had evolved early on in dinosaurs.</p>
                </article>
            </li>
        </ol>
        </section>
    </section>
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
    $(function(){
        $(".hashTabber-nav li").each(function(index){
            $(this).click(function(){
                $(this).addClass("active");
                $(".hashTabber-nav li").not(this).removeClass("active");
                $(".hashTabber-data li").removeClass("active");
                $(".hashTabber-data li:eq("+index+")").addClass("active");
            })
        })
    })
</script>
</body>
</html>
