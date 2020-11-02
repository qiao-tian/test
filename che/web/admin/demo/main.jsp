<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2020/11/1
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>

<!--框架集-->
<frameset rows="88,*" cols="*" border="0">
    <frame src="top.jsp" scrolling="no" />
    <frameset cols="187,*" border="0">
        <frame src="left.jsp" scrolling="no" />
        <frame src="loc_user.jsp"  name="rightframe"/>
    </frameset>

</frameset>
</html>
