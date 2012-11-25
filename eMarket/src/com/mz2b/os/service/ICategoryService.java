package com.mz2b.os.service;

import java.util.List;
import java.util.Map;

import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.CategoryVO;

public interface ICategoryService {

	void addcategoryprocess(CategoryVO category);
	
	void deletecategory(CategoryVO category);
	
	int deletecategory(String id);
	
	CategoryVO viewcategory(CategoryVO category);
	
	void editcategoryprocess(CategoryVO category);
	
	int editcategoryprocess(Map<String,Object> map);
	
	List searchcategory(CategoryVO category , Pagination p);
	
	List portalsearchcategory(CategoryVO category , Pagination p);
	
	CategoryVO portalviewcategory(CategoryVO category);
}