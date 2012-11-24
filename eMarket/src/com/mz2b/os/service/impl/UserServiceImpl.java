package com.mz2b.os.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.mz2b.framework.Pagination;
import com.mz2b.os.dao.UserDAO;
import com.mz2b.os.dao.UserInfoDAO;
import com.mz2b.os.service.IUserService;
import com.mz2b.os.vo.UserInfoVO;
import com.mz2b.os.vo.UserVO;
@Transactional
public class UserServiceImpl implements IUserService{
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public void adduserprocess(UserVO user) {
		userDAO.save(user);
	}

	@Override
	public void deleteuser(UserVO user) {
		userDAO.delete(user);
	}

	@Override
	public void edituserprocess(UserVO user) {
		userDAO.eidt(user);
	}

	@Override
	public List portalsearchuser(UserVO user , Pagination p) {
		List list = userDAO.portalQuery4List(user, p);
		if(null == list || list.isEmpty())
			return null;
		return list; 
	}

	@Override
	public UserVO portalviewuser(UserVO user) {
		return (UserVO) userDAO.view(user);
	}

	@Override
	public UserVO vaild(UserVO user) {
		return userDAO.vaild(user);
	}

	@Override
	public List searchuser(UserVO user , Pagination p) {
		List list = userDAO.queryForList(user, p);
		if(null == list || list.isEmpty())
			return null;
		return list; 
	}

	@Override
	public UserVO viewuser(UserVO user) {
		return (UserVO) userDAO.view(user);
	}

	@Override
	public void register(UserVO user, UserInfoVO userInfo) {
		userDAO.save(user);
		userDAO.save(userInfo);
	}

	@Override
	public int deleteuser(String id) {
		return userDAO.delete(UserVO.class, id);
	}
	
}
