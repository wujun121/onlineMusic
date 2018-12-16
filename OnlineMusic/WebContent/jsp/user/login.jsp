<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户登录</title>

<link href="/OnlineMusic/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/OnlineMusic/css/main.css" rel="stylesheet">
<link href="/OnlineMusic/bootstrap/css/bootstrapValidator.min.css" rel="stylesheet">
<script type="text/javascript" src="/OnlineMusic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/OnlineMusic/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/OnlineMusic/bootstrap/js/bootstrapValidator.min.js"></script>
</head>
<body>
	<div class="container">
 
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3" method="post" action="/OnlineMusic/user/login.do">
			<div class="col-sm-9 col-md-9">
			<br/>
					<div class="pull-right">
						<span class="glyphicon glyphicon-home"></span>
						<a href="/OnlineMusic/index.jsp">回到首页</a>
					</div>
			</div>
			<br/>
				<h3 class="form-title">Login to your account 在线音乐系统</h3>
			<br/>
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
					<c:if test="${registerOk != null}">
					<div class="alert alert-success alert-dismissable">
					    <button type="button" class="close" data-dismiss="alert">&times;</button>
					    <strong>恭喜您注册成功！</strong> 请登录。。
					</div>
					</c:if>
					<c:if test="${loginOutOk != null}">
					<div class="alert alert-success alert-dismissable">
					    <button type="button" class="close" data-dismiss="alert">&times;</button>
					    <strong>注销成功！</strong>
					</div>
					</c:if>
						<label >用户名</label>
						<input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus"/>
						<font color="red">${error}</font>
					</div>
					<div class="form-group">
						<label >密码</label>
						<input class="form-control required" type="password" placeholder="Password" id="register_password" name="password"/>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right" value="立即登录 "/>
						<a href="/OnlineMusic/jsp/user/register.jsp"><input type="button" class="btn btn-info pull-left"  value="还没有账户？去注册"/></a>
					</div>
				</div>
			</form>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$('form').bootstrapValidator({
			message: 'This value is not valid',
			fields: {
				username: {
					message:'用户名验证失败',
					validators: {
						notEmpty: {
							message: '用户名不能为空'
						}
					}
				},
				password: {
					message:'密码验证失败',
					validators: {
						notEmpty: {
							message: '密码不能为空'
						}
					}
				}
			}
		});
	});


</script>
</html>