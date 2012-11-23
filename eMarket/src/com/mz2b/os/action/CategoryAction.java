package com.mz2b.os.action;

import com.mz2b.base.BaseAction;
import com.mz2b.os.service.ICategoryService;
import com.mz2b.os.vo.CategoryVO;

public class CategoryAction extends BaseAction {
	private ICategoryService categoryService;
	private CategoryVO category = new CategoryVO();
	
	public String addcategory(){
		return SUCCESS;
	}
	public String addcategoryprocess(){
		categoryService.addcategoryprocess(category);
		return SUCCESS;
	}
	
	public String deletecategory(){
		categoryService.deletecategory(category);
		return SUCCESS;
	}
	
	public String editcategory(){
		category = categoryService.viewcategory(category);
		return SUCCESS;
	}
	public String editcategoryprocess(){
		categoryService.editcategoryprocess(category);
		return SUCCESS;
	}
	public CategoryVO getCategory() {
		return category;
	}
	public ICategoryService getCategoryService() {
		return categoryService;
	}

	public String portalsearchcategory(){
		resultList = categoryService.portalsearchcategory(category, pagination);
		return SUCCESS;
	}
	
	public String portalviewcategory(){
		category = categoryService.portalviewcategory(category);
		return SUCCESS;
	}
	
	public String searchcategory(){
		resultList = categoryService.searchcategory(category, pagination);
		return SUCCESS;
	}
	
	public void setCategory(CategoryVO category) {
		this.category = category;
	}
	
	public void setCategoryService(ICategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	public String viewcategory(){
		category = categoryService.viewcategory(category);
		return SUCCESS;
	}
}
