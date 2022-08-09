package com.astore.dao.implement;

import com.astore.dao.IDeliveryDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Color;
import com.astore.model.Delivery;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DeliveryDao implements IDeliveryDao {
    @Override
    public boolean insert(Delivery delivery) {
        if(delivery != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into GIAO_HANG(id_hoa_don,dia_chi_giao_hang, ngay_giao_hang) values (?,?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, delivery.getOrderId());
                ps.setString(2, delivery.getAddress());
                ps.setString(3, delivery.getDeliveryDate());
                int row = ps.executeUpdate();
                ps.close();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return  false;
            }
        }
        return false;
    }

    @Override
    public boolean update(Delivery delivery) {
        if(delivery != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update GIAO_HANG set dia_chi_giao_hang =?, ngay_giao_hang = ?, thoi_gian_tao = ? where id = ?";


            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, delivery.getAddress());
                ps.setString(2, delivery.getDeliveryDate());
                ps.setDate(3, new Date(System.currentTimeMillis()));
                ps.setInt(4, delivery.getId());
                int row = ps.executeUpdate();
                ps.close();
                return row == 1;
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
            String sql = "delete GIAO_HANG where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int row = ps.executeUpdate();
            ps.close();
            return row == 1;

        } catch (SQLException e) {
            e.printStackTrace();
            return  false;
        }
    }

    @Override
    public Delivery getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM GIAO_HANG where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Delivery delivery = null;
            while (rs.next()) {
                delivery = new Delivery();
                setValue(rs,delivery);
            }
            rs.close();
            ps.close();
            return delivery;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Delivery getByOrderId(int orderId) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM GIAO_HANG where id_hoa_don = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            Delivery delivery = null;
            while (rs.next()) {
                delivery = new Delivery();
                setValue(rs,delivery);
            }
            rs.close();
            ps.close();
            return delivery;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public List<Delivery> getAll() {
        List<Delivery> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT top 200 * FROM GIAO_HANG order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Delivery delivery = new Delivery();
                setValue(rs, delivery);
                result.add(delivery);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    private void setValue(ResultSet rs, Delivery delivery){
        try{
            delivery.setId(rs.getInt("id"));
            delivery.setOrderId(rs.getInt("id_hoa_don"));
            delivery.setAddress(rs.getString("dia_chi_giao_hang"));
            delivery.setDeliveryDate(rs.getString("ngay_giao_hang"));
            delivery.setCreatedAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }
}
