package com.mz2b.os.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.mz2b.base.BaseBean;

@Entity
@Table(name="tbl_goods")
public class GoodsVO extends BaseBean {
	private int id;
	private String gname;
	private String summary;
	private String imagePath;
	private int stock;
	private float sprice;
	private float dprice;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public float getSprice() {
		return sprice;
	}
	public void setSprice(float sprice) {
		this.sprice = sprice;
	}
	public float getDprice() {
		return dprice;
	}
	public void setDprice(float dprice) {
		this.dprice = dprice;
	}

}
