package com.mz2b.os.service.impl;

import java.util.List;

import com.mz2b.framework.Pagination;
import com.mz2b.os.dao.OrderDetailDAO;
import com.mz2b.os.service.IOrderDetailService;
import com.mz2b.os.vo.OrderDetailVO;

public class OrderDetailServiceImpl implements IOrderDetailService {
	private OrderDetailDAO orderDetailDAO;
	
	public OrderDetailDAO getOrderDetailDAO() {
		return orderDetailDAO;
	}

	public void setOrderDetailDAO(OrderDetailDAO orderDetailDAO) {
		this.orderDetailDAO = orderDetailDAO;
	}

	@Override
	public void addorderdetailprocess(OrderDetailVO orderDetail) {
		orderDetailDAO.save(orderDetail);
	}

	@Override
	public void deleteorderdetail(OrderDetailVO orderDetail) {
		orderDetailDAO.delete(orderDetail);
	}

	@Override
	public void editorderdetailprocess(OrderDetailVO orderDetail) {
		orderDetailDAO.eidt(orderDetail);
	}

	@Override
	public List portalsearchorderdetail(OrderDetailVO orderDetail, Pagination p) {
		return orderDetailDAO.portalQuery4List(orderDetail, p);
	}

	@Override
	public OrderDetailVO portalvieworderdetail(OrderDetailVO orderDetail) {
		return (OrderDetailVO) orderDetailDAO.portalview(orderDetail);
	}

	@Override
	public List searchorderdetail(OrderDetailVO orderDetail, Pagination p) {
		return orderDetailDAO.queryForList(orderDetail,p);
	}

	@Override
	public OrderDetailVO vieworderdetail(OrderDetailVO orderDetail) {
		return (OrderDetailVO) orderDetailDAO.view(orderDetail);
	}

	@Override
	public int deleteorderdetail(String id) {
		return orderDetailDAO.delete(OrderDetailVO.class, id);
	}

}
