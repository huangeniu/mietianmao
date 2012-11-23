<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src='dwr/engine.js'></script>
<script type="text/javascript" src='dwr/util.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script type="text/javascript">
	var xmlHttp;
	var ident;
	function a(){
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = function(){
			if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
				ident = xmlHttp.responseText;
				var divId = document.getElementById("divId");
				divId.innerHTML = ident;
				setTimeout("uploadListener()" , 500);
			}
		}
		xmlHttp.open("POST" , "servlet/T2?timestamp" + new Date().getTime() , true);
		xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;");
		xmlHttp.send();	
		
	}

	function createXMLHttpRequest() {
	 	if (window.ActiveXObject) {
	 		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); 
	 	} else if (window.XMLHttpRequest) { 
			xmlHttp = new XMLHttpRequest(); 
		 }
	} 
	
	function uploadListener(){
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = function(){
			if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
				var con = xmlHttp.responseText;
				var divId = document.getElementById("status");
				divId.innerHTML = con;
				
				if(con != 0)
				setTimeout("uploadListener()" , 500);

			}
		}	
		var url = "servlet/T3?timestamp" + new Date().getTime() + "&upload="+ident;
		xmlHttp.open("GET" , url , true);
		xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;");
		xmlHttp.send();
		
	}

</script>
	</head>
	<body>
	
	<% 
		List list = new ArrayList();
		for(int i=0;i<10;i++){
			list.add(i * 10);
		}
		request.setAttribute("resultList",list);
	%>
	
	<s:debug></s:debug>
	
	<s:iterator value="#attr.resultList" >
		asdf<s:property/> 
	</s:iterator>
	
		<p>
			Your Message:
			<input id="sd" />
			<input type="button" value="Send" onclick="a()" />
		</p>
		<p>
			Messages:
		</p><div id="status">sdfsdf</div>
		<table align="left">
			<tbody id="dynamicUpdateArea"></tbody>
		</table>
		
		</p><div id="divId">fghjffhj</div>
	</body>
</html>
