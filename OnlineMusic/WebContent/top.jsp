<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-8">
				<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">在线音乐</a>
					</div>
					<div>
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">首页</a></li>
							<li><a href="#">歌手</a></li>
							<li><a href="#">专辑</a></li>
							<li><a href="#">海量歌曲</a></li>
							<li><a href="#">我的</a></li>
							<li><a href="/OnlineMusic/jsp/adminjsp/adminIndex.jsp">管理员登录</a></li>

						</ul>
						<ul class="nav navbar-nav navbar-right">
							<c:if test="${userSession != null}">
								<li class="navbar-text"><span
									class="glyphicon glyphicon-user"></span>欢迎您:${userSession.username}</li>
								<li><a href="<c:url value='/user/loginOut.do'/>">注销</a></li>
							</c:if>
							<c:if test="${userSession == null}">
								<li><a href="jsp/user/register.jsp">注册</a></li>
								<li><a href="jsp/user/login.jsp">登录</a></li>
							</c:if>
						</ul>
					</div>
				</div>
				</nav>
			</div>
			<div class="col-md-4">
				<div class="input-group col-md-10" style="padding-left: 0px">
					<input type="text" class="form-control" placeholder="歌曲名/专辑名/歌手名"/ >
					<span class="input-group-btn">
						<button class="btn btn-info btn-search">查找</button>
					</span>
				</div>
			</div>
		</div>
	</div>

</body>
</html>