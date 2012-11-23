<%@ page language="java" import="java.util.*,com.mz2b.os.vo.*" pageEncoding="utf-8"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
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
	<SCRIPT language=JavaScript
		src="<%=request.getContextPath()%>/plug-in/ErrorCheck.js"></SCRIPT>
	<script
		src="<%=request.getContextPath()%>/js/manage/bulletin/bulletininfo.js"></script>
	<script
		src="<%=request.getContextPath()%>/plug-in/ckeditor/ckeditor.js"></script>
	<script src="<%=request.getContextPath()%>/plug-in/jquery/jquery.js"></script>

	<body>
		<center>
			<div class="weizhi">
				<span class="weizhi_icon">&nbsp;</span>您目前所在位置: 新增通知公告
			</div>
			<div class="table_bg2">





				<form name="dataForm" method="post"
					action="<%=request.getContextPath()%>/bulletin/bulletininfo/addbulletininfoprocess.do"
					enctype="multipart/form-data">


					<div align="center">
						<div class="table_bg"><table width="98%" id="main_table" align="center">

							<tr>
								<td align="right" width="30%" style="background:#f0f6fe">
									标题：*
									<%-- <label class="mandatory">*</label> --%>
								</td>
								<td>



									<input type="text" name="bulletininfo.title" id="title"
										class="input_style1" size="100" maxlength="132" />


								</td>
							</tr>
							<tr>
								<td align="right" width="30%" style="background:#f0f6fe">
									概要
									<label class="mandatory">
										[
										<bean:message key="label.input.maxlength" />
										1000]
									</label>：&nbsp;
								</td>
								<td>



									<input type="text" name="bulletininfo.summarization" id="summarization"
										class="input_style1" size="100" maxlength="1000" />


								</td>
							</tr>
							<tr>
								<td align="right" width="30%" style="background:#f0f6fe">
									内容正文
									<label class="mandatory">[<bean:message key="label.input.maxlength" />65535]</label>
									：*
								</td>
								<td>
									<textarea name="bulletininfo.contentStr" id="contentStr" cols="100"
										rows="20" class="ckeditor"></textarea>



								</td>
							</tr>
							<tr>
								<td align="right" width="30%" style="background:#f0f6fe">
									附件：&nbsp;
								</td>
								<td>



									<input type="file" name="uploadfile.file" id="uploadfile" class="input_style1"
										size=28 onchange="checkfile()" />


								</td>
							</tr>
							<tr>
								<td align="right" width="30%" style="background:#f0f6fe">
									图片：&nbsp;
								</td>
								<td>



									<input type="file" name="uploadimage.file" class="input_style1"
										size=28 id="uploadimage" onchange="checkimage()"/>


								</td>
							</tr>
							<tr>
								<td align="right" width="30%" style="background:#f0f6fe">
									状态：&nbsp;
								</td>
								<td>




									<select name="bulletininfo.btstatusCode" id="btstatusCode">
										<option value="toPublishe">
											未发布
										</option>
										<option value="published">
											发布
										</option>
									</select>


								</td>
							</tr>


							
						</table>
					</div><center><input class="input_btn_style3" type="button" value="保存" onclick="submitData();" /></center>
				</form>
		</center>
<script>

function checkfile(){
	var x = document.getElementById("uploadfile").value;
	var s = x.lastIndexOf(".");
	var h = x.substring(s+1);
	if(h!="txt"&&h!="ppt"&&h!="doc"&&h!="docx"&&h!="pdf"&&h!="xls"&&h!="xlsx"){
		alert("附件格式必须是：txt，ppt，doc，docx，pdf，xls，xlsx！");
		var obj=document.getElementById("uploadfile"); 
		obj.outerHTML = obj.outerHTML.replace(/(value=\").+\"/i, "$1\""); 
	}
}
			
function checkimage(){
	var im=document.getElementById("uploadimage").value;
	var imanum = im.lastIndexOf(".");
	var imag = im.substring(imanum+1);
	if(imag!="jpg"&&imag!="gif"&&imag!="png"&&imag!="bmp"){
		alert("图片的格式必须是：jpg，gif，png，bmp！");
		var obj=document.getElementById("uploadimage"); 
		obj.outerHTML = obj.outerHTML.replace(/(value=\").+\"/i, "$1\""); 
	}
}
		</script>
	</body>
</html>