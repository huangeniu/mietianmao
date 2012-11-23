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
<title>bar</title>
<link rel="stylesheet" type="text/css" href="style/default/cms_common.css">
<link rel="stylesheet" id="skinCss" type="text/css" href="style/default/cms_sytle.css">
<script language="javascript" src="js/bar.js"></script>
</head>
<body class="bar_bg">
<div class="bar_bg2"><div class="bar_arrow"><img src="images/bar02.gif" onClick="switchSysBarB()" id="switchPointCLD2"  /></div></div>
</body>
</html>
