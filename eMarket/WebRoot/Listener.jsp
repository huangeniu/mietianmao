<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><% 
	
	String status = "0" , identity = "" ; 
	status = request.getParameter("status");
	identity = request.getParameter("identity");
	
	System.out.println(status + "\t" + identity);
	System.out.println("asdf" + session.getAttribute(identity));
	if(status.equals("-1")){
		session.setAttribute(identity + "status","-1");
		out.print(0);
	}else 
		out.print(session.getAttribute(identity)); 
//	if(session.getAttribute(identity).equals("1"))
//		session.removeAttribute(identity); 
%>