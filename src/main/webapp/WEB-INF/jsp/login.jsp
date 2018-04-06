<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/17
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page isELIgnored="false"%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="common/header.jsp"/>
<%--String path = request.getContextPath();
System.out.println("path="+path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>

<%--国际化--%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin</title>
    <%--path =${pageContext.request.contextPath}--%>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/css/signin/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/signin/signin.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/plugins/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/require.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/angular.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/signin/signin.js"></script>
</head>
<body ng-app="myApp" ng-controller="loginCtrl">

<div class="container">
    <div class="form-signin">
        <h2 class="form-signin-heading">露露宠物管理中心</h2>
        <label class="sr-only">UserName</label>
        <input type="text" class="form-control" placeholder="username"  ng-model="username" required>
        <label class="sr-only">Password</label>
        <input type="password" class="form-control" placeholder="password" ng-model="password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <div>
            <div style="width:50%;float: left;" class="text-center">
                <%--给登录绑定一个angular事件--%>
                <button  ng-click="login()" id="signIn" style="width:95%" class="btn btn-lg btn-primary" >登录</button>
                    <%--<p class="text-danger" ng-if="msg.length>0">提示信息：{{msg}}</p>--%>
            </div>
            <div style="width:50%;float: right;" class="text-center">
                <%--给注册绑定一个angular事件--%>
                <button ng-click="regist()" id="regist" style="width:95%" class="btn btn-lg btn-primary">注册</button>
            </div>
        </div>
    </div>
</div>

<%--弹窗，用户登录的时候如果用户名和密码不正确的时候会弹框，使用了Bootstrap的--%>
<div class="modal fade" id="errorMessage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    提示框
                </h4>
            </div>
            <div class="modal-body">
               <%-- 整合angularjs--%>
                {{message}}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">确定
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--<script>
    require.config({
        baseUrl: "${pageContext.request.contextPath}/js/",
        paths: {
            "util": "common/util",
            "signin": "signin/signin"
        }
    });

    require(['signin', 'util'], function (signin, util) {
        signin.init();
    });
</script>--%>
</body>
</html>

