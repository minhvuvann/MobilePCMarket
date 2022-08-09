package com.astore.jdbc;

import com.astore.dao.implement.ColorDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectDB {
    //    private String username = "sa";
//    private String password = "123";
    private static String admin = "sa";
    private static String pwdAdmin = "Goboi123";
    private static String nameDB = "DBSTORE_2";
    private static String localhost = "10052";
    private static Connection conn;


    public static Connection getInstance() {
        try {
            if ((conn == null) || conn.isClosed()) {
                try {
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    conn = DriverManager.getConnection("jdbc:sqlserver://103.125.170.20:" + localhost + ";databaseName=" + nameDB + ";user=" + admin + ";password=" + pwdAdmin + ";useUnicode=true;characterEncoding=UTF-8");
                    System.out.println("Kết nối thành công!");
                } catch (SQLException | ClassNotFoundException e) {
                    System.out.println("Kết nối thất bại!" + e.getMessage());
                }

                return conn;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    public static void main(String[] args) {
        Connection cnn = ConnectDB.getInstance();


//		Color cc = c.getById(1);
//
//		System.out.println(cc.getName());
    }


}
