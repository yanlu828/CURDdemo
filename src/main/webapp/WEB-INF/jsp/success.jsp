<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/17
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
       String path = request.getContextPath();
       String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
登录成功
<br>
您好！
</br>
<%--登录成功返回主页面--%>
<a href="/main.jsp">返回</a>
</body>
</html>
