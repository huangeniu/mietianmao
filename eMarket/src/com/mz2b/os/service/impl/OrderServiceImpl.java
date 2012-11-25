package com.mz2b.os.service.impl;

import java.util.List;
import java.util.Map;

import com.mz2b.framework.Pagination;
import com.mz2b.os.dao.OrderDAO;
import com.mz2b.os.service.IOrderService;
import com.mz2b.os.vo.OrderVO;

public class OrderServiceImpl implements IOrderService{
	private OrderDAO orderDAO;
	
	public OrderDAO getOrderDAO() {
		return orderDAO;
	}

	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	@Override
	public void addorderprocess(OrderVO order) {
		orderDAO.save(order);
	}

	@Override
	public void deleteorder(OrderVO order) {
		orderDAO.delete(order);
	}

	@Override
	public void editorderprocess(OrderVO order) {
		orderDAO.eidt(order);
	}

	@Override
	public List portalsearchorder(OrderVO order, Pagination p) {
		return orderDAO.portalQuery4List(order, p);
	}

	@Override
	public OrderVO portalvieworder(OrderVO order) {
		return (OrderVO) orderDAO.portalview(order);
	}

	@Override
	public List searchorder(OrderVO order, Pagination p) {
		return orderDAO.queryForList(order,p);
	}

	@Override
	public OrderVO vieworder(OrderVO order) {
		return (OrderVO) orderDAO.view(order);
	}

	@Override
	public int deleteorder(String id) {
		return orderDAO.delete(OrderVO.class, id);
	}

	@Override
	public int editorderprocess(Map<String, Object> map) {
		return orderDAO.update(OrderVO.class, map);
	}
}
