package com.mz2b.os.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.mz2b.base.BaseBean;

@Entity
@Table(name="tbl_category")
public class CategoryVO extends BaseBean {
	private int id;
	private String cname;
	private String parentId;
	private String ParentName;
	private String displayLevel;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getParentName() {
		return ParentName;
	}
	public void setParentName(String parentName) {
		ParentName = parentName;
	}
	public String getDisplayLevel() {
		return displayLevel;
	}
	public void setDisplayLevel(String displayLevel) {
		this.displayLevel = displayLevel;
	}

}
