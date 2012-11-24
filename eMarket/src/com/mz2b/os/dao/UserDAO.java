package com.mz2b.os.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.transaction.annotation.Transactional;

import com.mz2b.base.BaseBean;
import com.mz2b.base.BaseDAO;
import com.mz2b.framework.Pagination;
import com.mz2b.os.vo.UserInfoVO;
import com.mz2b.os.vo.UserVO;

public class UserDAO extends BaseDAO {
	
	public UserVO vaild(UserVO user){
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from UserVO c where c.uname=\'" + user.getUname() + "\' and c.password=\'" + user.getPassword() + "\'");

		if(q.list().isEmpty())
			user = null;
		else 
			user = (UserVO) q.list().get(0);
		return user;
	}
	
}
