define(['util'], function (util){
	return {
		init: function (){
			$("#regist").bind("click",function(){
				var userName = $("#username").val();
				if(userName === ""){
					$("#msg").html("用户名不能为空");
					$('#myModal').modal({
					  keyboard: false
					});
					$("#username").focus();
					return;
				}
				var password = $("#password").val();
				if(password === ""){
					$("#msg").html("密码不能为空");
					$('#myModal').modal({
					  keyboard: false
					});
					$("#password").focus();
					return;
				}	
				var obj = {};
				obj.username = userName;
				obj.password = password;
				var result;
				$.ajax({
					type:"post",
					url:"/qiuqiu-web/user/addUser",
					contentType:"application/json",
					data:JSON.stringify(obj), 
					success:function(result){
						$("#msg").html("注册成功");
						$('#myModal').modal({
						  keyboard: false
						});
						// $.msg(result.message);
					},
					error:function(result){
						$("#msg").html("注册失败");
						$('#myModal').modal({
						  keyboard: false
						});
					}
				});
			});
		}
	}
});