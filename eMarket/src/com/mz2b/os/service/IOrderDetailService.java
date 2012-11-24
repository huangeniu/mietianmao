package com.mz2b.os.service;

import java.util.List;

import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.OrderDetailVO;

public interface IOrderDetailService {
	
	void addorderdetailprocess(OrderDetailVO orderDetail);
	
	void deleteorderdetail(OrderDetailVO orderDetail);
	
	int deleteorderdetail(String id);
	
	OrderDetailVO vieworderdetail(OrderDetailVO orderDetail);
	
	void editorderdetailprocess(OrderDetailVO orderDetail);
	
	List searchorderdetail(OrderDetailVO orderDetail , Pagination p);
	
	List portalsearchorderdetail(OrderDetailVO orderDetail , Pagination p);
	
	OrderDetailVO portalvieworderdetail(OrderDetailVO orderDetail);
}
