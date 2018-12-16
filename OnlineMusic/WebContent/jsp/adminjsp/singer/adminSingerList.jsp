<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>歌手管理</title>
</head>
<body>
	<c:if test="${msg != null}">
		<script>
		window.alert('${msg}');
		window.location.href = "/OnlineMusic/singer/findSingerList.do";
		</script>;
	</c:if>
	<jsp:include page="../main.jsp"></jsp:include>
	
	<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						</button>
						<h4 class="modal-title" id="myModalLabel">
							新增歌手
						</h4>
					</div>
					<form action='/OnlineMusic/singer/addSinger.do' method="post" enctype="multipart/form-data" id="form">  
					<div class="modal-body">
							<div class="form-group">
								歌手姓名 <input class="form-control required"
								type="text" placeholder="请输入歌手姓名" name="name" id="name"/>
							</div>
							<div class="form-group">
								出生日期 
								<input type='text' class="form-control" id='datetime' placeholder="选择出生日期" name="birth"/>
							</div>
							<div class="form-group">
								星座 <select class="form-control" name="star" id="star">
					                  <option>魔羯座(12/22 - 1/19)</option>
					                  <option>水瓶座(1/20 - 2/18)</option>
					                  <option>双鱼座(2/19 - 3/20)</option>
					                  <option>牡羊座(3/21 - 4/20)</option>
					                  <option>金牛座(4/21 - 5/20)</option>
					                  <option>双子座(5/21 - 6/21)</option>
					                  <option>巨蟹座(6/22 - 7/22)</option>
					                  <option>狮子座(7/23 - 8/22)</option>
					                  <option>处女座(8/23 - 9/22)</option>
					                  <option>天秤座(9/23 - 10/22)</option>
					                  <option>天蝎座(10/23 - 11/21)</option>
					                  <option>射手座(11/22 - 12/21)</option>
					                </select>
							</div>
							<div class="form-group">
				               	 歌手图片
				                <input type="file"  id="s_img" name="file">
				            </div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="btn" type="submit" class="btn btn-success pull-right">提交</button>
					</div>
				</form>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
	<!-- 模态框结束 -->
		
	 <div id="wrapper">
	 	<div id="page-wrapper">
        <div class="row">
          <div class="col-lg-12">
          	<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">新增</button>
          	<button class="btn btn-primary" style="margin-left:80px">详情</button>
          </div>
         <div class="col-md-8 column">
				<table class="table table-hover table-bordered" id="list">
				<thead>
					<tr>
						<th>
							选择
						</th>
						<th>
							歌手编号
						</th>
						<th>
							歌手头像
						</th>
						<th>
							歌手姓名
						</th>
						<th>
							出生日期
						</th>
						<th>
							星座
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${singerList}" var="singer">
					<tr>
						<th>
							<input type="checkbox" name="item" value="${singer.id}">
						</th>
						<th>
							${singer.id}
						</th>
						<th>
							<img src="/images/${singer.s_img}" width="50px" length="50px"/>
							
						</th>
						<th>
							${singer.name}
						</th>
						<th>
							${singer.birth}
						</th>
						<th>
							${singer.star}
						</th>
						<th>
							<a href="#">详情</a>
						</th>
					</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td>
							<input type="checkbox" id="selectall" >全选
						</td>
						<td colspan="8">
							<button id="delete" class="btn btn-danger btn-xs">删除所选项</button>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
        </div><!-- /.row -->

      </div><!-- /#page-wrapper -->
	 
	 </div>
</body>
<script type="text/javascript">
	$(function(){
		$("#selectall").click(function(){
			if(this.checked){
				$("input[name='item']:checkbox").each(function(){
					$(this).prop("checked",true);
				});
			}else {
				$("input[name='item']:checkbox").each(function(){
					$(this).prop("checked",false);
				});	
			}
		});
	});
	
	$(function(){
		$("#delete").click(function(){
			var singerIds = [];
			$("input[name='item']:checkbox").each(function(){
				if(this.checked){
					singerIds.push(this.value);
				}
			});
			if (singerIds=="" || singerIds==null) {
				alert("请选择需要删除的记录!")
			}else{
				if(confirm("确认要删除所选歌手吗？")){
					del(singerIds);
				}return;
			}
		});
	});

	function del(singerIds) {
		$.ajax({
			url:'/OnlineMusic/singer/deleteSinger.do',
			method:'post',
			dataType:'json',
			data:{singerIds,singerIds},
			traditional: true, 
			success: function(flag){
				if(flag) {
					alert("恭喜您，删除成功!");
					openPage();
				}else{
					alert("删除失败！")
				}
			}
			
		});
	}
	
	function openPage(){
		window.location.href = "/OnlineMusic/singer/findSingerList.do";
	}
	$("#datetime").datetimepicker({
		   format: "yyyy-mm-dd",
	       autoclose: true,
	       todayBtn: true,
	       todayHighlight: true,
	       showMeridian: true,
	       pickerPosition: "bottom-left",
	       language: 'zh-CN',//中文，需要引用zh-CN.js包
	       startView: 2,//月视图
	       minView: 2//日期时间选择器所能够提供的最精确的时间选择视图
	});
	
	$(function(){
		$("#btn").click(function(){
			var name = document.getElementById('name').value;
			var birth = document.getElementById('datetime').value;
			var s_img = document.getElementById('s_img').value;
			var star = document.getElementById('star').value;
			
			if(name=="" || birth=="" || s_img==""){
				alert("请检查是否为空哦！");
				return false;
			}
			if(!s_img.endsWith(".jpg") && !s_img.endsWith(".png")){
				alert("图片格式只能为jpg或png");
				return false;
			}
			
			$("#form").submit();
			
		});
	});
	

</script>

</html>