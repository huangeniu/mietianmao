<%@ page language="java" import="java.util.*,com.mz2b.os.action.*,com.mz2b.os.vo.*"
	pageEncoding="utf-8"%>
<%
	List resultList = (List) request.getAttribute("resultList");
	UserVO user = (UserVO) request.getAttribute("user");
%>
<%
	String cssPath = "";
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
		src="<%=request.getContextPath()%>/js/manage/bulletin/bulletininfo.js"></script>

	<body>
		<div class="weizhi">
			<span class="weizhi_icon">&nbsp;</span>您目前所在位置: 查询通知公告
		</div>

		<form name="callForm" method="post"
			action="<%=request.getContextPath()%>/bulletin/bulletininfo/searchbulletininfo.do">
			<div class="search_k">
				<fieldset class="seaech">
					<legend>
<img src="<%=cssPath%>/images/search_btn.gif" align="absmiddle"/> 
<font	style="font-size: 12px;">高级查询</font>

					</legend>
					<div class="search_content">
						标题：



						<input type="text" id="title" name="bulletininfo.title" size="20"
							maxlength="50" class="form_field"
							value="<%if(user!=null){%><%=user.getId()%><%}%>" />&nbsp;&nbsp;

						概要：



						<input type="text" id="summarization"
							name="user.summarization" size="20" maxlength="50"
							class="form_field"
							value="<%if(user!=null){%><%=user.getUname()%><%}%>" />&nbsp;&nbsp;

						发布人：



						<input type="text" id="userName" name="user.userName"
							size="20" maxlength="50" class="form_field"
							value="<%if(user!=null){%><%=user.getPassword()%><%}%>" />&nbsp;&nbsp;



						状态：



									<select name="user.btstatusCode" id="btstatusCode">
										<option value="">
										
										</option>
										<option value="published">
											已发布
										</option>
										<option value="toPublishe">
											未发布
										</option>
									</select>

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
							onclick="checkSelect('user.id')" />
					</th>
					<th align="center">
						标题
					</th>
					
					<th align="center">
						发布时间
					</th>
					<th align="center">
						发布人
					</th>
					

					<th align="center">
						状态
					</th>
					<th align="center">
						操作
						<bean:message key="title.operation" />
					</th>
				</tr>
				<%
					if (null != resultList && !resultList.isEmpty()) {
						for (int i = 0; i < resultList.size(); i++) {
							UserVO to = (UserVO) resultList.get(i);
				%>
				<tr>
					<td align="center">
						<input type="checkbox" name="user.id"
							value="<%=to.getId()%>" />
					</td>



					<td align="center">
						<%--<a href="<%=request.getContextPath()%>/bulletin/user/viewuser.do">--%>
							<a href="#" onclick="viewuser('<%=to. getId()%>')">


							<%=to.getPassword()%> </a>
					</td>

					

					<td align="center">
						
							<%= "" %>
						  
					</td>

					<td align="center">
						


							<%=to.getUname()%> 
					</td>

				



					<td align="center">
						<%--<a href="<%=request.getContextPath()%>/bulletin/user/viewuser.do">--%>
						<%--<a href="#" onclick="viewuser('<%=to. getId()%>')">
						<%=to.getBtstatusName()%> </a> --%>
						
	       已发布
	        <a href="#"  >     <span  class="edit" name="user.id" onclick="toRecommend('<%=to.getId()%>','toPublishe')"> 取消发布</span></a>
		 未发布 
	    <a href="#">  <span  class="edit" name="user.id" onclick="toRecommend('<%=to.getId()%>','published')">发布</span></a>
						
				</td>
					<td align="center">
						<a href="#" class="edit"
							onclick="toEdituser('<%=to.getId()%>')">修改</a>&nbsp;&nbsp;
						<a href="#" class="go"
							onclick="viewuser('<%=to.getId()%>')">查看操作</a>

					</td>
				</tr>
				<%
					}
					}
				%>

				<tr>
					<td align="center" colspan="20">
						<%= "" %>//@include file="/jsp/common/page_control.jsp"%>
					</td>
				</tr>
			</table>

		</form>


		<form name="viewForm" method="post" action="<%=request.getContextPath()%>/bulletin/user/viewuser.do">
			<input type="hidden" name="user.id" id="id" />
		</form>

		<script>

function toCreateuser() {
	var url = "<%=request.getContextPath()%>/bulletin/user/adduser.do";
	window.location.href(url);}


function  toEdituser(id) {
        viewForm.action='<%=request.getContextPath()%>/bulletin/user/viewedituser.do';
	document.getElementById("id").value=id;
	viewForm.submit();
}
function viewuser(id){
    viewForm.action='<%=request.getContextPath()%>/bulletin/user/viewuser.do';
	document.getElementById("id").value=id;
	viewForm.submit();
}

function toRecommend(id,btstatusCode){
        viewForm.action='<%=request.getContextPath()%>/bulletin/user/toRecommend.do?user.btstatusCode='+btstatusCode;
		document.getElementById("id").value=id; 
		viewForm.submit();
}
</script>
</body>
</html>
