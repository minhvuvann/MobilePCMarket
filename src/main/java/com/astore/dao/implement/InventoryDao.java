package com.astore.dao.implement;

import com.astore.dao.IInventoryDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Inventory;
import com.astore.model.Product;
import com.astore.model.Slide;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class InventoryDao implements IInventoryDao {
    @Override
    public boolean insert(Inventory inventory) {
        if(inventory!= null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into TON_KHO(id_san_pham, so_luong_con_lai) values (?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1,inventory.getIdSP());
                ps.setLong(2, inventory.getCount());

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
            String sql = "delete TON_KHO where id = ?";

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
    public boolean update(Inventory inventory) {
        if (inventory != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update TON_KHO set  id_san_pham=? , so_luong_con_lai=?, thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, inventory.getIdSP());
                ps.setLong(2, inventory.getCount());
                ps.setDate(3, new Date(System.currentTimeMillis()));
                ps.setInt(4, inventory.getId());
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
    public List<Inventory> getAll() {
        List<Inventory> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM TON_KHO  order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Inventory inventory =  new Inventory();

                setValue(rs, inventory);
             inventory.setNameSP(new ProductDao().getById(inventory.getIdSP()).getName());
                result.add(inventory);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Inventory getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM TON_KHO where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Inventory inventory = null;
            while (rs.next()) {
                inventory = new Inventory();
                setValue(rs,inventory);
                inventory.setNameSP(new ProductDao().getById(inventory.getIdSP()).getName());

            }
            rs.close();
            ps.close();
            return inventory;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Inventory> getByIdSP(int idSP) {
        List<Inventory> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM TON_KHO where id_san_pham = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idSP);
            ResultSet rs = ps.executeQuery();
            Inventory inventory = null;
            while (rs.next()) {
                inventory = new Inventory();
                setValue(rs,inventory);
                inventory.setNameSP(new ProductDao().getById(inventory.getIdSP()).getName());
                result.add(inventory);
            }
            rs.close();
            ps.close();
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Inventory> getByNameSP(String name) {
        List<Inventory> result = new ArrayList<>();
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
                    Inventory inventory = new Inventory();
                    setValue(rs,inventory);
                    inventory.setNameSP(new ProductDao().getById(inventory.getIdSP()).getName());
                    result.add(inventory);
                }
                rs.close();
                ps.close();
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    private void setValue(ResultSet rs, Inventory inventory) {
        try{
            inventory.setId(rs.getInt("id"));
            inventory.setIdSP(rs.getInt("id_san_pham"));
            inventory.setCount(rs.getLong("so_luong_con_lai"));
            inventory.setCreateAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }


    }

    public static void main(String[] args) {
System.out.println(new InventoryDao().getByNameSP("I"));    }
}
