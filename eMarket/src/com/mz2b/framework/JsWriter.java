package com.mz2b.framework;

import java.io.*;

import org.apache.struts2.ServletActionContext;

/**
 * @descript building javascript files, sington
 * @author Teny Zh
 * @date 2012-12-24
 * @version V0.10
 */
public class JsWriter {
	private static String path = null;
	static{
		path = SConfig.getProps("jsPath");
		path = ServletActionContext.getServletContext().getRealPath(path);
	}
	
	private JsWriter(){}
	
	public static void jsBuilder(String fileName, String content){
		Writer writer = null;
		try {
			writer = new FileWriter(new File(path,fileName));
			writer.write(content);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(writer != null)
			try {
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
