<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>首页轮播内容管理</title>
<link href="assets/css/dpl-min.css" rel="stylesheet">
<link href="assets/css/bui-min.css" rel="stylesheet">
</head>
<body>
<div class="row">
	<div class="span24">
	<div class="container">
		<h2>推荐图片尺寸为1920*410px</h2>
	</div>
		<form id="J_Form" class="form-horizontal" method="post" action="admin/mallCarousel_update">
			<div class="control-group">
				<label class="control-label">链接1</label>
				<div class="controls">
					<input type="text" name="link1" value="<s:property value="mallCarousel.link1"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">图片1</label>
				<div class="controls">
					<input type="text" name="pic1" id="logo1" value="<s:property value="mallCarousel.pic1"/>">
					<input type="button" value="点击选择图片" onclick="path1.click()">
					<input type="file" name="file" style="display:none;" id="path1" onchange="f_upload1(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">链接2</label>
				<div class="controls">
					<input type="text" name="link2" value="<s:property value="mallCarousel.link2"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">图片2</label>
				<div class="controls">
					<input type="text" name="pic2" id="logo2" value="<s:property value="mallCarousel.pic2"/>">
					<input type="button" value="点击选择图片" onclick="path2.click()">
					<input type="file" name="file" style="display:none;" id="path2" onchange="f_upload2(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">链接3</label>
				<div class="controls">
					<input type="text" name="link3" value="<s:property value="mallCarousel.link3"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">图片3</label>
				<div class="controls">
					<input type="text" name="pic3" id="logo3" value="<s:property value="mallCarousel.pic3"/>">
					<input type="button" value="点击选择图片" onclick="path3.click()">
					<input type="file" name="file" style="display:none;" id="path3" onchange="f_upload3(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">链接4</label>
				<div class="controls">
					<input type="text" name="link4" value="<s:property value="mallCarousel.link4"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">图片4</label>
				<div class="controls">
					<input type="text" name="pic4" id="logo4" value="<s:property value="mallCarousel.pic4"/>">
					<input type="button" value="点击选择图片" onclick="path4.click()">
					<input type="file" name="file" style="display:none;" id="path4" onchange="f_upload4(this)">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">链接5</label>
				<div class="controls">
					<input type="text" name="link5" value="<s:property value="mallCarousel.link5"/>">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">图片5</label>
				<div class="controls">
					<input type="text" name="pic5" id="logo5" value="<s:property value="mallCarousel.pic5"/>">
					<input type="button" value="点击选择图片" onclick="path5.click()">
					<input type="file" name="file" style="display:none;" id="path5" onchange="f_upload5(this)">
				</div>
			</div>
			
			<div class="form-actions span5 offset3">
            	<button id="btnSearch" type="submit" class="button button-primary">提交</button>
            </div>
		</form>
		<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
		<script type="text/javascript" src="assets/js/ajaxfileupload.js"></script>
		<script>
	function f_upload1(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split(".");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo1').val(timestamp+"."+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path1',
    		data:{fileName:timestamp+"."+s_name2,folderName:"mallcarousel"},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload2(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split(".");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo2').val(timestamp+"."+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path2',
    		data:{fileName:timestamp+"."+s_name2,folderName:"mallcarousel"},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload3(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split(".");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo3').val(timestamp+"."+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path3',
    		data:{fileName:timestamp+"."+s_name2,folderName:"mallcarousel"},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload4(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split(".");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo4').val(timestamp+"."+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path4',
    		data:{fileName:timestamp+"."+s_name2,folderName:"mallcarousel"},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	function f_upload5(a){
		var timestamp=new Date().getTime()
    	var s_name=$(a).val();
    	var s_names=s_name.split(".");
    	var s_name2=s_names[s_names.length-1];
    	$('#logo5').val(timestamp+"."+s_name2);
    	$.ajaxFileUpload({
    		url:'file_upload',
    		secureuri:false,
    		fileElementId:'path5',
    		data:{fileName:timestamp+"."+s_name2,folderName:"mallcarousel"},
    		success: function(){
    			alert("上传成功"); 
    		}
    	});
    	return false;
    }
	</script>
	</div>
</div>
</body>
</html>