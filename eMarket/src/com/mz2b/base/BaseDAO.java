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

import com.mz2b.framework.OrderBy;
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
	
	/**
	 * @deprecated
	 */
	public void delete(Object o){
		Session session = sessionFactory.getCurrentSession();
		session.delete(o);
	}
	
	public int delete(Class c, String id){
		Session session = sessionFactory.getCurrentSession();
		String[] ids = id.split(",");
		StringBuffer idBuf = new StringBuffer("delete from " + c.getName() + " where id in ('");
		for(int i=0;i<ids.length;i++)
			idBuf.append(ids[i]).append("','");
		idBuf.append(")");
		return session.createQuery(idBuf.toString().replace(",')", ")")).executeUpdate();
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
//		Session session = sessionFactory.getCurrentSession();
//		Query q = session.createQuery("from " + o.getClass().getName() + " order by date desc");
//		if(p != null){
//			p.setCount(q.list().size());
//			q.setFirstResult(p.getCurCount());
//			q.setMaxResults(p.getCurPagin());
//		}
//		
		return enQuery(o,p,new OrderBy());
	}
	public List portalQuery4List(BaseBean o ,Pagination p){
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from " + o.getClass().getName() + " order by date desc");
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
	public void update(BaseBean o) {
		Session session = sessionFactory.getCurrentSession();
		session.update(o);
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
					if(value != null && !value.equals(0.0f) && !value.equals(0))
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
		}System.out.println(q.getQueryString());
		return q.list();
	}
	
	public String getMethod(String field){
		field = "get" + field.substring(0,1).toUpperCase() + field.substring(1);
		return field;
	}
}
