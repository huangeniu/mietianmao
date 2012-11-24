package com.mz2b.framework;

import java.io.IOException;
import java.util.Properties;

public class SConfig {
	private static String path = "/sconfig.properties";
	private static Properties props;
	
	static{
		props = new Properties();
		try {
			props.load(SConfig.class.getResourceAsStream(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static String getProps(String key){
		return props.getProperty(key);
	}
	public static void main(String[] args) throws IOException {
		System.out.println(getProps("SALT"));

	}

}
