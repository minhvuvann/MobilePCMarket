package com.astore.dao.implement;

import com.astore.dao.ISaleDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Sale;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SaleDao implements ISaleDao {
    @Override
    public boolean insert(Sale sale) {
        return false;
    }

    @Override
    public boolean update(Sale sale) {
        if(sale != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update GIAM_GIA  " +
                    "set giam_gia = ? , "+
                    "thoi_gian_tao = ? ,"+
                    "where id = ?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setDouble(1, sale.getProductId());
                ps.setDate(2, new Date(System.currentTimeMillis()));
                ps.setInt(3, sale.getProductId());
                int row = ps.executeUpdate();
                return row == 0 ? false : true;
            } catch (SQLException e) {
                e.printStackTrace();
                return  false;
            }
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "delete GIAM_GIA where id_san_pham = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int row = ps.executeUpdate();
            return row == 0 ? false : true;

        } catch (SQLException e) {
            e.printStackTrace();
            return  false;
        }
    }

    @Override
    public Sale getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM GIAM_GIA where id_san_pham = " +id;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Sale sale = new Sale();
                sale.setProductId(rs.getInt("id_san_pham"));
                sale.setSaleRate(rs.getDouble("giam_gia"));
                sale.setCreatedAt(rs.getString("thoi_gian_tao"));
                return sale;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Sale> getByName(String name) {
        List<Sale> result = new ArrayList<>();

        return result;
    }

    @Override
    public List<Sale> getAll() {
        List<Sale> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM GIAM_GIA";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Sale sale = new Sale();
                sale.setProductId(rs.getInt("id_san_pham"));
                sale.setSaleRate(rs.getDouble("giam_gia"));
                sale.setCreatedAt(rs.getString("thoi_gian_tao"));
                return result;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
