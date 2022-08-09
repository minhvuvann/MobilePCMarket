package com.astore.dao.implement;

import com.astore.dao.IHelpDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Help;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HelpDao implements IHelpDao {
    @Override
    public List<Help> getListHelp() {
        List<Help> listHelp = new ArrayList<>();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM HO_TRO";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs =ps.executeQuery();
            Help help = null;
            while (rs.next()){
                help = new Help();
                setValue(help, rs);
                listHelp.add(help);
            }

        }catch (SQLException e){
            return null;
        }
        return listHelp;
    }
    @Override
    public Help getById(int id) {
        Help help = new Help();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM HO_TRO WHERE ID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs =ps.executeQuery();
            if (rs.next()){
                setValue(help,rs);
            }else
                return null;

        }catch (SQLException e){
            return null;
        }
        return help;
    }

    @Override
    public List<Help> getByName(String name) {
        List<Help> listHelp = new ArrayList<>();
        Help help = new Help();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM HO_TRO where ho_va_ten=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
                setValue(help,rs);
                listHelp.add(help);
            }

        }catch (SQLException e){
            return null;
        }
        return listHelp;
    }

    @Override
    public boolean delete(int id) {
        PreparedStatement ps = null;
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "DELETE FROM HO_TRO WHERE ID= ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            String check = "select * from HO_TRO where id = ?";
            ps = conn.prepareStatement(check);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            boolean deleted = rs.next();
            rs.close();
            ps.close();
            return !deleted;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean insert(Help help) {
        if(help != null){
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into HO_TRO(ho_va_ten, email, noi_dung_ho_tro) values (?,?,?)";
            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, help.getFullName());
                ps.setString(2, help.getEmail());
                ps.setString(3, help.getContent());
                int row = ps.executeUpdate();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return  false;
            }
        }
        return false;
    }


    public void setValue(Help help, ResultSet rs) {
        try {
            help.setId(rs.getInt("id"));
            help.setFullName(rs.getString("ho_va_ten"));
            help.setEmail(rs.getString("email"));
//            help.setNumberPhone(rs.getString("sdt"));
            help.setContent(rs.getString("noi_dung_ho_tro"));
            help.setCreateAt(rs.getString("thoi_gian_tao"));
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        HelpDao h = new HelpDao();
        System.out.println(h.getListHelp().size());
    }
}
