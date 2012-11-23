package com.mz2b.os.action;

import com.mz2b.base.BaseAction;
import com.mz2b.os.service.IUserInfoService;
import com.mz2b.os.vo.UserInfoVO;

public class UserInfoAction extends BaseAction {
	private IUserInfoService userInfoService;
	private UserInfoVO userInfo;
	
	public String adduserinfo(){
		return SUCCESS;
	}
	public String adduserinfoprocess(){
		userInfoService.adduserinfoprocess(userInfo);
		return SUCCESS;
	}
	public String deleteuserinfo(){
		userInfoService.deleteuserinfo(userInfo);
		return SUCCESS;
	}
	public String edituserinfo(){
		userInfo = userInfoService.viewuserinfo(userInfo);
		return SUCCESS;
	}
	
	public String edituserinfoprocess(){
		userInfoService.edituserinfoprocess(userInfo);
		return SUCCESS;
	}
	
	public UserInfoVO getUserInfo() {
		return userInfo;
	}
	
	public IUserInfoService getUserInfoService() {
		return userInfoService;
	}
	
	public String portalsearchuserinfo(){
		resultList = userInfoService.portalsearchuserinfo(userInfo, pagination);
		return SUCCESS;
	}
	
	public String portalviewuserinfo(){
		userInfo = userInfoService.portalviewuserinfo(userInfo);
		return SUCCESS;
	}
	
	public String searchuserinfo(){
		resultList = userInfoService.searchuserinfo(userInfo, pagination);
		return SUCCESS;
	}
	
	public void setUserInfo(UserInfoVO userInfo) {
		this.userInfo = userInfo;
	}
	
	public void setUserInfoService(IUserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	
	public String viewuserinfo(){
		userInfo = userInfoService.viewuserinfo(userInfo);
		return SUCCESS;
	}
}
