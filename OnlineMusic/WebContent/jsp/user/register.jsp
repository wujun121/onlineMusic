<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户注册</title>

<link href="/OnlineMusic/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/OnlineMusic/bootstrap/css/bootstrapValidator.min.css"
	rel="stylesheet">
<link href="/OnlineMusic/css/main.css"
	rel="stylesheet">
<script type="text/javascript" src="/OnlineMusic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="/OnlineMusic/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/OnlineMusic/bootstrap/js/bootstrapValidator.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3"
				method="post" action="/OnlineMusic/user/addUser.do">
				<div class="col-sm-9 col-md-9">
					<br />
					<div class="pull-right">
						<span class="glyphicon glyphicon-home"></span> <a
							href="/OnlineMusic/index.jsp">回到首页</a>
					</div>
				</div>
				<br />
				<h3 class="form-title">Register to your account 在线音乐系统</h3>

				<br />
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<label>用户名</label> <input class="form-control required"
							type="text" placeholder="Username" name="username"
							autofocus="autofocus" />
					</div>
					<div class="form-group">
						<label>密码</label> <input class="form-control required"
							type="password" placeholder="Password" id="register_password"
							name="password" />
					</div>
					<div class="form-group">
						<label>确认密码</label> <input class="form-control required"
							type="password" placeholder="Re-type Your Password"
							name="rpassword" />
					</div>
					<div class="form-group">
						<label>电子邮箱</label> <input class="form-control required"
							type="text" placeholder="Email" name="email" />
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right"
							value="立即注册 " /> <a href="/OnlineMusic/jsp/user/login.jsp"><input
							type="button" class="btn btn-info pull-left" value="已有账户？去登陆" /></a>
					</div>
					<div class="form-group"></div>
				</div>
			</form>
		</div>
</body>
<script type="text/javascript">
	$(function() {
		$('form')
				.bootstrapValidator(
						{
							message : 'This value is not valid',
							feedbackIcons : {
								valid : 'glyphicon glyphicon-ok',
								invalid : 'glyphicon glyphicon-remove',
								validating : 'glyphicon glyphicon-refresh'
							},
							fields : {
								username : {
									message : '用户名验证失败',
									validators : {
										notEmpty : {
											message : '用户名不能为空'
										},
										stringLength : {
											min : 6,
											max : 15,
											message : '用户名长度在6~15位之间'
										},
										threshold : 6,
										remote : {
											url : '/OnlineMusic/user/checkUserExist.do',
											message : '该用户已存在，请重新输入',
											delay : 1000,
											type : 'POST'
										},
										regexp : {
											regexp : /^[a-zA-Z0-9_]+$/,
											message : '用户名只能包含字母数字下划线'
										}
									}
								},
								password : {
									message : '密码验证失败',
									validators : {
										notEmpty : {
											message : '密码不能为空'
										},
										stringLength : {
											min : 6,
											max : 15,
											message : '密码长度在6~12位之间'
										},
										regexp : {
											regexp : /^[a-zA-Z0-9_]+$/,
											message : '密码只能包含字母数字下划线'
										}
									}
								},
								rpassword : {
									message : '确认密码验证失败',
									validators : {
										notEmpty : {
											message : '确认密码不能为空'
										},
										identical : {
											field : 'password',
											message : '两次输入密码不一致'
										}
									}
								},
								email : {
									message : '邮箱验证失败',
									validators : {
										notEmpty : {
											message : '邮箱不能为空'
										},
										regexp : {
											regexp : /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/,
											message : '您填写的邮箱格式不正确'
										}
									}
								}
							}
						});
	});
</script>
</html>