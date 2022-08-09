package com.astore.dao.implement;

import com.astore.dao.IOrderDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDao implements IOrderDao {
    @Override
    public boolean insert(Order order) {
        if(order!= null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into HOA_DON( ngay_lap_hoa_don,id_khach_hang,ten_nguoi_dung,tri_gia) values (?,?,?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1,order.getDateAtOrder());
                ps.setInt(2, order.getIdUser());
                ps.setString(3,order.getNameUser());
                ps.setDouble(4, order.getPriceOrder());

                int row = ps.executeUpdate();
                ps.close();
                System.out.println(row);
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
            String sql = "delete HOA_DON where id = ?";

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
    public boolean update(Order order) {
        if (order!= null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update HOA_DON set ngay_lap_hoa_don=?,id_khach_hang=?,ten_nguoi_dung=?,tri_gia=?, thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, order.getDateAtOrder());
                ps.setInt(2, order.getIdUser());
                ps.setString(3,order.getNameUser() );
                ps.setDouble(4, order.getPriceOrder());
                ps.setDate(5,new Date(System.currentTimeMillis()) );
                ps.setDouble(6, order.getId());
                int row = ps.executeUpdate();
                ps.close();
                System.out.println("update order successful");
                return row == 1;

            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }

        return false;
    }

    @Override
    public List<Order> getAll() {
        List<Order> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM HOA_DON  order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order =  new Order();
                setValue(rs, order);
                result.add(order);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Order getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM HOA_DON where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Order order = null;
            while (rs.next()) {
                order = new Order();
                setValue(rs,order);
            }
            rs.close();
            ps.close();
            return order;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Order> getByNameUser(String name) {
        List<Order> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM HOA_DON  where ten_nguoi_dung = ? ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order =  new Order();
                setValue(rs, order);
                result.add(order);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    public void setValue(ResultSet rs, Order order) {
        try{
             order.setId(rs.getInt("id"));
             order.setIdUser(rs.getInt("id_khach_hang"));
             order.setNameUser(rs.getString("ten_nguoi_dung"));
             order.setPriceOrder(rs.getDouble("tri_gia"));
             order.setDateAtOrder(rs.getString("ngay_lap_hoa_don"));
             order.setCreateAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }


    }
}
