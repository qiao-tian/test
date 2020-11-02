package com.zx.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.zx.dao.UserDao;
import com.zx.domain.User;
import com.zx.utils.DruidUtils;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class UserDaoImpl implements UserDao{

	// dbutils工具类中的  核心类
	QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());

	@Override
	public User checkName(String username) {
		// sql语句的执行
		String sql = "select * from tb_user where username=?";
		try {
			User user = runner.query(sql, new BeanHandler<>(User.class),username);
			//select * from tb_user where username=username
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public boolean addUser(User u) {// 
		String sql = "insert into tb_user(username,password,email,flag,role)values(?,?,?,?,?)";
		try {
			// flag 代表标志 0 未激活   1 激活   2 失效
			// role 0管理员   1 会员
			int res =runner.update(sql, u.getUsername(),u.getPassword(),u.getEmail(),1,1);
			// res 真正插入了几条
			if(res>0){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public List<User> getListAll() {
		List<User> list=new ArrayList<User>();//创建list集合，用于保持User对象
		try {

			String sql="select * from tb_user";

			list = runner.query(sql,new BeanListHandler<>(User.class));

			return list;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return list;
	}


}
