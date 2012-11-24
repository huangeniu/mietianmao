package com.mz2b.os.service;

import java.util.List;

import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.UserInfoVO;
import com.mz2b.os.vo.UserVO;

public interface IUserService {
	void adduserprocess(UserVO user);
	
	void deleteuser(UserVO user);
	
	int deleteuser(String id);
	
	UserVO viewuser(UserVO user);
	
	void edituserprocess(UserVO user);
	
	List searchuser(UserVO user , Pagination p);
	
	List portalsearchuser(UserVO user , Pagination p);
	
	UserVO portalviewuser(UserVO user);
	
	UserVO vaild(UserVO user);
	
	void register(UserVO user, UserInfoVO userInfo);
}
