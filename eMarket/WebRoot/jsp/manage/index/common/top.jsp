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
<title>top</title>
<link rel="stylesheet" type="text/css" href="style/default/cms_common.css">
<link rel="stylesheet" id="skinCss" type="text/css" href="style/default/cms_sytle.css">
</head>

<body>
<div class="top_bg">
	<div class="top">
		<h1>广州市越秀区第四高级中学</h1>
		<div class="t">
			<div class="t01">您好！欢迎进入城市教育信息化应用平台综合管理平台<br />管理员：系统管理员</div>
			<div class="t02">2008年2月21日 星期四 12:12:01<div class="help"><a href="#">使用帮助</a></div>
			</div>
		</div>
	</div>
</div>

<!--<div style="position: absolute;top: 0px;right: 0px; width:300px; height:25px;">
	<span style="float:left;"><em>选择风格：</em><span class="cursor" onClick="setSkinColor('skin1');">经典蓝<span class="nx" style="color:#98D1E7;">&lt;</span></span>&nbsp;<span class="cursor" onClick="setSkinColor('skin2');">淡雅灰<span class="nx" style="color:#999999;">&lt;</span></span>&nbsp;<span class="cursor" onClick="setSkinColor('skin3');">天空蓝<span class="nx" style="color:#1e7be5;">&lt;</span></span></span>
</div>-->
</body>
</html>
