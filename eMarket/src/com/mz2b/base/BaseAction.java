package com.mz2b.base;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.mz2b.framework.Pagination;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {
	protected List<?> resultList;
	protected List<Map<?,?> > forMap;
	protected static final String JSON = "json";
	protected String url;
	protected HttpServletRequest request;
	protected Pagination pagination = new Pagination();
	
	public Pagination getPagination() {
		return pagination;
	}

	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}

	public List<?> getResultList() {
		return resultList;
	}

	public void setResultList(List<?> resultList) {
		this.resultList = resultList;
	}

	public List<Map<?, ?> > getForMap() {
		return forMap;
	}

	public void setForMap(List<Map<?, ?> > forMap) {
		this.forMap = forMap;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

}
