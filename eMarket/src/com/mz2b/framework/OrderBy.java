package com.mz2b.framework;

public class OrderBy {
	private String method = "date desc";
	
	public String getMethod(){
		return "order by " + method;
	}
	
	public void setMethod(String method){
		this.method = method;
	}
}
