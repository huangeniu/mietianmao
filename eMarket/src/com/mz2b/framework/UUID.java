package com.mz2b.framework;

public class UUID {
	/**
	 * @descript uuid generator
	 * @author Teny Zh
	 * @date 2012-10-10 23:02
	 * @version V1.0000
	 */
	
	private UUID(){};
	public static String getUUID(){
		String uuid = java.util.UUID.randomUUID().toString();
		return uuid.replaceAll("-", "");
	}
}