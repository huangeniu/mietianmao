package com.mz2b.os.service;

import java.util.List;

import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.UserInfoVO;

public interface IUserInfoService {
	
	void adduserinfoprocess(UserInfoVO userInfo);
	
	void deleteuserinfo(UserInfoVO userInfo);
	
	UserInfoVO viewuserinfo(UserInfoVO userInfo);
	
	void edituserinfoprocess(UserInfoVO userInfo);
	
	List searchuserinfo(UserInfoVO userInfo , Pagination p);
	
	List portalsearchuserinfo(UserInfoVO userInfo , Pagination p);
	
	UserInfoVO portalviewuserinfo(UserInfoVO userInfo);
}
