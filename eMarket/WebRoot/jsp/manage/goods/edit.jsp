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
		<body>
			<center>
				<div class="weizhi">
					<span class="weizhi_icon">&nbsp;</span>��Ŀǰ����λ��: �༭֪ͨ����
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
											��Ʒ���ƣ�*
										</td>
										<td>
										
											<input type="text" name="goods.gname" id="gname" jvpattern="^.+$" jverrortip="��������ȷ����Ʒ����." jvtipid="spt_name" 
											class="input_style1" value="${goods.gname }" size="100" maxlength="132" />
										 <span id="spt_name" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
										</td>
									</tr>
									
									<tr>
										<td align="right" width="30%" style="background: #f0f6fe">
											���ۼۣ�*
										</td>
										<td>
											
												<input type="text" name="goods.sprice" id="sprice" jvpattern="^[0-9]+[\.][0-9]{2}$" jverrortip="�۸���뱣��С������λ"." jvtipid="spt_sprice" 
											class="input_style1" 	value="${goods.sprice }" size="20"  />
										<span id="spt_sprice" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
										</td>
									</tr>
									<tr>
										<td align="right" width="30%" style="background: #f0f6fe">
											����ۣ�*
										</td>
										<td>
											<input type="text" name="goods.dprice" id="dprice" jvpattern="^[0-9]+[\.][0-9]{2}$" jverrortip="����۱��뱣��С������λ"." jvtipid="spt_dprice" 
											class="input_style1" value ="${goods.dprice }"size="20"  />
									<span id="spt_dprice" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
										</td>
									</tr>
									<tr>
										<td align="right" width="30%" style="background: #f0f6fe">
											��棺*
										</td>
										<td>
		
											<input type="text" name="goods.stock" id="stock" jvpattern="^[0-9]{1,}" jverrortip="�����������ȷ." jvtipid="spt_code" 
											class="input_style1" value="${goods.stock }"  size="20" />
										<span id="spt_code" class="normaltips" jverrorclass="errortips" jvcorrectclass="correcttips"></span>
										</td>
									</tr>
									<tr>
										<td align="right" width="30%" style="background: #f0f6fe">
											ͼƬ��&nbsp;
										</td>
										<td>

											<input type="file" name="upload.file" id="uploadimage"
												class="input_style1" size=28 onchange="checkimage()" />

										</td>
									</tr>
									<tr>
										<td align="right" width="30%" style="background: #f0f6fe">
											��Ʒ��飺&nbsp;
										</td>
										<td>
											<textarea rows="3" name="goods.summary" id="summary"  cols="50"></textarea>

										</td>
									</tr>
								</table>
							</div>
							<center>
								<input class="input_btn_style3" type="submit" value="����" />
							</center>
					</form>
			</center>
		</body>
<script language="JavaScript">
	$('#dataForm').jValidate({
		blurvalidate : true
	});
</script>