package com.mz2b;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.mz2b.base.BaseBean;
import com.mz2b.os.vo.UserVO;

public class Test {

	public static void main(String[] args) throws Exception {
		UserVO o = new UserVO();
		o.setId(1);
		o.setUname("zhteny");
		System.out.println(get(UserVO.class,o));
	}
	
	public static String get(Class c , BaseBean o) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SecurityException, NoSuchMethodException, IllegalArgumentException, InvocationTargetException{
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
		return str;
	}
	
	public static String getMethod(String name){
		
		name = "get" + (char)(name.charAt(0) - 32) + name.substring(1);
		
		return name;
	}
}
class T{
	private String id;
	private String name = "str";
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}