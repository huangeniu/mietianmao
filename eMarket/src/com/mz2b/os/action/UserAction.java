package com.mz2b.os.action;

import com.mz2b.base.BaseAction;
import com.mz2b.os.service.IUserService;
import com.mz2b.os.vo.UserVO;

public class UserAction extends BaseAction {
	private IUserService userService;
	private UserVO user = new UserVO();
	
	public String adduser(){
		return SUCCESS;
	}
	public String adduserprocess(){
		userService.adduserprocess(user);
		return SUCCESS;
	}
	public String deleteuser(){
		userService.deleteuser(user);
		return SUCCESS;
	}
	public String edituser(){
		user = userService.viewuser(user);
		return SUCCESS;
	}
	public String edituserprocess(){
		userService.edituserprocess(user);
		return SUCCESS;
	}
	public UserVO getUser() {
		return user;
	}
	
	public IUserService getUserService() {
		return userService;
	}
	
	public String portalsearchuser(){
		resultList = userService.portalsearchuser(user, pagination);
		return SUCCESS;
	}
	
	public String portalviewuser(){
		user = userService.portalviewuser(user);
		return SUCCESS;
	}
	
	public String searchuser(){
		resultList = userService.searchuser(user, pagination);
		return SUCCESS;
	}
	
	public void setUser(UserVO user) {
		this.user = user;
	}
	
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	public String viewuser(){
		user = userService.viewuser(user);
		return SUCCESS;
	}
}
