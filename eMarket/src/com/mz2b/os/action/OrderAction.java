package com.mz2b.os.action;

import com.mz2b.base.BaseAction;
import com.mz2b.os.service.IOrderService;
import com.mz2b.os.vo.OrderVO;

public class OrderAction extends BaseAction {
	private IOrderService orderService;
	private OrderVO order;
	
	public String addorder(){
		return SUCCESS;
	}
	public String addorderprocess(){
		orderService.addorderprocess(order);
		return SUCCESS;
	}
	
	public String deleteorder(){
		orderService.deleteorder(order);
		return SUCCESS;
	}
	
	public String editorder(){
		order = orderService.vieworder(order);
		return SUCCESS;
	}
	public String editorderprocess(){
		orderService.editorderprocess(order);
		return SUCCESS;
	}
	public OrderVO getUserInfo() {
		return order;
	}
	public IOrderService getUserInfoService() {
		return orderService;
	}
	
	public String portalsearchorder(){
		resultList = orderService.portalsearchorder(order, pagination);
		return SUCCESS;
	}
	
	public String portalvieworder(){
		order = orderService.portalvieworder(order);
		return SUCCESS;
	}
	
	public String searchorder(){
		resultList = orderService.searchorder(order, pagination);
		return SUCCESS;
	}
	public IOrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(IOrderService orderService) {
		this.orderService = orderService;
	}
	public OrderVO getOrder() {
		return order;
	}
	public void setOrder(OrderVO order) {
		this.order = order;
	}

}
