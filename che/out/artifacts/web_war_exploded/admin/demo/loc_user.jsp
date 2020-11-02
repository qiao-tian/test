<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/11/1
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>




    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.full.min.css">
    <link rel="stylesheet" href="assets/css/ace.min.css" />



    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css1/style.css" />

</head>
<body>
<div class="place">
    <span>位置</span>
    <ul class="placeul">
        <li>
            <a href="#">账户信息</a>
        </li>
    </ul>
</div>






<div class="page-content">
    <div class="user_Manager_style">
        <form id="form1" name="form1" method="post">
            <div class="Manager_style add_user_info">
                <div class="title_name">
                    用户
                </div>

                <button class="btn btn-primary" type="button" id="Add_user_btn">
                    密码修改
                </button>
                <div id="Add_user_style" style="display: none;">
                    <div class="add_user_style clearfix">
                        <ul class="clearfix">


                            <li><label class="label_name">修改密码：</label> <input name="角色标识" type="text"  class="" id="name"/><i style="color:#F60; ">*</i></li>
                            <li><label class="label_name">密码确认：</label><input name="角色名称" type="text"  class="" id="password"/><i style="color:#F60; ">*</i></li>
                        </ul>
                        <div id="hao"></div>
                    </div>
                </div>
            </div>
        </form>

        <!--用户列表-->
    <form id="form2" method="post" action="listUser.do">
        <div class="Manager_style">
            <div class="title_name">
                用户信息
            </div>
            <div class="role_list">
                <table id="Role_list" cellpadding="0" cellspacing="0" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>

                        <th>用户名</th>
                        <th width="5%">邮箱</th>
                        <th>角色状态</th>
                    </tr>
                    </thead>
                        <c:forEach items="${list }" var="user">
                    <tbody>

                    <tr>

                        <td>${user}</td><!--用户名-->
                        <td width="5%">${email}</td><!--年龄-->
                        <td>启用</td><!--角色状态-->

                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
                            </form>

    </div>
</div>





<!--所需脚本-->
<script src="assets/js/jquery.min.js"></script>
<!-- <![endif]-->
<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->
<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
</script>
<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/layer/layer.js"></script>
<script type="text/javascript">
    function hide1(){
        document.getElementById('ycxz').style.display='';
        document.getElementById('gys_name').style.display='none';

    }
    function display1(){
        document.getElementById('ycxz').style.display='none';
        document.getElementById('gys_name').style.display='';
    }
    /***判断用户修改文本**/
    $('#Add_user_btn').on('click', function(){
        layer.open({
            type: 1,
            title: '密码修改',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['700px' , ''],
            content:$('#Add_user_style'),
            btn: ['确定','取消'],
            yes: function(index, layero){

                if ($("#name").val()==""){
                    layer.alert('密码不能为空!',{
                        title: '提示框',
                        icon:0,

                    });
                    return false;
                }

                if ($("#password").val()==""){
                    layer.alert('确认密码不能为空!',{
                        title: '提示框',
                        icon:0,

                    });
                    return false;
                }

                if ($("#select_Roles").val()==""){
                    layer.alert('用角色不能为空!',{
                        title: '提示框',
                        icon:0,

                    });
                    return false;
                }

                if ($("#phone").val()==""){
                    layer.alert('电话号码不能为空!',{
                        title: '提示框',
                        icon:0,

                    });
                    return false;
                }
                if ($("#user_name").val()==""){
                    layer.alert('用户名不能为空!',{
                        title: '提示框',
                        icon:0,

                    });
                    return false;
                }



                else{
                    layer.alert('密码修改成功！',{
                        title: '提示框',
                        icon:1,
                    });
                    layer.close(index);
                }
            } 	,
            cancel: function(index){

                layer.alert('确定退出！',{
                    title: '提示框',
                    icon:1,
                });

            }
        });
    });

    $('.reset_Password').on('click', function(){
        layer.confirm('是否重置，重置后将丢失绑定数据？', {
            btn: ['重置','取消'] //按钮
        }, function(){
            layer.msg('重置成功！', {time: 1000,icon: 1});
        });

    });
</script>
</body>
</html>

