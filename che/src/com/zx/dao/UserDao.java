package com.zx.dao;

import com.zx.domain.User;

import java.util.List;

public interface UserDao {

	// 检查用户名是否存在
	public User checkName(String username);
	
	// 添加到数据库
	public boolean  addUser(User u);

	//查询所有数据

	public List<User> getListAll();

}
