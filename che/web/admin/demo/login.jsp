<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/11/1
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" /><!--字符集-->
    <title>系统登录</title>
    <link rel="stylesheet" href="css/style.css" />



    <script src="js/jquery.min.js"></script>
    <!--<script src="js/cloud.js"></script>-->
    <script language="javascript">
        $(function(){
            $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
            $(window).resize(function(){
                $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
            })
        });
    </script>
</head>

<body class="xingkong">



<div class="stars"></div>

<script>
    $(document).ready(function(){
        var stars=800;
        var $stars=$(".stars");
        var r=800;
        for(var i=0;i<stars;i++){
            var $star=$("<div/>").addClass("star");
            $stars.append($star);
        }
        $(".star").each(function(){
            var cur=$(this);
            var s=0.2+(Math.random()*1);
            var curR=r+(Math.random()*300);
            cur.css({
                transformOrigin:"0 0 "+curR+"px",
                transform:" translate3d(0,0,-"+curR+"px) rotateY("+(Math.random()*360)+"deg) rotateX("+(Math.random()*-50)+"deg) scale("+s+","+s+")"

            })
        })
    })
</script>





<!--云-->
<div id="mainBody">
    <div id="cloud1" class="cloud">

    </div>
    <div id="cloud2" class="cloud">

    </div>
</div>

<!--顶部-->
<div class="logintop">
    <span>欢迎登录后台管理系统</span>
    <!--ul无序列表--><!--ol有序列表-->
    <ul>
        <li><a href="#">回首页</a></li>
        <li style="color: #afc5d2;">帮助</li>
        <li style="color: #afc5d2;">关于</li>
    </ul>
</div>

<!--中部-->
<div class="loginbody">

    <span class="systemlogo"></span>

    <div class="loginbox">
        <ul>
            <li>
                <input type="text" class="loginuser" onclick="javascript:this.value=''" />
            </li>
            <li>
                <input type="password" class="loginpwd" onclick="javascript:this.value=''"/>
            </li>
            <li>
                <input type="button" value="登录" class="loginbtn" onclick="javascript:window.location='main.html'" />
                <input type="button" value="管理员登录" class="loginbtn" onclick="javascript:window.location='scanboard.html'" />
            </li>
        </ul>
    </div>
</div>

<!--底部-->
<div class="loginbm">
    2020@胜羽版权所有
</div>





</body>
</html>
