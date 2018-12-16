<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>在线音乐首页</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="top.jsp" />
	
	<div class="container">
		<div class="row clearfix" >
		<div class="col-md-12">
		<div id="myCarousel" class="carousel slide" style="margin-top:0px">
		    <!-- 轮播（Carousel）指标 -->
		    <ol class="carousel-indicators">
		        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		        <li data-target="#myCarousel" data-slide-to="1"></li>
		        <li data-target="#myCarousel" data-slide-to="2"></li>
		    </ol>   
		    <!-- 轮播（Carousel）项目 -->
		    <div class="carousel-inner">
		        <div class="item active">
		            <img src="/OnlineMusic/img/1.jpg" alt="First slide">
		        </div>
		        <div class="item">
		            <img src="/OnlineMusic/img/2.jpg" alt="Second slide">
		        </div>
		        <div class="item">
		            <img src="/OnlineMusic/img/3.jpg" alt="Third slide">
		        </div>
		    </div>
		    <!-- 轮播（Carousel）导航 -->
		    <a class="carousel-control left" href="#myCarousel" 
		       data-slide="prev"> <span _ngcontent-c3="" aria-hidden="false" class="glyphicon glyphicon-chevron-right"></span></a>
		    <a class="carousel-control right" href="#myCarousel" 
		       data-slide="next">&rsaquo;</a>
		</div>
		</div>
		
	</div>
</body>
</html>