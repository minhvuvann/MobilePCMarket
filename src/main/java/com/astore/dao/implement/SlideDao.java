package com.astore.dao.implement;

import com.astore.dao.ISlideDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Slide;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SlideDao implements ISlideDao {
    @Override
    public boolean insert(Slide slide) {
        if (slide != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into SLIDER( link_anh, tieu_de, noi_dung) values (?,?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, slide.getLinkImage());
                ps.setString(2, slide.getTitle());
                ps.setString(3, slide.getContent());

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
    public boolean update(Slide slide) {
        if (slide != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update SLIDER set  link_anh=? , tieu_de=?,  noi_dung=?, thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, slide.getLinkImage());
                ps.setString(2, slide.getTitle());
                ps.setString(3, slide.getContent());
                ps.setDate(4, new Date(System.currentTimeMillis()));
                ps.setInt(5, slide.getId());
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
    public boolean delete(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "delete SLIDER where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int row = ps.executeUpdate();
            ps.close();
            System.out.println(row);
            return row == 1;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Slide getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM SLIDER where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Slide slide = null;
            while (rs.next()) {
                slide = new Slide();
                setValue(rs, slide);
            }
            rs.close();
            ps.close();
            return slide;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Slide> getByName(String name) {
        List<Slide> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM SLIDER where tieu_de like ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setNString(1, name);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Slide slide = new Slide();
                setValue(rs, slide);
                result.add(slide);
            }

            rs.close();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Slide> getAll() {
        List<Slide> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM SLIDER order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Slide slide = null;
            while (rs.next()) {
                slide = new Slide();
                setValue(rs, slide);
                result.add(slide);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    private void setValue(ResultSet rs, Slide slide) {
        try {
            slide.setId(rs.getInt("id"));
            slide.setLinkImage(rs.getString("link_anh"));
            slide.setTitle(rs.getString("tieu_de"));
            slide.setContent(rs.getString("noi_dung"));
            slide.setCreatedAt(rs.getString("thoi_gian_tao"));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }

    public static void main(String[] args) {
        System.out.println(new SlideDao().getByName("home"));
    }
}
