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
			action="<%=request.getContextPath()%>/category/searchcategory.action">
			<div class="search_k">
				<fieldset class="seaech">
					<legend>
						<img src="<%=cssPath%>/images/search_btn.gif" align="absmiddle"/> 
						<font	style="font-size: 12px;">高级查询</font>

					</legend>
					<div class="search_content">
						栏目名称：

						<input type="text" id="cname" name="category.cname" size="20"
							maxlength="50" class="form_field"
							value="${category.cname}" />&nbsp;&nbsp;

						级别：

						<input type="text" id="displayLevel"
							name="category.displayLevel" size="20" maxlength="50"
							class="form_field"
							value="${category.displayLevel}" />&nbsp;&nbsp;

						上级栏目：

						<input type="text" id="parentName" name="category.parentName"
							size="20" maxlength="50" class="form_field"
							value="${category.parentName}" />&nbsp;&nbsp;

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
						栏目
					</th>
					<th align="center">
						显示级别
					</th>
					<th align="center">
						上级栏目
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
							${to.cname }
						</a>
					</td>
	
					<td align="center">
						${to.displayLevel }
					</td>
	
					<td align="center">
						${to.parentName }
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
