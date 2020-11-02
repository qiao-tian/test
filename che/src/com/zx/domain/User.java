package com.zx.domain;
/*
 * 数据库中的每一个表都会对应一个实体类
 * 
 * 
 */
public class User {

	private int id;
	private String username;
	private String password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String email;
	private int flag; // 激活状态
	private int role; // 角色

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public User() {
		super();
	}
	
	public User(String username, String password,String email,  int flag, int role) {
		super();
		this.username = username;
		this.password = password;
		this.email=email;
		this.flag = flag;
		this.role = role;
	}



	
	
	
}
