package com.mz2b.os.vo;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.mz2b.base.BaseBean;

@Entity
@Table(name="tbl_goods")
public class GoodsVO extends BaseBean {
//	private int id;
	private String gname;
	private String summary;
	private String imagePath;
	private int stock;
	private int readNum;
	private String recommend;
	private float sprice;
	private float dprice;
	private Timestamp date;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	
	public String getImagePath() {
		return imagePath;
	}
	public int getReadNum() {
		return readNum;
	}
	public String getRecommend() {
		return recommend;
	}
	public float getSprice() {
		return sprice;
	}
	public int getStock() {
		return stock;
	}
	public String getSummary() {
		return summary;
	}
	public Timestamp getDate() {
		return date;
	}
	public float getDprice() {
		return dprice;
	}
	public String getGname() {
		return gname;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public void setDprice(float dprice) {
		this.dprice = dprice;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	public void setSprice(float sprice) {
		this.sprice = sprice;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}

}
