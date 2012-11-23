package com.mz2b.os.vo;

import java.sql.Timestamp;

import javax.persistence.*;

import com.mz2b.base.BaseBean;

@Entity
@Table(name="tbl_user")
public class UserVO extends BaseBean {
//	private int id;
	private String uname;
	private String password;
	private String imagePath;
	private Timestamp date;
	
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
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
}
