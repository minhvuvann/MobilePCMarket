package com.astore.connection_pool;
public class DBConnectionPoolConfig {
	private static final String SERVER_NAME = "localhost"; 
	public static final int MAX_POOL_SIZE = 20;
	public static final int MIN_POOL_SIZE = 5;
	public static final int INIT_POOL_SIZE = 10;
	public static final String DB_PORT = "1433";
	public static final String USERNAME = "sa";
	public static final String PASSWORD = "123456789";
	public static final String DATABASE_NAME = "DBSTORE_2";
//	public static final String URL =  "jdbc:sqlserver://localhost:"+DB_PORT+ + SERVER_NAME + ";" + DB_PORT + ":" + SID;
	public static final String URL = "jdbc:sqlserver://localhost:1433;databaseName="+DATABASE_NAME+";user="+USERNAME+";password="+PASSWORD
			+ ";useUnicode=true;characterEncoding=UTF-8";
	public static final long TIME_OUT = 200;
	
}
