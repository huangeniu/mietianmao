package com.mz2b.os.service;

import java.util.List;
import java.util.Map;

import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.UserInfoVO;

public interface IUserInfoService {
	
	void adduserinfoprocess(UserInfoVO userInfo);
	
	void deleteuserinfo(UserInfoVO userInfo);
	
	int deleteuserinfo(String id);
	
	UserInfoVO viewuserinfo(UserInfoVO userInfo);
	
	void edituserinfoprocess(UserInfoVO userInfo);
	
	int edituserinfoprocess(Map<String,Object> map);
	
	List searchuserinfo(UserInfoVO userInfo , Pagination p);
	
	List portalsearchuserinfo(UserInfoVO userInfo , Pagination p);
	
	UserInfoVO portalviewuserinfo(UserInfoVO userInfo);
}
