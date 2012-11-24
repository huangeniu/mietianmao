<%@ page language="java" import="java.util.*,com.mz2b.os.vo.*"
	pageEncoding="utf-8"%>

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
					<script language="JavaScript"
						src="<%=basePath%>plugins/jValidate/jquery-1.3.2.min.js"
						charset="utf-8"></script>
					<script language="JavaScript"
						src="<%=basePath%>plugins/jValidate/jvalidate-1.0.0.js"
						charset="utf-8"></script>
					<script language="JavaScript"
						src="<%=basePath%>plugins/jValidate/jmessagebox-1.0.0.js"
						charset="utf-8"></script>
					<link rel="stylesheet" type="text/css"
						href="<%=basePath%>plugins/jValidate/messagebox/blue/messagebox.css" />
	<script type="text/javascript">
   
     
    </script>
	</head>

	<body>
		<center>
			<div class="weizhi">
				<span class="weizhi_icon">&nbsp;</span>您目前所在位置: 新增商品
			</div>
			<div class="table_bg2">

				<form name="dataForm" method="post" id="dataForm"
					action="<%=request.getContextPath()%>/goods/addgoodsprocess.action"
					enctype="multipart/form-data">
					<div align="center">
						<div class="table_bg">
							<table width="98%" id="main_table" align="center">

								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										商品名称：*
									</td>
									<td>
										<input type="text" name="goods.gname" id="cname" jvpattern="^.+$" jverrortip="请输入正确的商品名称." jvtipid="spt_name" 
											class="input_style1" size="100" maxlength="132" />
										 <span id="spt_name" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										商品图片：*
									</td>
									<td>
										<input type="file" name="uploadfile.file" id="uploadimage"
											class="input_style1" size="30" maxlength="132"
											 />
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										入货价:*
									</td>
									<td>
									<input type="text" name="goods.dprice" id="dprice" jvpattern="^[0-9]+[\.][0-9]{2}$" jverrortip="入货价必须保留小数后两位"." jvtipid="spt_dprice" 
											class="input_style1" size="20"  />
									<span id="spt_dprice" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										出售价：*
									</td>
									<td>
										<input type="text" name="goods.sprice" id="sprice" jvpattern="^[0-9]+[\.][0-9]{2}$" jverrortip="价格必须保留小数后两位"." jvtipid="spt_sprice" 
											class="input_style1" size="20"  />
										<span id="spt_sprice" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
									</td>
								</tr>
							
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										库存:*
									</td>
									<td>
										<input type="text" name="goods.stock" id="stock" jvpattern="^[0-9]{1,}" jverrortip="库存数量不正确." jvtipid="spt_code" 
											class="input_style1" size="20" />
										<span id="spt_code" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
									</td>
								</tr>
								<tr>
									<td align="right" width="30%" style="background: #f0f6fe">
										商品说明：
									</td>
									<td>
										<textarea rows="3" name="goods.summary" id="summary"  cols="50"></textarea>
									</td>
								</tr>
								
								
							</table>
						</div>
						<center>
							<input class="input_btn_style3" type="submit" value="保存" />
						</center>
				</form>
		</center>
		<script>
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
	<script language="JavaScript">
	$('#dataForm').jValidate({
		blurvalidate : true
	});
</script>
	</body>
</html>