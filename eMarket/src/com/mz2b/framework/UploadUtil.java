package com.mz2b.framework;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

public class UploadUtil {
	private File file;
	private String fileContentType;
	private String fileFileName;
	
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	
	public String upload(){
		
		String fileName = (new java.sql.Timestamp(new Date().getTime())).toString();
		fileName = ServletActionContext.getRequest().getRealPath("\\temp") + "\\" +
			fileName.replaceAll("[^0-9]", "") + ".txt";
		try {
			InputStream in = new FileInputStream(file);
			OutputStream os = new FileOutputStream(new File(fileName));
			byte[] b = new byte[20480];
			int off = 0 , len = 20480;
			while(in.read(b, off, len) > 0){
				os.write(b, off, len);
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			fileName = "fail";
		} catch (IOException e){
			e.printStackTrace();
			fileName = "fail";
		}finally{
			return fileName;
		}
	}
}
