package com.mz2b.base;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
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
	
	public void save(Object o){
		Session session = sessionFactory.getCurrentSession();
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
	
	public void update(BaseBean o) throws SecurityException, NoSuchMethodException, 
		IllegalArgumentException, IllegalAccessException, InvocationTargetException{
		Session session = sessionFactory.getCurrentSession();
		Class c = o.getClass();
		Field[] f = c.getDeclaredFields();
		
		StringBuffer queryStr = new StringBuffer("update " + c.getName() + " c set ");
		for(int i=0;i<f.length;i++){
			if(f[i].getName().equals("id"))
				continue;
			Method m = c.getMethod(getMethod(f[i].getName()), null);
			if(m.invoke(o, null) != null){
				queryStr.append("c.");
				queryStr.append(f[i].getName());
				queryStr.append("=\'");
				queryStr.append(m.invoke(o, null));
				queryStr.append("\' and ");
			}
		}			
		String str = queryStr.toString();
		str = str.substring(0,str.lastIndexOf('a'));
		str = str + "where c.id =\'" + o.getId() + "\'"; 
		
		session.createQuery(str).executeUpdate();
	}
	
	public String getMethod(String field){
		field = "get" + (char)(field.charAt(0) - 32) + field.substring(1);
		return field;
	}
}
