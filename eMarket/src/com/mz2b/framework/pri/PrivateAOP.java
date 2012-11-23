package com.mz2b.framework.pri;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class PrivateAOP {
	
	@Before("execution(public * com.mz2b.os.service.impl.*.delete*(..))")
	public void webLayer() throws IllegalAccessException{
		HttpSession session = ServletActionContext.getRequest().getSession();
		System.out.println("method before \t" + (session.getAttribute("user")));
		throw new IllegalAccessException("您权限不足");
	}
	@Before("execution(public * com.mz2b.os.service.impl.*.edit*(..))")
	public void webLayer2() throws IllegalAccessException{
		HttpSession session = ServletActionContext.getRequest().getSession();
		System.out.println("method before \t" + (session.getAttribute("user")));
		throw new IllegalAccessException("您权限不足");
	}
}
