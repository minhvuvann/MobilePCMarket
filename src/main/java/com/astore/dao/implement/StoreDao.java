package com.astore.dao.implement;

import com.astore.dao.IStoreDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Slide;
import com.astore.model.Store;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StoreDao implements IStoreDao {
    @Override
    public boolean insert(Store store) {
        if(store != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into CUA_HANG( ten_cua_hang,link_lo_go) values (?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, store.getName());
                ps.setString(2, store.getLinkLogo());

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
    public boolean update(Store store) {
        if(store != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update CUA_HANG set ten_cua_hang=?,link_lo_go=?,thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, store.getName());
                ps.setString(2, store.getLinkLogo());
                ps.setDate(3, new Date(System.currentTimeMillis()));
                ps.setInt(4,store.getId() );

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
        return false;
    }

    @Override
    public Store getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM CUA_HANG where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Store store = null;
            while (rs.next()) {
                store = new Store();
                setValue(rs,store);
            }
            rs.close();
            ps.close();
            return store;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private void setValue(ResultSet rs, Store store) {

        try{
            store.setId(rs.getInt("id"));
            store.setName(rs.getString("ten_cua_hang"));
            store.setLinkLogo(rs.getString("link_lo_go"));
            store.setDateAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }  }

    @Override
    public List<Store> getAll() {
        List<Store> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM CUA_HANG order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Store store = new Store();
                setValue(rs, store);
                result.add(store);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        StoreDao d = new StoreDao();
       System.out.println( d.getById(1).getLinkLogo());
    }
}
