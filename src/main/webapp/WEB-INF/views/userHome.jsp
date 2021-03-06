<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
    <link href="Font-Awesome-3.2.1/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/userDocument.css"/>
    <link rel="stylesheet" href="css/headerAndFooter.css">
</head>


<body>

<header>
    <nav class="header">
        <img class="logo" src="image/electlogo3.png"/><!--logo-->
        <a class="items" href="homePage.html">首页</a>
        <a class="items" href="devicemanage.jsp">设备探索</a>
        <a class="items" href="hardwaresShow.html">硬件展示</a>

        <div class="logined">
            <a class="developerBtn">开发者中心</a>
            <a class="icon-bell bell" href="UserHelp.html"></a>
            <a class="icon-user user" href="userHome.jsp"></a>
        </div>
    </nav>
</header>

<div class="content">
   <div class="title">
       <div class="text">个人资料</div>
       <div class="edit">
           <a class="button">编辑</a>
           <a class="button" href="<%=basePath%>/user/outLogin" style="width: 120px;">退出当前账号</a></div>
   </div>
   <form id="form">
       <div class="form-row">
           <h3>基本信息</h3>
           <hr style="color: #DDE2E6"/>
       </div>
       <div class="form-row" style="height: 150px">
           <label>头像：</label>
           <div class="avatarBox">
               <input type="file" id="avatarSelect"/>
               <img src="<%=basePath%>/image/sky4.jpg" id="avatarPreview"/>
           </div>
           <input type="text" id="avatar" style="display: none"/>
       </div>
       <div class="form-row">
           <label>用户名：</label>
           <div class="d">
               <span id="showName">${name}</span>
               <a id="changePassword">&emsp;修改密码</a>
           </div>
       </div>
       <div class="form-row">
           <label>性别：</label>
           <div class="d">
               <span id="showSex">女</span>
           </div>
           <input type="hidden" name="sex" id="sex"/>
       </div>
       <div class="form-row">
           <label>生日：</label>
           <div class="d">
               <span id="showBirthday">1995-1-1</span>
           </div>
           <input type="hidden" name="birthday" id="birthday"/>
       </div>
       <div class="form-row">
           <label>所在地：</label>
           <div class="d">
               <span id="showAddress">陕西省西安市</span>
           </div>
           <input type="hidden" name="address" id="address"/>
       </div>
       <div class="form-row">
           <h3>联系信息</h3>
           <hr style="color: #DDE2E6"/>
       </div>
       <div class="form-row" style="height: 30px">
           <label>联系电话：</label>
           <div class="d">
               <span id="showPhone">18437865432</span>
           </div>
           <input type="hidden" name="phoneNumber" id="phoneNumber"/>
       </div>
       <label class="error"></label>


       <div class="form-row" style="height: 30px">
           <label>邮箱：</label>
           <div class="d">
               <span id="showEmail">1873450837@qq.com</span>
           </div>
           <input type="hidden" name="email" id="email"/>
       </div>
       <label class="error"></label>

       <div class="form-row" style="height: 30px">
           <label>QQ：</label>
           <div class="d">
               <span id="showQQ">1873450837</span>
           </div>
           <input type="hidden"  name="QQ" id="QQ"/>
       </div>
       <label class="error"></label>

       <div id="buttonContainer">
           <span class="submitButton">提交</span>
           <span class="cancelButton">取消</span>
       </div>
   </form>

   <div class="changePassword">
       <form id="changePasswordForm">
           <h2 style="text-align: center">账号管理</h2>
           <div class="row">
               <span class="label">用户名：</span>
           </div>
           <div class="row">
               <span class="label">旧密码：</span>
               <input id='oldPW' name="oldPw" type="password" placeholder="请输入原始密码"/>
           </div>
           <div class="row">
               <span class="label">新密码：</span>
               <input type="password" id="newPw" name="newPW" placeholder="请输入新密码"/>
           </div>
           <div class="row">
               <span class="label">新密码：</span>
               <input type="password" id='confirmPw' name='confirmPW' placeholder="请确认新密码"/>
           </div>

           <div class="button">
               <span id="changePasswordSubmit">提交</span>
               <span id="changePasswordCancel">取消</span>
           </div>
       </form>
   </div>
</div>



<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/userDocument.js"></script>
</body>
</html>