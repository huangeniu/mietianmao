package com.mz2b.os.service.impl;

import java.util.List;
import java.util.Map;

import com.mz2b.framework.Pagination;
import com.mz2b.os.dao.GoodsDAO;
import com.mz2b.os.service.IGoodsService;
import com.mz2b.os.vo.GoodsVO;

public class GoodsServiceImpl implements IGoodsService {

	private GoodsDAO goodsDAO;
	
	public GoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	@Override
	public void addgoodsprocess(GoodsVO goods) {
		goodsDAO.save(goods);
	}

	@Override
	public void deletegoods(GoodsVO goods,String ids) {
		goodsDAO.delete(goods.getClass(),ids);
	}

	@Override
	public void editgoodsprocess(GoodsVO goods) {
		goodsDAO.eidt(goods);
	}

	@Override
	public List portalsearchgoods(GoodsVO goods, Pagination p) {
		return goodsDAO.portalQuery4List(goods, p);
	}

	@Override
	public GoodsVO portalviewgoods(GoodsVO goods) {
		return (GoodsVO) goodsDAO.portalview(goods);
	}

	@Override
	public List searchgoods(GoodsVO goods, Pagination p) {
		return goodsDAO.queryForList(goods,p);
	}

	@Override
	public GoodsVO viewgoods(GoodsVO goods) {
		return (GoodsVO) goodsDAO.view(goods);
	}

	@Override
	public int deletegoods(String id) {
		return goodsDAO.delete(GoodsVO.class, id);
	}

	@Override
	public int editgoodsprocess(Map<String, Object> map) {
		return goodsDAO.update(GoodsVO.class, map);
	}
}
