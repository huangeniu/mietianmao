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
<title>ºóÌ¨¹ÜÀí</title>
</head>

<frameset rows="92,*,23" cols="*" framespacing="0" frameborder="no" border="0" name="fra0">
 <frame src="<%=basePath%>/jsp/manage/index/common/top.jsp" scrolling="No"  noresize="noresize" name="bottom" />
  <frameset cols="189,10,*" framespacing="0" frameborder="no" border="0" name="fra">
    <frame src="<%=basePath%>/jsp/manage/index/common/left.jsp" id="left" noresize="noresize" name="left" >
    <frame src="<%=basePath%>/jsp/manage/index/common/bar.jsp" id="bar" scrolling="No" noresize="noresize" name="center">
    <frame src="<%=basePath%>/jsp/manage/index/common/main.jsp" id="main" name="main">
  </frameset>

</frameset>
<noframes><body>
</body></noframes>
</html>
