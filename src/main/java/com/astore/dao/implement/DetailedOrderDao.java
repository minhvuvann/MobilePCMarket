package com.astore.dao.implement;

import com.astore.dao.IDetailedOrderDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.*;
import com.astore.model.DetailedOrder;
import com.astore.model.DetailedOrder;
import com.astore.services.implement.ProductServices;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class DetailedOrderDao implements IDetailedOrderDao {
    @Override
    public boolean insert(DetailedOrder detailedOrder) {
        if(detailedOrder!= null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into CHI_TIET_HOA_DON( id_hoa_don,id_san_pham,gia_san_pham,so_luong) values (?,?,?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1,detailedOrder.getIdOrder());
                ps.setInt(2, detailedOrder.getIdProduct());
                ps.setDouble(3,detailedOrder.getPriceProduct());
                ps.setInt(4, detailedOrder.getCount());

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
            String sql = "delete CHI_TIET_HOA_DON where id = ?";

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
    public boolean update(DetailedOrder detailedOrder) {
        if (detailedOrder!= null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update CHI_TIET_HOA_DON set id_hoa_don=?,id_san_pham=?,gia_san_pham=?,so_luong=?, thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, detailedOrder.getIdOrder());
                ps.setInt(2, detailedOrder.getIdProduct());
                ps.setDouble(3, detailedOrder.getPriceProduct());
                ps.setInt(4,detailedOrder.getCount());
                ps.setDate(5,new Date(System.currentTimeMillis()) );
                ps.setDouble(6, detailedOrder.getId());
                int row = ps.executeUpdate();
                ps.close();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }

        return false;
    }

    @Override
    public List<DetailedOrder> getAll() {
        List<DetailedOrder> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM CHI_TIET_HOA_DON  order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                DetailedOrder detailedOrder =  new DetailedOrder();
                setValue(rs, detailedOrder);
                detailedOrder.setNameProduct(ProductServices.getInstance().getById(detailedOrder.getIdProduct()).getName());
                result.add(detailedOrder);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public DetailedOrder getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM CHI_TIET_HOA_DON where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            DetailedOrder  detailedOrder = null;
            while (rs.next()) {
                detailedOrder = new DetailedOrder();
                setValue(rs,detailedOrder);
            }
            rs.close();
            ps.close();
            return detailedOrder;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<DetailedOrder> getByNameProduct(String name) {
        List<DetailedOrder> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            List<Product> listP= new ProductDao().getByName(name);
            for (Product p: listP) {
                int idsp= p.getId();
                String sql = "SELECT * FROM TON_KHO where  id_san_pham =?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, idsp);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    DetailedOrder detailedOrder = new DetailedOrder();
                    setValue(rs,detailedOrder);
                    detailedOrder.setNameProduct(new ProductDao().getById(detailedOrder.getIdProduct()).getName());
                    result.add(detailedOrder);
                }
                rs.close();
                ps.close();
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<DetailedOrder> getByIdOrder(int idOrder) {
        List<DetailedOrder> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM CHI_TIET_HOA_DON  where id_hoa_don=?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,idOrder);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                DetailedOrder detailedOrder =  new DetailedOrder();
                setValue(rs, detailedOrder);
                detailedOrder.setNameProduct(ProductServices.getInstance().getById(detailedOrder.getIdProduct()).getName());
                result.add(detailedOrder);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public void setValue(ResultSet rs, DetailedOrder detailedOrder){
        try{
            detailedOrder.setId(rs.getInt("id"));
            detailedOrder.setIdOrder(rs.getInt("id_hoa_don"));
            detailedOrder.setIdProduct(rs.getInt("id_san_pham"));
            detailedOrder.setPriceProduct(rs.getDouble("gia_san_pham"));
            detailedOrder.setCount(rs.getInt("so_luong"));
            detailedOrder.setCreateAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) {
        System.out.println(new DetailedOrderDao().getByIdOrder(3).size());
    }
}
