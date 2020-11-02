package com.zx.service.imp;

import com.zx.dao.UserDao;
import com.zx.dao.impl.UserDaoImpl;
import com.zx.domain.User;
import com.zx.service.UserService;

import java.util.List;

// 在业务层面也要 添加用户
public class UserServicImpl implements UserService{
//创建持久层   操作数据的dao对象, 从类中获取 sql查询的结果
	UserDao dao  = new UserDaoImpl();
	@Override
	public User checkName(String username) {
		return dao.checkName(username);
	}
	
	//添加用户
	@Override
	public boolean addUser(User u) {
		return dao.addUser(u);
	}

	@Override
	public List<User> getListAll(){
		UserDao userDao = new UserDaoImpl();
		List list = userDao.getListAll();
		return list;
	}


}
