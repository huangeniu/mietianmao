package com.mz2b.base;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mz2b.framework.Pagination;

/**
 * @descript base dao
 * @author Teny Zh
 * @since 2012-10-12
 * @version v0.2
**/

public class BaseDAO {
	protected SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void save(BaseBean o){
		Session session = sessionFactory.getCurrentSession();
		o.setDate(new Timestamp(System.currentTimeMillis()));
		session.save(o);
	}
	public void delete(Object o){
		Session session = sessionFactory.getCurrentSession();
		session.delete(o);
	}
	public Object view(BaseBean o){
		Session session = sessionFactory.getCurrentSession();
		return session.get(o.getClass(),o.getId());
	}
	public void eidt(Object o){
		Session session = sessionFactory.getCurrentSession();
		session.update(o);
	}
	public List queryForList(BaseBean o ,Pagination p){
		Session session = sessionFactory.getCurrentSession();
		Query q = null;
		if(o != null && o.getId() != 0)
			q = session.createQuery("from " + o.getClass().getName() + " c where c.id =\'" + o.getId() + "\'");
		else
			q = session.createQuery("from " + o.getClass().getName());
		if(p != null){
			p.setCount(q.list().size());
			q.setFirstResult(p.getCurCount());
			q.setMaxResults(p.getCurPagin());
		}
		
		return q.list();
		
	}
	public List portalQuery4List(BaseBean o ,Pagination p){
		Session session = sessionFactory.getCurrentSession();
		Query q = null;
		if(o != null && o.getId() != 0)
			q = session.createQuery("from " + o.getClass().getName() + " c where c.id =\'" + o.getId() + "\'");
		else
			q = session.createQuery("from " + o.getClass().getName());
		if(p != null){
			p.setCount(q.list().size());
			q.setFirstResult(p.getCurCount());
			q.setMaxResults(p.getCurPagin());
		}
		
		return q.list();
	}
	
	public Object portalview(BaseBean o){
		Session session = sessionFactory.getCurrentSession();
		return session.get(o.getClass(), o.getId()); 
	}
	
	public int update(BaseBean o) throws SecurityException, NoSuchMethodException, 
		IllegalArgumentException, IllegalAccessException, InvocationTargetException{
		Session session = sessionFactory.getCurrentSession();
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
		return session.createQuery(queryStr.toString().replace(" and where", " where")).executeUpdate();
	}
	
	public String getMethod(String field){
		field = "get" + (char)(field.charAt(0) - 32) + field.substring(1);
		return field;
	}
}
