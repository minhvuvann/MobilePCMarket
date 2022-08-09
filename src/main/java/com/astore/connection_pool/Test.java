package com.astore.connection_pool;

import java.sql.SQLException;

public class Test {
	public static void main(String[] args) {
		BaseConnectionPool cell = BaseConnectionPool.getInstace();		
		try {
			System.out.println(cell.getConnection().conn.getAutoCommit());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
