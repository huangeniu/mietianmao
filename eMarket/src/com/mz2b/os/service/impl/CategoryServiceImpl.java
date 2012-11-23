package com.mz2b.os.service.impl;

import java.util.List;

import com.mz2b.framework.Pagination;
import com.mz2b.os.dao.CategoryDAO;
import com.mz2b.os.service.ICategoryService;
import com.mz2b.os.vo.CategoryVO;

public class CategoryServiceImpl implements ICategoryService {

	private CategoryDAO categoryDAO;
	
	public CategoryDAO getCategoryDAO() {
		return categoryDAO;
	}

	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}

	@Override
	public void addcategoryprocess(CategoryVO category) {
		categoryDAO.save(category);
	}

	@Override
	public void deletecategory(CategoryVO category) {
		categoryDAO.delete(category);
	}

	@Override
	public void editcategoryprocess(CategoryVO category) {
		categoryDAO.eidt(category);
	}

	@Override
	public List portalsearchcategory(CategoryVO category, Pagination p) {
		return categoryDAO.portalQuery4List(category, p);
	}

	@Override
	public CategoryVO portalviewcategory(CategoryVO category) {
		return (CategoryVO) categoryDAO.portalview(category);
	}

	@Override
	public List searchcategory(CategoryVO category, Pagination p) {
		return categoryDAO.queryForList(category,p);
	}

	@Override
	public CategoryVO viewcategory(CategoryVO category) {
		return (CategoryVO) categoryDAO.view(category);
	}
}
