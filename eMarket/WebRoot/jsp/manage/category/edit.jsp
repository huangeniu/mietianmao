<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.*,com.mz2b.os.vo.*"%>
<%
%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<title>main</title>
			<link rel="stylesheet" type="text/css"
				href="style/default/cms_common.css">
			<link rel="stylesheet" id="skinCss" type="text/css"
					href="style/default/cms_sytle.css">
	<script
		src="<%=request.getContextPath()%>/plug-in/ckeditor/ckeditor.js"></script>
	<script src="<%=request.getContextPath()%>/plug-in/jquery/jquery.js"></script>
	<SCRIPT language=JavaScript
		src="<%=request.getContextPath()%>/plug-in/ErrorCheck.js"></SCRIPT>
	<script
		src="<%=request.getContextPath()%>/js/manage/bulletin/bulletininfo.js"></script>

	<body>
		<center>
			<div class="weizhi">
				<span class="weizhi_icon">&nbsp;</span>您目前所在位置: 编辑通知公告
			</div>
			<div class="table_bg2">
				<form name="dataForm" method="post"
					action="<%=request.getContextPath()%>/category/editcategoryprocess.action"
					enctype="multipart/form-data">
					<div align="center">
						<div class="table_bg">
							<table width="98%" id="main_table" align="center">
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										标题：*
									</td>
									<td>
										<input type="text" name="category.cname" id="cname"
											value="${category.cname }" class="input_style1" size="100"
											maxlength="132" />
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										显示级别:
									</td>
									<td>
										<input type="text" name="category.displayLevel"
											id="displayLevel" value="${category.displayLevel }"
											class="input_style1" size="100" maxlength="1000" />

									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										内容正文:
									</td>
									<td>
										<input type="text" name="category.parentName" id="parentName"
												value="${category.parentName }" class="input_style1" size="100"
												maxlength="132" />
									</td>
								</tr>
							</table>
						</div>
						<center>
							<input class="input_btn_style3" type="button" value="保存" onclick="submitData();"/>
						</center>
				</form>
		</center>
	</body>
</head>