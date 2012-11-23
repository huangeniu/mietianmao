package com.mz2b.base;

import static org.junit.Assert.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import java.util.Map.Entry;

import com.mz2b.os.vo.UserVO;

public class BaseDAOTest {
	private static SessionFactory sf;
	private static Session session;
	@BeforeClass
	public static void beforeClass(){
		sf =  new Configuration().configure().buildSessionFactory();
		session = sf.getCurrentSession();
		session.beginTransaction();
	}
	
	@Test
	public void testUpdate()throws SecurityException, NoSuchMethodException, 
		IllegalArgumentException, IllegalAccessException, InvocationTargetException{
		UserVO o = new UserVO();
		o.setPassword("321321");
		o.setId(1);
		
		Class c = o.getClass();
		Field[] f = c.getDeclaredFields();
		
		StringBuffer queryStr = new StringBuffer("update " + c.getName() + " set ");
		String field ,value;
		for(int i=0;i<f.length;i++){
			field = f[i].getName();
			
			value = (String)c.getMethod(getMethod(field), null).invoke(o, null);
			if(value != null)
				queryStr.append(field).append("=" + value + " and ");
		}	
		
		queryStr.append("where id = " + o.id);
		session.createQuery(queryStr.toString().replace(" and where", " where")).executeUpdate();
	}
	public String getMethod(String field){
		field = "get" + (char)(field.charAt(0) - 32) + field.substring(1);
		return field;
	}
	
	@AfterClass
	public static void afterClass(){
		session.getTransaction().commit();
		session.close();
	}
}
