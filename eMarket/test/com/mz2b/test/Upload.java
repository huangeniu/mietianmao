package com.mz2b.test;

import java.io.File;

import com.mz2b.base.BaseAction;
import com.mz2b.framework.UploadUtil;

public class Upload extends BaseAction {
	private UploadUtil upload;
	
	public UploadUtil getUpload() {
		return upload;
	}

	public void setUpload(UploadUtil upload) {
		this.upload = upload;
	}

	public String execute(){
//		System.out.println(f.getName());
		upload.upload();
		return SUCCESS;
	}
}
