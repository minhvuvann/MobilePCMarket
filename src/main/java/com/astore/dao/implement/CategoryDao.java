package com.astore.dao.implement;

import com.astore.dao.ICategoryDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Category;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements ICategoryDao {

    @Override
    public boolean insert(Category category) {

        if (category != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into LOAI_SAN_PHAM(ten_loai_sp) values(?)";

            PreparedStatement ps = null;

            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, category.getName());
                int row = ps.executeUpdate();
                ps.close();
                return row == 1;
            }catch (SQLException e) {

            }
            try {
                ps.close();
                return false;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public boolean update(Category category){
        if (category != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update LOAI_SAN_PHAM  set ten_loai_sp = ? , thoi_gian_tao = ? where id = ?";

            PreparedStatement ps = null;

            try {
                ps = conn.prepareStatement(sql);

                ps.setString(1, category.getName());
                ps.setDate(2, new Date(System.currentTimeMillis()));
                ps.setInt(3, category.getId());
                int row = ps.executeUpdate();

                ps.close();

                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
            }

            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public boolean delete(int id) {

        Connection conn = ConnectDB.getInstance();
        String sql = "delete LOAI_SAN_PHAM where id = ?";

        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int row = ps.executeUpdate();
            ps.close();
            return row == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            ps.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;

    }

    @Override
    public Category getById(int id) {

        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT * FROM LOAI_SAN_PHAM where id = " + id;

        PreparedStatement ps = null;
        ResultSet rs = null;
        Category category = null;
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                category = new Category();
                setValue(rs, category);
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
        return category;
    }

    @Override
    public Category getByProductId(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = " SELECT * FROM LOAI_SAN_PHAM join DONG_SAN_PHAM on DONG_SAN_PHAM.id_loai_san_pham = LOAI_SAN_PHAM.id join SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id where SAN_PHAM.id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Category category = null;
            if (rs.next()) {
                category = new Category();
                setValue(rs, category);
            }
            rs.close();
            ps.close();
            return category;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Category> getByName(String name) {
        List<Category> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM LOAI_SAN_PHAM where ten_loai_sp like ? order by thoi_gian_tao desc";

            PreparedStatement ps = conn.prepareStatement(sql);
            name = "%"+name+"%";
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = new Category();
                setValue(rs, category);
                result.add(category);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Category> getAll() {
        List<Category> result = new ArrayList<>();

        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT * FROM LOAI_SAN_PHAM order by thoi_gian_tao desc ";

        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                setValue(rs, category);
                result.add(category);
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

    public void setValue(ResultSet rs, Category category) {
        try {
            category.setId(rs.getInt("id"));
            category.setName(rs.getString("ten_loai_sp"));
            category.setCreatedAt(rs.getString("thoi_gian_tao"));
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
