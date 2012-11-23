package com.mz2b.os.action;

import com.mz2b.base.BaseAction;
import com.mz2b.os.service.IOrderDetailService;
import com.mz2b.os.vo.OrderDetailVO;

public class OrderDetailAction extends BaseAction {
	private IOrderDetailService orderDetailService;
	private OrderDetailVO orderDetail;
	
	public String addorderdetail(){
		return SUCCESS;
	}
	public String addorderdetailprocess(){
		orderDetailService.addorderdetailprocess(orderDetail);
		return SUCCESS;
	}
	
	public String deleteorderdetail(){
		orderDetailService.deleteorderdetail(orderDetail);
		return SUCCESS;
	}
	
	public String editorderdetail(){
		orderDetail = orderDetailService.vieworderdetail(orderDetail);
		return SUCCESS;
	}
	public String editorderdetailprocess(){
		orderDetailService.editorderdetailprocess(orderDetail);
		return SUCCESS;
	}
	public OrderDetailVO getUserInfo() {
		return orderDetail;
	}
	public IOrderDetailService getOrderDetailService() {
		return orderDetailService;
	}
	public void setOrderDetailService(IOrderDetailService orderDetailService) {
		this.orderDetailService = orderDetailService;
	}
	public OrderDetailVO getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(OrderDetailVO orderDetail) {
		this.orderDetail = orderDetail;
	}
	public IOrderDetailService getUserInfoService() {
		return orderDetailService;
	}
	public String portalsearchorderdetail(){
		resultList = orderDetailService.portalsearchorderdetail(orderDetail, pagination);
		return SUCCESS;
	}
	
	public String portalvieworderdetail(){
		orderDetail = orderDetailService.portalvieworderdetail(orderDetail);
		return SUCCESS;
	}
	
	public String searchorderdetail(){
		resultList = orderDetailService.searchorderdetail(orderDetail, pagination);
		return SUCCESS;
	}
	public String vieworderdetail(){
		orderDetail = orderDetailService.vieworderdetail(orderDetail);
		return SUCCESS;
	}
	
}
