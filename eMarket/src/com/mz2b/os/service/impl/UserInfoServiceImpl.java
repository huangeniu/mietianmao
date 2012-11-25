package com.mz2b.os.service.impl;

import java.util.List;
import java.util.Map;

import com.mz2b.framework.Pagination;
import com.mz2b.os.dao.UserInfoDAO;
import com.mz2b.os.service.IUserInfoService;
import com.mz2b.os.vo.UserInfoVO;

public class UserInfoServiceImpl implements IUserInfoService {
	private UserInfoDAO userInfoDAO;
	
	public UserInfoDAO getUserInfoDAO() {
		return userInfoDAO;
	}

	public void setUserInfoDAO(UserInfoDAO userInfoDAO) {
		this.userInfoDAO = userInfoDAO;
	}

	@Override
	public void adduserinfoprocess(UserInfoVO userInfo) {
		userInfoDAO.save(userInfo);
	}

	@Override
	public void deleteuserinfo(UserInfoVO userInfo) {
		userInfoDAO.delete(userInfo);
	}

	@Override
	public void edituserinfoprocess(UserInfoVO userInfo) {
		userInfoDAO.eidt(userInfo);
	}

	@Override
	public List portalsearchuserinfo(UserInfoVO userInfo, Pagination p) {
		return userInfoDAO.portalQuery4List(userInfo, p);
	}

	@Override
	public UserInfoVO portalviewuserinfo(UserInfoVO userInfo) {
		return (UserInfoVO) userInfoDAO.portalview(userInfo);
	}

	@Override
	public List searchuserinfo(UserInfoVO userInfo, Pagination p) {
		return userInfoDAO.queryForList(userInfo,p);
	}

	@Override
	public UserInfoVO viewuserinfo(UserInfoVO userInfo) {
		return (UserInfoVO) userInfoDAO.view(userInfo);
	}

	@Override
	public int deleteuserinfo(String id) {
		return userInfoDAO.delete(UserInfoVO.class, id);
	}

	@Override
	public int edituserinfoprocess(Map<String, Object> map) {
		return userInfoDAO.update(UserInfoVO.class, map);
	}
	
}
