package com.mz2b.os.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.*;
import javax.persistence.Table;

import com.mz2b.base.BaseBean;

@Entity
@Table(name="tbl_user")
public class UserVO extends BaseBean {
	private int id;
	private String uname;
	private String password;
	private String imagePath;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public String getImagePath() {
		return imagePath;
	}
	public String getUname() {
		return uname;
	}
	public String getPassword() {
		return password;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
