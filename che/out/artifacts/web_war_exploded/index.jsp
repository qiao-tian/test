<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/11/1
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="text/javascript">
        $(function (){
            //1.验证用户名是否存在
            $("#username").change(function(){
                $.get("checkUserName","username="+this.value,function(data){
                    if(data==0){
                        $("#nameMsg").html("用户名不存在").css("color","red");
                    }else{
                        $("#nameMsg").html("");
                    }
                })
            });

        })
    </script>
</head>
<body>
<div class="limiter">
    <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="login100-form validate-form" method="post" action="userLogin" id="user">
                <span class="login100-form-title p-b-49">登录</span>

                <div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户名">
                    <span class="label-input100">用户名</span>
                    <input class="input100" type="text" name="username" placeholder="请输入用户名" autocomplete="off">
                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="请输入密码">
                    <span class="label-input100">密码</span>
                    <input class="input100" type="password" name="password" placeholder="请输入密码">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>

                <div class="text-right p-t-8 p-b-31">
                    <a href="" onclick="alert('请联系管理员！')">忘记密码？</a>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">登 录</button>
                    </div>
                </div>

                <!--					<div class="txt1 text-center p-t-54 p-b-20">-->
                <!--						<span>第三方登录</span>-->
                <!--					</div>-->

                <!--					<div class="flex-c-m">-->
                <!--						<a href="#" class="login100-social-item bg1">-->
                <!--							<i class="fa fa-wechat"></i>-->
                <!--						</a>-->

                <!--						<a href="#" class="login100-social-item bg2">-->
                <!--							<i class="fa fa-qq"></i>-->
                <!--						</a>-->

                <!--						<a href="#" class="login100-social-item bg3">-->
                <!--							<i class="fa fa-weibo"></i>-->
                <!--						</a>-->
                <!--					</div>-->

                <div class="flex-col-c p-t-25">
                    <a href="register.jsp" class="txt2">立即注册</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
