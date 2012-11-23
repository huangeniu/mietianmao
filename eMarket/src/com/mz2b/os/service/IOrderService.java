package com.mz2b.os.service;

import java.util.List;

import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.OrderVO;

public interface IOrderService {

	void addorderprocess(OrderVO order);
	
	void deleteorder(OrderVO order);
	
	OrderVO vieworder(OrderVO order);
	
	void editorderprocess(OrderVO order);
	
	List searchorder(OrderVO order , Pagination p);
	
	List portalsearchorder(OrderVO order , Pagination p);
	
	OrderVO portalvieworder(OrderVO order);
}
