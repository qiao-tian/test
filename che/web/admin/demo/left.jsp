<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/11/1
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/style.css" />
    <script src="js/jquery.js">

    </script>
    <script type="text/javascript">
        $(function(){
            //导航切换
            $(".menuson li").click(function(){
                $(".menuson li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function(){
                var $ul = $(this).next('ul');
                $('dd').find('ul').slideUp();
                if($ul.is(':visible')){
                    $(this).next('ul').slideUp();
                }else{
                    $(this).next('ul').slideDown();
                }
            });
        })
    </script>
</head>
<body style="background: #f0f9fd;" class="beijng2">
<div class="lefttop">
    <span></span>个人信息

</div>
<!--添加的-->
<dl class="leftmenu">
    <dd>
        <div class="title">

					<span>
						<img src="images/leftico01.png" />
					</span><a href="loc_user.html" target="rightframe">账户信息</a>
        </div>
    </dd>


    <dd>

        <div class="title">

					<span>
						<img src="images/leftico01.png" />
					</span>管理用户信息
        </div>
        <ul class="menuson">

            <li class="active">
                <cite>

                </cite>
                <a href="To_void.html" target="rightframe">
                    体征监测
                </a>
            </li>

            <li>
                <cite>

                </cite>
                <a href="To_be_confirmed.html" target="rightframe">
                    健康管理
                </a>
            </li>


        </ul>
    </dd>

    <dd>
        <div class="title">

					<span>
						<img src="images/leftico01.png" />
					</span>实用功能
        </div>
        <ul class="menuson">

            <li class="active">
                <cite>

                </cite>
                <a href="list.html" target="rightframe">
                    医院对接
                </a>
            </li>

            <li>
                <cite>

                </cite>
                <a href="role.html" target="rightframe">
                    家庭成员
                </a>
            </li>

            <li>
                <cite>

                </cite>
                <a href="user.html" target="rightframe">
                    云呼叫中心
                </a>
            </li>
            <!---->
            <li>
                <cite>

                </cite>
                <a href="authority_user.html" target="rightframe">
                    订单管理
                </a>
            </li>

            <li>


            </li>
        </ul>
    </dd>


</dl>
</body>
</html>

