<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.*, com.mz2b.os.vo.*"%>
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
	<body>
		<center>
			<div class="weizhi"> 
				<span class="weizhi_icon">&nbsp;</span>您目前所在位置: 显示通知公告
			</div>
			<div class="table_bg2">

				<div align="center">
					<table width="98%" class="table_bg" align="center">
							
						<tr>
						  <td align="right" width="30%" style="background:#f0f6fe">
						  	订单号：
						  </td>
						  <td>${order.oid }&nbsp; </td>
						</tr>
						
						<tr>
						  <td align="right" width="30%" style="background:#f0f6fe">
						  	商品总数：
						  </td>
						  <td>${order.amount }&nbsp; </td>
						</tr>
								
						<tr>
						  <td align="right" width="30%" style="background:#f0f6fe">
						  	订单总金额：
						  </td>
						  <td>${order.total }&nbsp; </td>
						</tr>
								
						<tr>
						  <td align="right" width="30%" style="background:#f0f6fe">
						  	用户名：
						  </td>
						  <td>${order.uname }&nbsp; </td>
						</tr>
						
					    <tr><td colspan="2" align="center"><input class="input_btn_style2" type="button" value="返回" onclick="javascript:history.go(-1);"/></td></tr>
					</table>
					</div>
				</form>
		</center>
	</body>
</html>