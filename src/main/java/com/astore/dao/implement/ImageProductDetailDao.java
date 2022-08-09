package com.astore.dao.implement;

import com.astore.dao.IImageProductDetailDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Image;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ImageProductDetailDao implements IImageProductDetailDao {
    @Override
    public boolean insert(Image image) {
        Connection conn = ConnectDB.getInstance();
        String sql = "INSERT INTO HINH_MOTA_SANPHAM (id_dong_san_pham,link_hinh_mo_ta_san_pham) VALUES(?,?)";

        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, image.getProductId());
            ps.setString(2, image.getUrl());

            int row = ps.executeUpdate();
            ps.close();
            return row == 1;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Image image) {
        Connection conn = ConnectDB.getInstance();
        String sql = "update HINH_MOTA_SANPHAM set id_dong_san_pham = ?, link_hinh_mo_ta_san_pham = ?, thoi_gian_tao = ? where id = ?";

        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, image.getProductId());
            ps.setString(2, image.getUrl());
            ps.setDate(3, new Date(System.currentTimeMillis()));
            ps.setInt(4, image.getId());
            int row = ps.executeUpdate();
            ps.close();
            return row == 1;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        Connection conn = ConnectDB.getInstance();
        String sql = "delete HINH_MOTA_SANPHAM where id = ?";

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
        return false;
    }

    @Override
    public List<Image> getByProductId(int id) {
        List<Image> result = new ArrayList<>();

        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT * FROM HINH_MOTA_SANPHAM where id_dong_san_pham = ?";

        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            Image image = null;
            while (rs.next()) {
                image = new Image();
                setValue(rs, image);
                result.add(image);
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
    public Image getById(int id) {
        Image result = new Image();
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT * FROM HINH_MOTA_SANPHAM where id = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                setValue(rs, result);
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
    public List<Image> getAll() {
        List<Image> result = new ArrayList<>();

        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT top 100 * FROM HINH_MOTA_SANPHAM order by thoi_gian_tao desc ";

        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            Image image = null;
            while (rs.next()) {
                image = new Image();
                setValue(rs, image);
                result.add(image);
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
    public List<Image> getAll(int start, int end) {
        List<Image> images = new ArrayList<Image>();
        Connection conn;
        conn = ConnectDB.getInstance();
        String sql = "getImageProductDetailLimitAdmin_proc ?, ?";


        try {

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, start);
            ps.setInt(2, end);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Image image = new Image();
                setValue(rs,image);
                images.add(image);
            }
            ps.close();
            rs.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return images;
    }

    @Override
    public int countImage() {
        Connection conn = ConnectDB.getInstance();
        int count = 0;
        String sql = "select count(*) from HINH_MOTA_SANPHAM";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }
            rs.close();
            ps.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return  count;
    }

    @Override
    public List<Image> getByName(String imageName) {
        List<Image> result = new ArrayList<>();

        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT * FROM HINH_MOTA_SANPHAM where link_hinh_mo_ta_san_pham like ?";
        imageName = "%"+imageName+"%";

        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, imageName);
            rs = ps.executeQuery();
            Image image = null;
            while (rs.next()) {
                image = new Image();
                setValue(rs, image);
                result.add(image);
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


    private static void setValue(ResultSet rs, Image image){
        try {
            image.setId(rs.getInt("id"));
            image.setProductId(rs.getInt("id_dong_san_pham"));
            image.setUrl(rs.getString("link_hinh_mo_ta_san_pham"));
        }catch (SQLException e) {

        }
    }
}
