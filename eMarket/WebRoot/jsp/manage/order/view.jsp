<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.*, com.mz2b.os.vo.*"%>
<%
   UserVO user = (UserVO)request.getAttribute("user");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<link id="skinCss" href="<%=""%>/cms_sytle.css"	rel="stylesheet" type="text/css"/>
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
	  	标题：
	  </td>
	  
	  <td>

        	  
        	  	<%=user.getId()%>
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	概要：
	  </td>
	  
	  <td>

        	  	<%if(user!=null&&!user.equals("")){%><%=user.getId() %><%}%>
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	内容正文：
	  </td>
	  
	  <td>


	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	发布时间：
	  </td>
	  
	  <td>
        	  
	  	 &nbsp; </td>
	</tr>
							
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	附件：
	  </td>
	  
	  <td>

        	  
        	  <%=user.getPassword() %>
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	图片：
	  </td>
	  
	  <td>
	  	  	 <%if(user.getImagePath()!=null){%>  <img src="/photo/UserVO/<%=user.getImagePath() %>" width="50px" height="50px"/>   <%} %>
	  	 
	  		

        	  
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	被读人次：
	  </td>
	  
	  <td>

        	  
	  	 &nbsp; </td>
	</tr>
					
	<%-- %><tr>
	  <td align="right" width="30%">
	  	类型
	  </td>
	  
	  <td>

        	  	<%=user.getBttypeName() %>
	  	 &nbsp; </td>
	</tr>--%>
					
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	状态：
	  </td>
	  
	  <td>

        	  	
        	  		<%if(user!=null&&!user.equals("")){%> 		<%=user.getPassword() %> <%}%>
	  	 &nbsp; </td>
	</tr>
						

    <tr><td colspan="2" align="center"><input class="input_btn_style2" type="button" value="返回" onclick="javascript:history.go(-1);"/></td></tr>
						</table>
					</div>
				</form>
		</center>
	</body>
</html>