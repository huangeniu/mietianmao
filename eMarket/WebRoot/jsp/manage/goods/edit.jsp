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
					action="<%=request.getContextPath()%>/bulletin/bulletininfo/vieweditbulletininfoprocess.do"
					enctype="multipart/form-data">
					<div align="center">
						<div class="table_bg">
							<table width="98%" id="main_table" align="center">
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										标题：*
									</td>
									<td>
										<input type="text" name="goods.gname" id="gname"
											value="${goods.gname }" class="input_style1" size="100"
											maxlength="132" />
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										概要
										<label class="mandatory">
											[
											<bean:message key="label.input.maxlength" />
											1000]
										</label>
										：&nbsp;
									</td>
									<td>
										<input type="text" name="goods.summary"
											id="summary" value="${goods.summary }"
											class="input_style1" size="100" maxlength="1000" />

									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										出售价：*
									</td>
									<td>
										<input type="text" name="goods.sprice" id="sprice"
											value="${goods.sprice }" class="input_style1" size="100"
											maxlength="132" />
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										入货价：*
									</td>
									<td>
										<input type="text" name="goods.dprice" id="dprice"
											value="${goods.dprice }" class="input_style1" size="100"
											maxlength="132" />
									</td>
								</tr>	
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										库存：*
									</td>
									<td>
										<input type="text" name="goods.stock" id="stock"
											value="${goods.stock }" class="input_style1" size="100"
											maxlength="132" />
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										图片：&nbsp;
									</td>
									<td>

										<input type="file" name="upload.file" id="uploadimage"
											class="input_style1" size=28 onchange="checkimage()" />

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
	<script>
	//function submitData() {
	//	document.dataForm.submit();
	//}

	function checkfile() {
		var x = document.getElementById("uploadfile").value;
		var s = x.lastIndexOf(".");
		var h = x.substring(s + 1);
		if (h != "txt" && h != "ppt" && h != "doc" && h != "docx" && h != "pdf"
				&& h != "xls" && h != "xlsx") {
			alert("附件格式必须是：txt，ppt，doc，docx，pdf，xls，xlsx！");
			var obj = document.getElementById("uploadfile");
			obj.outerHTML = obj.outerHTML.replace(/(value=\").+\"/i, "$1\"");
		}
	}

	function checkimage() {
		var im = document.getElementById("uploadimage").value;
		var imanum = im.lastIndexOf(".");
		var imag = im.substring(imanum + 1);
		if (imag != "jpg" && imag != "gif" && imag != "png" && imag != "bmp") {
			alert("图片的格式必须是：jpg，gif，png，bmp！");
			var obj = document.getElementById("uploadimage");
			obj.outerHTML = obj.outerHTML.replace(/(value=\").+\"/i, "$1\"");
		}
	}
</script>