<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.logging.SimpleFormatter" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/11/1
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*" %>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body class="beijng1">
<div class="place">
    <span>位置:</span>
    <ul class="placeul">
        <li>

            <a href="#">首页</a>
        </li>
    </ul>
</div>

<div class="mainindex">

    <div class="welinfo">
				<span>
					<img src="images/sun.png" />
				</span>
        <b>
            欢迎使用后台管理系统
        </b>
    </div>

    <div class="welinfo">

    </div>

    <div class="xline">

    </div>

    <ul class="iconlist">
        <li>
            <img src="images/ico01.png" />
            <p>管理设置</p>
        </li>
        <li>
            <img src="images/ico02.png" />
            <p>管理设置</p>
        </li>
        <li>
            <img src="images/ico03.png" />
            <p>管理设置</p>
        </li>
        <li>
            <img src="images/ico04.png" />
            <p>管理设置</p>
        </li>
    </ul>

    <div class="ibox">

        <a class="btn">
            <img src="images/iadd.png" />
            添加快捷键
        </a>
    </div>
</div>

<script>


    //时间设置
    function currentTime(){
        var d=new Date(),str='';
        str+=d.getFullYear()+'年';
        str+=d.getMonth() + 1+'月';
        str+=d.getDate()+'日';
        str+=d.getHours()+'时';
        str+=d.getMinutes()+'分';
        str+= d.getSeconds()+'秒';
        return str;
    }
    setInterval(function(){$('#time').html(currentTime)},1000);
</script>
</body>
</html>
