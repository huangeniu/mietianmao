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
				<span class="weizhi_icon">&nbsp;</span>��Ŀǰ����λ��: ��ʾ֪ͨ����
			</div>
			<div class="table_bg2">





<div align="center">
<table width="98%" class="table_bg" align="center">
				
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	���⣺
	  </td>
	  
	  <td>

        	  
        	  	<%=user.getId()%>
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	��Ҫ��
	  </td>
	  
	  <td>

        	  	<%if(user!=null&&!user.equals("")){%><%=user.getId() %><%}%>
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	�������ģ�
	  </td>
	  
	  <td>


	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	����ʱ�䣺
	  </td>
	  
	  <td>
        	  
	  	 &nbsp; </td>
	</tr>
							
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	������
	  </td>
	  
	  <td>

        	  
        	  <%=user.getPassword() %>
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	ͼƬ��
	  </td>
	  
	  <td>
	  	  	 <%if(user.getImagePath()!=null){%>  <img src="/photo/UserVO/<%=user.getImagePath() %>" width="50px" height="50px"/>   <%} %>
	  	 
	  		

        	  
	  	 &nbsp; </td>
	</tr>
			
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	�����˴Σ�
	  </td>
	  
	  <td>

        	  
	  	 &nbsp; </td>
	</tr>
					
	<%-- %><tr>
	  <td align="right" width="30%">
	  	����
	  </td>
	  
	  <td>

        	  	<%=user.getBttypeName() %>
	  	 &nbsp; </td>
	</tr>--%>
					
	<tr>
	  <td align="right" width="30%" style="background:#f0f6fe">
	  	״̬��
	  </td>
	  
	  <td>

        	  	
        	  		<%if(user!=null&&!user.equals("")){%> 		<%=user.getPassword() %> <%}%>
	  	 &nbsp; </td>
	</tr>
						

    <tr><td colspan="2" align="center"><input class="input_btn_style2" type="button" value="����" onclick="javascript:history.go(-1);"/></td></tr>
						</table>
					</div>
				</form>
		</center>
	</body>
</html>