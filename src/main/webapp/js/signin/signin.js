/*
requirejs的写法，先注释掉
define(['util'], function (){
	return {
		init: function (){

			$("#regist").on("click",function(){
				window.location.href="register.html";
			});
			
			$("#signIn").click(function(){
				/!*var obj = {};
				obj.username = $("#UserName").val();
				var json = JSON.stringify(obj);
				$.ajax({
					type:"post",
					url:"/qiuqiu/user/addUser",
					contentType:"application/json",
					data:json,
					processData:false, 
					success:function(result){
						if(result.flag === ture){
							window.location.href="main.html";
						} else {
							alert();
						}
					},
					error:function(result){
						console.log(result);
					}
				});*!/
				
			});

		}
	}
});*/

//简单的验证，没有查询数据库
/*angular.module('myApp',[])
	.controller('loginCtrl',function ($scope) {
		$scope.inputUserName='';
		$scope.inputPassword='';
		$scope.msg='';
		$scope.login=function () {
			if($scope.inputUserName == 'admin' && $scope.inputPassword == '123456'){
                $scope.msg = '登录成功！';
			}else if($scope.inputUserName == '' || $scope.inputPassword == ''){
                $scope.msg = '用户名或密码不能为空！';
			}else{
                $scope.msg = '用户名或密码错误！';
			}
        }
    })*/

angular.module("myApp",[])
    .controller("loginCtrl",function ($scope,$http) {
        $scope.login = function(){
            $scope.message='';
            var obj = {
                "username":$scope.username,
                "password":$scope.password
            };
            $http({
                method:"post",
                url:"/curddemo/user/login",
                data:obj
            }).success(function(result){
                if(result.flag){
                    //window.location="http://localhost:8080/static/template/index.html"
                    //如果是写html的话，那么说明index.html只能放在webroot下面，不能放在web-info下面
                    //这边的路劲如果写的是"${pageContext.request.contextPath}user/a/main"，那么MainController下面里面就要这样写
                    //@RequestMapping("/user/a/main"),否则就是错的
                    window.location="/curddemo/main"
                }else{
                    $scope.message = '用户名或密码不正确！';
                    $('#errorMessage').modal('show');
                }
            }).error(function(result) {
            	alert(result);
            	//出现错误重新回到登录页面
                // window.location="${pageContext.request.contextPath}/login"
            });
        }
    })

