package com.astore.connection_pool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//import com.sun.org.slf4j.internal.Logger;

public class DBConnectionCell {
	private String username;
	private String password;
	private String url;
	private long relaxTime;
	private long timeOut;
	
//	Logger logger = Logfactory.getLogger(DBConnectionCell.class);
	Connection conn;
	public Connection getDbConnection() {		
		return conn;
	}
	public long getRelaxTime() {
		return relaxTime;
	}
	public long getTimeOut() {
		return timeOut;
	}

        // Tạo mới một connection
	public DBConnectionCell(String username, String password, String url, long relaxTime) {
		super();
		this.username = username;
		this.password = password;
		this.url = url;
		this.relaxTime = relaxTime;
		try {
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(DBConnectionPoolConfig.URL, DBConnectionPoolConfig.USERNAME, DBConnectionPoolConfig.PASSWORD);
		} catch (SQLException e) {
//			logger.info(getInformation());
			e.printStackTrace();
		} 
	}
        
	public boolean isTimeOut() {
		if(System.currentTimeMillis() - relaxTime > timeOut) {
			return true;
		}
		return false;
	}
	
	public void close() throws Exception{
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean isClosed() throws Exception{
		return conn.isClosed();
	}
	
	public String getInformation() {
		String infor = "\nInfor :  Connection ( URL :"+url+" , User name : "+username+", Password : "+password+", "+conn.toString()+" )";
		return infor;
	}
        
	public void setRelaxTime(long relaxTime) {
		this.relaxTime = relaxTime;
	}
	
	
}
