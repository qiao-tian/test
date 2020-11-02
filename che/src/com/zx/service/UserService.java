package com.zx.service;

import com.zx.domain.User;

import java.util.List;

public interface UserService {
	
	// 检查用户名是否被用过    业务 需求
	public User checkName(String username);
	
	// 添加到数据库
	public boolean  addUser(User u);

	//查询所以数据
	public List<User> getListAll();

}
