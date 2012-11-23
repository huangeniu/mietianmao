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

public class Upload {
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private String fileType;
	
	public String getFileType() {
		return uploadFileName.substring(uploadFileName.lastIndexOf('.'));
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	
	public String upload(){
		
		String fileName = (new java.sql.Timestamp(new Date().getTime())).toString();
		fileName = ServletActionContext.getRequest().getRealPath("\\temp") + "\\" +
			fileName.replaceAll("[^0-9]", "") + this.getFileType();
		try {
			InputStream in = new FileInputStream(upload);
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
