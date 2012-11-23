package com.mz2b.framework;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.json.*;

public class JsonBuild {
	private JsonBuild(){}
	
	public static String getMethodName(String name){
		name = "get" + name.toUpperCase() + name.substring(1);
		return name;
	}
	
	public static String pack(List resultList) {
		if(null==resultList || resultList.isEmpty())
			return "{\"result:0\",\"msg\":\"¿ÕÊý¾Ý£¡\"}";
		Class c = resultList.get(0).getClass();
		Field[] fields = c.getDeclaredFields();
		
		StringBuffer str = new StringBuffer();
		str.append("{\"result\":[");
		for(int i=0;i<resultList.size();i++){
			str.append("{");
			for(Field f : fields){
				str.append("\"" + f.getName() + "\":");
				
				try {
					Method m = c.getMethod(getMethodName(f.getName()), null);
					Object o = m.invoke(resultList.get(i), null);
					str.append("\"" + o + "\",");
				} catch (NoSuchMethodException e) {
					e.printStackTrace();
					return str.replace(0, str.length(), "{\"result:-1\",\"msg\":\"TO¶ÔÏó×Ö¶Î´íÎó£¡\"}").toString();
				} catch (SecurityException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
					return str.replace(0, str.length(), "{result:-1,msg:\"TO¶ÔÏó×Ö¶Î´íÎó£¡\"}").toString();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				}
			}
			str.setCharAt(str.length()-1, '}');
			str.append(",");
		}
		str.deleteCharAt(str.length()-1);
		str.append("]}");
		return str.toString();
	}
	
	public static String pack(Object obj){
		Class c = obj.getClass();
		Field[] fields = c.getDeclaredFields();
				
		StringBuffer str = new StringBuffer();
		str.append("{\"result\":[{");
		for(Field f : fields){
			str.append("\"" + f.getName() + "\":");
			
			try {
				Method m = c.getMethod(getMethodName(f.getName()), null);
				Object o = m.invoke(obj, null);
				str.append("\"" + o + "\",");
			} catch (NoSuchMethodException e) {
				e.printStackTrace();
				return str.replace(0, str.length(), "{\"result:-1\",\"msg\":\"TO¶ÔÏó×Ö¶Î´íÎó£¡\"}").toString();
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
				return str.replace(0, str.length(), "{result:-1,msg:\"TO¶ÔÏó×Ö¶Î´íÎó£¡\"}").toString();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}

		str.deleteCharAt(str.length()-1);
		str.append("}]}");
		return str.toString();
	}

	public static Object formatToObj(String json,Class c) {
		
		JSONArray jArr = JSONObject.fromObject(json).getJSONArray("result");
		JSONObject jo = jArr.getJSONObject(0);
		
		return JSONObject.toBean(jo, c);
	}
}
