package com.astore.dao.implement;

import com.astore.dao.IInsuranceDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Insurance;
import com.astore.model.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class InsuranceDao implements IInsuranceDao {
    @Override
    public boolean insert(Insurance insurance) {
        if (insurance != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into BAO_HANH(id_san_pham, id_don_hang, id_khach_hang, ten_nguoi_dung, ngay_nhan, ngay_tra, phi_bao_hanh, noi_dung_bao_hanh, id_trang_thai_bao_hanh) values (?,?,?,?,?,?,?,?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
               ps.setInt(1,insurance.getIdProduct());
                ps.setInt(2,insurance.getIdOrder());
                ps.setInt(3,insurance.getIdUser());
                ps.setString(4,insurance.getNameUser());
                ps.setString(5,insurance.getDateTake());
                ps.setString(6,insurance.getDatePay());
                ps.setDouble(7,insurance.getRateInsurance());
                ps.setString(8,insurance.getNote());
                ps.setInt(9,insurance.getStatus());

                int row = ps.executeUpdate();
                ps.close();
                System.out.println(row);
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
            String sql = "delete BAO_HANH where id = ?";

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
    public boolean update(Insurance insurance) {
        if (insurance!= null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update BAO_HANH set id_san_pham=?, id_don_hang=?, id_khach_hang=?, ten_nguoi_dung=?, ngay_nhan=?, ngay_tra=?, phi_bao_hanh=?, noi_dung_bao_hanh=?, id_trang_thai_bao_hanh=?, thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, insurance.getIdProduct());
                ps.setInt(2,insurance.getIdOrder());
                ps.setInt(3, insurance.getIdUser());
                ps.setString(4,insurance.getNameUser() );
                ps.setString(5, insurance.getDateTake());
                ps.setString(6,insurance.getDatePay());
                ps.setDouble(7, insurance.getRateInsurance());
                ps.setString(8,insurance.getNote()) ;
                ps.setInt(9,insurance.getStatus());
                ps.setDate(10,new Date(System.currentTimeMillis()));
                ps.setInt(11,insurance.getId());
                int row = ps.executeUpdate();
                ps.close();
                System.out.println("update insurance successful");
                return row == 1;

            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }

        return false;
    }

    @Override
    public List<Insurance> getAll() {
        List<Insurance> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM BAO_HANH  order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
               Insurance insurance = new Insurance();
                setValue(rs, insurance);
                insurance.setContentStatus(getContentInsuranceById(insurance.getStatus()));
                result.add(insurance);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Insurance getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM BAO_HANH where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Insurance insurance = null;
            while (rs.next()) {
                insurance = new Insurance();
                setValue(rs,insurance);
                insurance.setContentStatus(getContentInsuranceById(insurance.getStatus()));

            }
            rs.close();
            ps.close();
            return insurance;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public String getContentInsuranceById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM TRANG_THAI_BAO_HANH where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
          String content = null;
            while (rs.next()) {
                content = rs.getString("ten_trang_thai_bao_hanh");
            }
            rs.close();
            ps.close();
            return content;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public void setValue(ResultSet rs, Insurance insurance) {
        try{
            insurance.setId(rs.getInt("id"));
            insurance.setIdUser(rs.getInt("id_khach_hang"));
            insurance.setNameUser(rs.getString("ten_nguoi_dung"));
            insurance.setIdProduct(rs.getInt("id_san_pham"));
            insurance.setIdOrder(rs.getInt("id_don_hang"));
            insurance.setRateInsurance(rs.getDouble("phi_bao_hanh"));
            insurance.setDatePay(rs.getString("ngay_tra"));
            insurance.setDateTake(rs.getString("ngay_nhan"));
            insurance.setNote(rs.getString("noi_dung_bao_hanh"));
            insurance.setStatus(rs.getInt("id_trang_thai_bao_hanh"));
            insurance.setCreateAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }


    }

}
