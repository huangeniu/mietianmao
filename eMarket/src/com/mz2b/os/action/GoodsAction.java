package com.mz2b.os.action;

import com.mz2b.base.BaseAction;
import com.mz2b.framework.UploadUtil;
import com.mz2b.os.service.IGoodsService;
import com.mz2b.os.vo.GoodsVO;

public class GoodsAction extends BaseAction {
	private IGoodsService goodsService;
	private GoodsVO goods = new GoodsVO();
	private UploadUtil upload;
	
	public UploadUtil getUpload() {
		return upload;
	}

	public void setUpload(UploadUtil upload) {
		this.upload = upload;
	}
	
	public String addgoods(){
		return SUCCESS;
	}
	public String addgoodsprocess(){
		if(upload != null){
			goods.setImagePath(upload.upload());
		}
		goodsService.addgoodsprocess(goods);
		return SUCCESS;
	}
	
	public String deletegoods(){
		goodsService.deletegoods(goods,this.getId());
		return SUCCESS;
	}
	
	public String editgoods(){
		goods = goodsService.viewgoods(goods);
		return SUCCESS;
	}
	public String editgoodsprocess(){
		goodsService.editgoodsprocess(goods);
		return SUCCESS;
	}
	public GoodsVO getGoods() {
		return goods;
	}
	public IGoodsService getGoodsService() {
		return goodsService;
	}
	public String portalsearchgoods(){
		resultList = goodsService.portalsearchgoods(goods, pagination);
		return SUCCESS;
	}
	
	public String portalviewgoods(){
		goods = goodsService.portalviewgoods(goods);
		return SUCCESS;
	}
	
	public String searchgoods(){
		if(goods.getGname()!=null && goods.getGname().equals("") ){
			goods.setGname(null);
		}
		resultList = goodsService.searchgoods(goods, pagination);
		return SUCCESS;
	}
	
	public void setGoods(GoodsVO goods) {
		this.goods = goods;
	}
	
	public void setGoodsService(IGoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	public String viewgoods(){
		goods = goodsService.viewgoods(goods);
		return SUCCESS;
	}
}
