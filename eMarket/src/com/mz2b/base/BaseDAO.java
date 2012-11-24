package com.mz2b.base;

import java.lang.reflect.Field;
import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mz2b.framework.Pagination;

/**
 * @descript base dao
 * @author Teny Zh
 * @since 2012-10-12
 * @version v0.30
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
	public void delete(BaseBean o){
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
		Query q = session.createQuery("from " + o.getClass().getName());
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
	
	/**
	 * @deprecated 
	 */
	public int update(BaseBean o) {
		Session session = sessionFactory.getCurrentSession();
		Class c = o.getClass();
		Field[] f = c.getDeclaredFields();
		
		StringBuffer queryStr = new StringBuffer("update " + c.getName() + " set ");
		String field ,value;
		for(int i=0;i<f.length;i++){
			field = f[i].getName();
			try{
				value = (String)c.getMethod(getMethod(field), null).invoke(o, null);
				if(value != null)
					queryStr.append(field).append("=\'" + value + "\' and ");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		
		queryStr.append("where id = " + o.id);
		return session.createQuery(queryStr.toString().replace(" and where", " where")).executeUpdate();
	}
	
	public int update(Class c, Map<String,Object> map) {
		Session session = sessionFactory.getCurrentSession();
		Field[] f = c.getDeclaredFields();
		
		StringBuffer queryStr = new StringBuffer("update " + c.getName() + " set ");
		Iterator<Entry<String,Object>> iter = map.entrySet().iterator();
		while(iter.hasNext()){
			Entry entry = iter.next();
			queryStr.append(entry.getKey()).append("=\'").append(entry.getValue()).append("\' , ");
		}
		queryStr.append("where id =\'" + map.get("id") + "\'");
		return session.createQuery(queryStr.toString().replace(" , where", " where")).executeUpdate();
	}
	
	public List enQuery(BaseBean o , Pagination p , OrderBy orderBy) {
		Session session = sessionFactory.getCurrentSession();
		Class c = o.getClass();
		
		StringBuffer queryStr = new StringBuffer("from " + c.getName());
		if(o != null){
			String field; Object value;
			Field[] f = c.getDeclaredFields();
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
		Query q = session.createQuery(queryStr.toString().replace("where order","order").replace("and order", "order"));
		if(p != null){
			p.setCount(q.list().size());
			q.setFirstResult(p.getCurCount());
			q.setMaxResults(p.getCurPagin());			
		}
		return q.list();
	}
	
	public String getMethod(String field){
		field = "get" + (char)(field.charAt(0) - 32) + field.substring(1);
		return field;
	}
}
