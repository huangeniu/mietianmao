<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>城市教育信息化综合管理平台</title>
<link rel="stylesheet" type="text/css" href="skin/default/cms_common.css">
<link rel="stylesheet" type="text/css" href="skin/default/cms_sytle.css">
</head>

<body>
<!--顶部导航条开始-->
<div class="iframe_top">
<iframe src="manage_top/manage_top.html" width="100%" id="topGuide" height="32" scrolling="no" frameborder="0" allowtransparency="1"></iframe>
</div>
<!--顶部导航条结束-->
<div class="login_bg">
<div class="all">
 <div class="log_t">
  <div class="webname">教育e时代·学校</div>
  <div class="name2">广州市越秀区第四高级中学</div>
	<div class="login_form">
		<div>
			<label>用户名：</label>
		    <input name="text" type="text" class="log_input" />
		</div>
		<div>
			<label>密&nbsp;&nbsp;码：</label>
			<input name="text" type="password" class="log_input" />
		</div>
		<div>
			<label>验证码：</label>
			<input name="text" type="text" style="width:50px;" />&nbsp;<img src="temp/lgo_img.gif" hspace="4" align="absmiddle" />		</div>
		<div>
			<label>角&nbsp;&nbsp;色：</label>
			<select name="select" style="width:140px;">
				<option>系统管理员</option>
				<option>市级管理员</option>
				<option>区级管理员</option>
				<option>校级管理员</option>
			</select>
		</div>
		<div class="log_submit">
		<input type="image" name="imageField" src="images/log_submit.gif" onclick="window.location.href='index.html'" />&nbsp;&nbsp;<input type="image" name="imageField" src="images/log_reget.gif" />
		</div>
	</div>
 </div>
</div>
<!--底部版权开始-->
<div class="copyright">
<iframe src="http://html.gz.eecn.cn/base-gz/common/manage_foot/eschool_foot/foot_index.html" allowtransparency="1" width="100%" height="48" scrolling="no" frameborder="0"></iframe>
</div>
<!--底部版权结束-->
</div>
</body>
</html>
