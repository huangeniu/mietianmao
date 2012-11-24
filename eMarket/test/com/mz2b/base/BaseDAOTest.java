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

import com.mz2b.os.vo.CategoryVO;
import com.mz2b.os.vo.GoodsVO;
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
	public void testUpdate() {
		GoodsVO o = new GoodsVO();
//		o.setPassword("321321");
		o.setId(1);
		
		Class c = o.getClass();
		Field[] f = c.getDeclaredFields();
		
		StringBuffer queryStr = new StringBuffer("update " + c.getName() + " set ");
		String field ; Object value;
		for(int i=0;i<f.length;i++){
			field = f[i].getName();
			try{
				value = c.getMethod(getMethod(field), null).invoke(o, null);
				if(value != null)
					queryStr.append(field).append("=" + value + " and ");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		
		queryStr.append("where id = " + o.id);
		session.createQuery(queryStr.toString().replace(" and where", " where")).executeUpdate();
		
	}
	public String getMethod(String field){
		field = "get" + field.substring(0, 1).toUpperCase() + field.substring(1);
		System.out.println(field);
		return field;
	}
	
	@Test
	public void enQuery() {
		GoodsVO o = new GoodsVO();
		OrderBy orderBy = new OrderBy();
		Class c = o.getClass();
		Field[] f = c.getDeclaredFields();
		
		StringBuffer queryStr = new StringBuffer("from " + c.getName());
		String field; Object value;
		if(o != null){
			queryStr.append(" where ");
			for(int i=0;i<f.length;i++){
				field = f[i].getName();
				
				try {
					value = c.getMethod(getMethod(field), null).invoke(o, null);
					if(value != null && value.equals("0.0") && value.equals("0"))
						queryStr.append(field).append("=\'").append(value).append("\' and ");
				} catch (Exception e) {
					e.printStackTrace();
				}
						
			}
		}
		queryStr.append(orderBy.getMethod());
		System.out.println(queryStr);
		Query q = session.createQuery(queryStr.toString().replace("where order","order").replace("and order", "order"));
		List<GoodsVO> list = q.list();
		for(GoodsVO vo : list)
			System.out.println(vo.id + "\t" + vo.getGname() + "\t" + vo.getImagePath());
	}
	
	@Test
	public void testUpdate3(){
		Class c = GoodsVO.class;
		Field[] f = c.getDeclaredFields();
		
		Map map = new HashMap();
		map.put("id" , 1);
		map.put("imagePath" , "iamgepath");
		
//		StringBuffer queryStr = new StringBuffer("update " + c.getName() + " set ");
//		Iterator<Entry<String,Object>> iter = map.entrySet().iterator();
//		while(iter.hasNext()){
//			Entry entry = iter.next();
//			queryStr.append(entry.getKey()).append("=\'").append(entry.getValue()).append("\' , ");
//		}
//		queryStr.append("where id =\'" + map.get("id") + "\'");
//		
//		System.out.println(session.createQuery(queryStr.toString().replace(" , where", " where")).executeUpdate());
	}
	
	@AfterClass
	public static void afterClass(){
		session.getTransaction().commit();
		session.close();
	}
}
