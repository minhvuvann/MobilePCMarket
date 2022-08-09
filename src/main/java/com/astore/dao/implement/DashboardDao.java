package com.astore.dao.implement;

import com.astore.dao.IDashboardDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Analysis;
import com.astore.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

public class DashboardDao implements IDashboardDao {
    @Override
    public Analysis analysisOrderByMonth(int month) {
        Analysis result = new Analysis();

        Connection conn = ConnectDB.getInstance();
        String sql = "select count(*) as sl, sum(HOA_DON.tri_gia) as doanh_thu from HOA_DON where datediff(MONTH, ngay_lap_hoa_don, GETDATE()) = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, month);
            rs = ps.executeQuery();

            while (rs.next()) {
                if(rs.getInt("sl") == 0) break;
                result.setAmountOrder(rs.getInt("sl"));
                result.setSales(rs.getDouble("doanh_thu"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Map<Category, Integer> analysisCategoryByMonth() {
        return null;
    }
}
