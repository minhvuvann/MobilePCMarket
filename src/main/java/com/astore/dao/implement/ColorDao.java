package com.astore.dao.implement;

import com.astore.dao.IColorDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Color;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ColorDao implements IColorDao {
    @Override
    public boolean insert(Color color) {
        if(color != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into MAU_SAC(ten_mau_sac, ma_mau_sac_hex) values (?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, color.getName());
                ps.setString(2, color.getCodeHex());
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
    public boolean update(Color color) {
        if(color != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "update MAU_SAC set ten_mau_sac =?, ma_mau_sac_hex = ?, thoi_gian_tao = ? where id = ?";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, color.getName());
                ps.setString(2, color.getCodeHex());
                ps.setDate(3, new Date(System.currentTimeMillis()));
                ps.setInt(4, color.getId());
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
            String sql = "delete MAU_SAC where id = ?";

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
    public Color getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM MAU_SAC where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Color color = null;
            while (rs.next()) {
                color = new Color();
                setValue(rs,color);
            }
            rs.close();
            ps.close();
            return color;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Color> getByName(String name) {
        List<Color> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM MAU_SAC where ten_mau_sac like ?";
            name = "%"+name+"%";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setNString(1, name);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Color color = new Color();
                setValue(rs,color);
                result.add(color);
            }

            rs.close();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Color> getAll() {
        List<Color> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT top 100 * FROM MAU_SAC order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Color color = new Color();
                setValue(rs, color);
                result.add(color);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    private void setValue(ResultSet rs, Color color){
        try{
            color.setId(rs.getInt("id"));
            color.setName(rs.getString("ten_mau_sac"));
            color.setCodeHex(rs.getString("ma_mau_sac_hex"));
            color.setCreatedAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }
}
