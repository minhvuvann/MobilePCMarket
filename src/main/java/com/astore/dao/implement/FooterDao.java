package com.astore.dao.implement;

import com.astore.dao.IFooterDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Footer;
import com.astore.model.Slide;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FooterDao implements IFooterDao {
    @Override
    public Footer getFooterByTitle(String title) {
        Footer result = new Footer();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM CHAN_TRANG where tieu_de like ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setNString(1, title);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                setValue(rs, result);
            }

            rs.close();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    private void setValue(ResultSet rs, Footer result) {
        try {
            result.setId(rs.getInt("id"));
            result.setTitle(rs.getString("tieu_de"));
            result.setContent(rs.getString("noi_dung"));
            result.setCreateAt(rs.getString("thoi_gian_tao"));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) {
        FooterDao f = new FooterDao();
        System.out.println(f.getFooterByTitle("deliveryPolicy").getId());
    }
}
