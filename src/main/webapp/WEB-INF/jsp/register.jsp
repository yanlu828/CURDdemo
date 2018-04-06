<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../plugins/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../css/signin/signin.css" rel="stylesheet">
    <script src="../../../plugins/jquery-1.12.4.min.js"></script>
    <script src="../../../plugins/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../../../plugins/require.js"></script>
</head>

<body>

<div class="container">

    <div class="form-signin">
        <%--@declare id="inputusername"--%><%--@declare id="inputpassword"--%><h2 class="form-signin-heading">欢迎注册</h2>
        <h4 class="form-signin-heading">用户名:</h4>
        <label for="inputUsername" class="sr-only">Username</label>
        <input type="password" id="username" class="form-control" placeholder="Username" required>
        <h4 class="form-signin-heading">密码:</h4>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="password" class="form-control" placeholder="Password" required>
        <div class="checkbox">
        </div>
        <button id="regist" class="btn btn-lg btn-primary btn-block">Regist</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">提示框</h4>
                    </div>
                    <div class="modal-body" id="msg">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                </div>
            </div>
        </div>

    </div>

</div> <!-- /container -->

<script>
    require.config({
        baseUrl: "../../js/",
        paths: {
            "util": "common/util",
            "register": "signin/register"
        }
    });

    require(['register',"util"], function (register,util){
        register.init();
    });

</script>
<!--
<script>
$("#signIn").click(function(){
     //创建一个js对象
     //创建js数组[]或者new Array()
     var obj = {};
     // obj.username 等价 obj[username]
    obj.username = $("#userName").val();
    //stringify方法表示把js对象转换成json字符串
    //parse方法表示把json字符串转换成js对象
    var json = JSON.stringify(obj);
    var a;
    $.ajax({
        type:"post",
        url:"/qiuqiu/user/addUser",
        contentType:"application/json",
        data:json,
        processData:false,
        success:function(result){
            alert(result.message);
            //$.msg(result.message);
        },
        error:function(result){
            a = result;
            console.log(result);
        }
    });
});
</script>
-->

</body>
</html>
