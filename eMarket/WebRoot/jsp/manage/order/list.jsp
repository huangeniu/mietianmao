<%@ page language="java" import="java.util.*,com.mz2b.os.action.*,com.mz2b.os.vo.*"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String cssPath = "";
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
		src="<%=request.getContextPath()%>/js/manage/bulletin/bulletininfo.js"></script>

	<body>
		<div class="weizhi">
			<span class="weizhi_icon">&nbsp;</span>您目前所在位置: 查询栏目
		</div>

		<form name="callForm" method="post"
			action="<%=request.getContextPath()%>/order/searchorder.action">
			<div class="search_k">
				<fieldset class="seaech">
					<legend>
						<img src="<%=cssPath%>/images/search_btn.gif" align="absmiddle"/> 
						<font	style="font-size: 12px;">高级查询</font>

					</legend>
					<div class="search_content">
						订单号：

						<input type="text" id="oid" name="order.oid" size="20"
							maxlength="50" class="form_field"
							value="${order.oid}" />&nbsp;&nbsp;

						订单金额：

						<input type="text" id="total"
							name="order.total" size="20" maxlength="50"
							class="form_field"
							value="${order.total}" />&nbsp;&nbsp;

						用户名：

						<input type="text" id="uname" name="order.uname"
							size="20" maxlength="50" class="form_field"
							value="${order.uname}" />&nbsp;&nbsp;

						&nbsp;&nbsp;
						<input class="input_btn_style1" type="button" name="search"
							value="开始查询" onclick="callForm.submit();" />
					</div>
				</fieldset>
			</div><div class="select"><span style="float:right;">
			&nbsp;&nbsp;
			<input class="input_btn_style2" type="button" name="createData"
				value="&nbsp;新增&nbsp;" onclick="toCreateuser()" />
			<input class="input_btn_style1" type="button" name="deleteData"
				value="&nbsp;删除&nbsp;" onclick="deletetemplate()" />
			</span></div>
			<div class="table_bg">
			<table width="98%" id="main_table" align="center">
				<tr>
					<th align="center">
						全选
						<input type="checkbox" name="check_box1"
							onclick="checkSelect('category.id')" />
					</th>
					<th align="center">
						订单号
					</th>
					<th align="center">
						订单金额
					</th>
					<th align="center">
						用户名
					</th>
					<th align="center">
						订单商品总数
					</th>
				</tr>

			<s:iterator value="#attr.resultList" var="to">
				<tr>
					<td align="center">
						<input type="checkbox" name="user.id"
							value="${to.id }" />
					</td>

					<td align="center">
						<a href="#" onclick="viewuser('${to.id }')">
							${to.oid }
						</a>
					</td>					
	
					<td align="center">
						<a href="#" onclick="viewuser('${to.id }')">
							${to.total }
						</a>
					</td>
	
					<td align="center">
						${to.uname }
					</td>
	
					<td align="center">
						${to.amount }
					</td>
					
					<td align="center">
						<a href="#" class="edit"
							onclick="toEdituser('${to.id }')">修改</a>&nbsp;&nbsp;
						<a href="#" class="go"
							onclick="viewuser('${to.id }')">查看操作</a>
					</td>
				</tr>
			</s:iterator>
				<tr>
					<td align="center" colspan="20">
						<%= "" %>//@include file="/jsp/common/page_control.jsp"%>
					</td>
				</tr>
			</table>

		</form>


</body>
</html>
