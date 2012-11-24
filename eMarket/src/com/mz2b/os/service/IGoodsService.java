package com.mz2b.os.service;

import java.util.List;

import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.GoodsVO;

public interface IGoodsService {

	void addgoodsprocess(GoodsVO goods);
	
	void deletegoods(GoodsVO goods);
	
	int deletegoods(String id);
	
	GoodsVO viewgoods(GoodsVO goods);
	
	void editgoodsprocess(GoodsVO goods);
	
	List searchgoods(GoodsVO goods , Pagination p);
	
	List portalsearchgoods(GoodsVO goods , Pagination p);
	
	GoodsVO portalviewgoods(GoodsVO goods);
}