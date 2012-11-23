package com.mz2b.base;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Timestamp;

public class BaseBean {
	private int id;
	private Timestamp date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	private String getGetMethodName(String fieldName) {
		String firstCharOfField = fieldName.substring(0, 1).toUpperCase();
		return "get" + firstCharOfField
				+ fieldName.substring(1, fieldName.length());
	}
	public String toString() {
		Class c = this.getClass();
		Method m = null;
		StringBuffer name = new StringBuffer();
		name.append(c.getName());

		name.append("[");

		Field fields[] = c.getDeclaredFields();

		AccessibleObject.setAccessible(fields, true);

		for (int j = 0; j < fields.length; j++) {
			name.append(fields[j].getName());
			name.append("=");
			try {
				m = c.getMethod(getGetMethodName(fields[j].getName()), null);
				if (null == m.invoke(this, null)) {
					name.append(m.invoke(this, null));
				} else {
					name.append(m.invoke(this, null).toString());
				}
			} catch (NoSuchMethodException nsme) {
				name.append("'NoSuchMethodException'");
			} catch (IllegalAccessException iae) {
				name.append("'IllegalAccessException'");
			} catch (InvocationTargetException ite) {
				name.append("'InvocationTargetException'");
			}
			name.append(",");
		}
		name.replace(name.length() - 1, name.length(), "]");

		return name.toString();
	}
}
