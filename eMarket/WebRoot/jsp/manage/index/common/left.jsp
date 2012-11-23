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
<title>left</title>

<link rel="stylesheet" type="text/css" href="style/default/cms_common.css">
<link rel="stylesheet" id="skinCss" type="text/css" href="style/default/cms_sytle.css">
<script language="JavaScript" src="js/showmenu.js"></script><!--显示隐藏二级菜单-->
<!--<script language="JavaScript" src="js/common.js"></script>--><!--通用js-->
<script type="text/javascript" src="js/common_js.js"></script><!--换肤js-->
</head>

<body class="left_bg">
<span id="sel" value="" style="display:none;"></span>
<div class="show">
 <div class="shouye"><a href="#" onClick="setSkinColor('skin1');">首页</a></div>
 <div class="shezhi"><a href="#" onClick="setSkinColor('skin2');">个人设置</a></div>
 <div class="tuichu"><a href="#" >退出</a></div>
</div>

<!--首页\个人设置:onClick="setSkinColor('skin1');"用于静态页面换肤看效果，可删除-->
<div class="memu">
	 <ul>
	   <li><a href="javascript:showmenu('lay0')"><b>学生数据导入</b></a></li>
		  <ul class="submemu" id='lay0' style="display:none;">
		   <li><a href="上传检测完成.html" target="main"><strong>上传检测完成</strong></a></li>
		   <li><a href="查看符合格式的数据.html" target="main">查看符合格式的数据</a></li>
		   <li><a href="确定导入完成.html" target="main">确定导入完成</a></li>
		   <li><a href="查看导入成功的数据.html" target="main">查看导入成功的数据</a></li>
		  </ul> 
	   <li><a href="javascript:showmenu('lay1')">教师数据导入</a></li>
		  <ul class="submemu" id='lay1' style="display:none;">
		   <li><a href="密码服务管理.html" target="main">密码服务管理</a></li>
		   <li><a href="手机分配管理.html" target="main">手机分配管理</a></li>
		   <li><a href="行政调查管理.html" target="main">行政调查管理</a></li>
		  </ul>
	   <li><a href="javascript:showmenu('lay2')">教师任课导入</a></li> 
		  <ul class="submemu" id='lay2' style="display:none;">
		   <li><a href="人员总数统计.html" target="main">人员总数统计</a></li>
		   <li><a href="登入情况统计.html" target="main">登入情况统计</a></li>
		  </ul>
	   <li><a href="javascript:showmenu('lay3')">教研与培训</a></li>
		  <ul class="submemu" id='lay3' style="display:none;">
		   <li><a href="教研与培训.html" target="main">教研与培训</a></li>
		  </ul>
		  <li><a href="javascript:showmenu('lay4')">业务平台管理</a></li>
		  <ul class="submemu" id='lay4' style="display:none;">
		   <li><a href="学校业务平台.html" target="main">学校业务平台</a></li>
		  </ul>
	 </ul>
</div>
</body>
</html>
