package com.zx.utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

public class DruidUtils {
	private static DruidDataSource dds;
	//线程变量集合
	private static ThreadLocal<Connection> threadLocal; //value Connection  相当于map集合 key 线程id， value 
	
	static {
		threadLocal=new ThreadLocal<Connection>();
		//读取配置配置
		InputStream is=DruidUtils.class.getClassLoader().getResourceAsStream("database.properties");
		Properties properties=new Properties();
		
		try {
			properties.load(is);
			dds=(DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static DataSource getDataSource() {
		return dds;
	}
	
	public static Connection getConnection() throws SQLException {
		
		Connection connection=threadLocal.get();
		if(connection==null) {//第一访问肯定没有connection
			connection=dds.getConnection();
			threadLocal.set(connection);//放入集合
		}
		return connection;
	}
	/**
	 * 开启事务
	 * @throws SQLException
	 */
	public static void beginTranscation() throws SQLException {
	
		Connection connection=getConnection();
		connection.setAutoCommit(false);
		
	}
	/**
	 * 提交事务
	 * @throws SQLException
	 */
	public static void commitTranscation()  {
		Connection connection;
		try {
			connection = getConnection();
			connection.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 回滚事务
	 * @throws SQLException
	 */
	public static void rollbackTranscation() {
		Connection connection;
		try {
			connection = getConnection();
			connection.rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 关闭
	 * @param connection
	 * @throws SQLException
	 */
	public static void close() {
		try {
			Connection connection=getConnection();
			connection.close();
			//从ThreadLocal移除
			threadLocal.remove();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
