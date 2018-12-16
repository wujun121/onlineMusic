<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script type="text/javascript" src="/OnlineMusic/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/OnlineMusic/bootstrap/js/bootstrap.min.js"></script>
<link href="/OnlineMusic/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/OnlineMusic/bootstrap/css/sb-admin.css" rel="stylesheet">
<script type="text/javascript" src="/OnlineMusic/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="/OnlineMusic/bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>
<link href="/OnlineMusic/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script type="text/javascript" src="/OnlineMusic/bootstrap/js/bootstrapValidator.min.js"></script>
<link href="/OnlineMusic/bootstrap/css/bootstrapValidator.min.css" rel="stylesheet">
</head>
<body>
	<div id="wrapper">
      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
          <a class="navbar-brand" href="adminIndex.jsp">在线音乐后台管理系统</a>
        </div>

        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
          	<li><a href="/OnlineMusic/jsp/adminjsp/adminIndex.jsp"><i class="fa"></i>后台主页</a></li>
            <li><a href='<c:url value="/singer/findSingerList.do" />'><i class="fa"></i>歌手</a></li>
            <li><a href="/OnlineMusic/jsp/adminjsp/music/adminMusic.jsp"><i class="fa"></i> 歌曲</a></li>
            <li><a href="/OnlineMusic/jsp/adminjsp/album/adminAlbum.jsp"><i class="fa"></i> 专辑</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right" style="margin-right:30px">
          	<input type="text" placeholder="歌曲名/专辑名/歌手名"/ >
				<span>
					<button class="btn btn-info btn-search">查找</button>
				</span>
          </ul>

        </div><!-- /.navbar-collapse -->
      </nav>

    </div><!-- /#wrapper -->
</body>
</html>