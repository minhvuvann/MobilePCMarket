package com.astore.dao.implement;

import com.astore.dao.IIformationAccountDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.GiftUser;
import com.astore.model.HistoryDelivery;
import com.astore.model.Product;
import com.astore.services.implement.UserServices;
import com.astore.tool.Format;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InformationAccountDao implements IIformationAccountDao {
    @Override
    public String rankUser(int idUser) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "select dbo.F_XLKH(?) as 'rank'";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                if (rs.getString("rank") == null) return "chưa có hạng";
                else return rs.getString("rank");
            } else {
                System.out.println(2);
                return "chưa có hạng";
            }

        } catch (SQLException e) {
            System.out.println(3);
            return "chưa có hạng";

        }

    }

    @Override
    public int countOrderUser(int idUser) {
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "execute  SL_ORDER ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ResultSet rs =ps.executeQuery();
            if (rs.next())
                return  rs.getInt("countorder");
            else
                return 0;
        }catch (SQLException e){
            return 0;
        }
    }

    @Override
    public Map<String, String> giftRankUser(String rank) {
        Map<String, String> mapRes = new HashMap<String, String>();
        String condition = null;
        int machine =0;
        int accessory = 0;
        int accessoryRemaining =0;
        int mobileComeToLife = 0;
        int giftBirthday = 0;
        String servicePolicy = "Tham gia chương trình đặt trước sản phẩm không cần đặt cọc tiền";
        int rankNumber =0;
        if (rank.equals("NEW")) {
            rankNumber=1;
        }
        if (rank.equals("MEMBER")) {
            rankNumber=2;
        }
        if (rank.equals("VIP")) {
            rankNumber=3;
        }
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "select * from UU_DAI_KHACH_HANG WHERE ID= ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rankNumber);
            ResultSet rs =ps.executeQuery();
            if (rs.next()) {
                condition =rs.getString(2);
                machine = rs.getInt(3);
                accessory = rs.getInt(4);
                accessoryRemaining = rs.getInt(5);
                mobileComeToLife = rs.getInt(6);
                giftBirthday = rs.getInt(7);
                mapRes.put("condition", condition);
                mapRes.put("machine", String.valueOf(machine));
                mapRes.put("accessory", String.valueOf(accessory));
                mapRes.put("accessoryRemaining", String.valueOf(accessoryRemaining));
                mapRes.put("mobileComeToLife", String.valueOf(mobileComeToLife));
                mapRes.put("giftBirthday", Format.getInstance().formatMoney(String.valueOf(giftBirthday)));
                mapRes.put("servicePolicy", servicePolicy);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }



        return mapRes;
    }


    @Override
    public List<HistoryDelivery> listOrder(int idUser) {
        List<HistoryDelivery> listOrder = new ArrayList<>();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "select * from dbo.LIST_HD(?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
                listOrder.add(new HistoryDelivery(rs.getInt("id"), Format.getInstance().formatDate(rs.getString("ngay_giao_hang"))
                        , Format.getInstance().formatDate( rs.getString("ngay_lap_hoa_don")),Format.getInstance().formatMoney(rs.getString("tri_gia"))));
            }

        }catch (SQLException e){
            return null;
        }
        return listOrder;
    }

    @Override
    public long sumOrderUser(int idUser) {
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "select sum(tri_gia) from HOA_DON WHERE ID_KHACH_HANG=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ResultSet rs =ps.executeQuery();
            if (rs.next())
                return  rs.getLong(1);
            else
                return 0;
        }catch (SQLException e){
            return 0;
        }
    }

    @Override
    public List<GiftUser> getListGift(int idUser) {
        List<GiftUser> listGift = new ArrayList<>();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "select * from qua_khach_hang where id_khach_hang =?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
                listGift.add(new GiftUser(rs.getInt("id"),rs.getInt("id_khach_hang"),rs.getString("ngay_nhan_qua"),rs.getString("ten_phan_qua"),rs.getLong("tri_gia")) );
            }

        }catch (SQLException e){
            return null;
        }
        return listGift;
    }

    public static void main(String[] args) {
        InformationAccountDao i = new
                InformationAccountDao();
        System.out.println(i.rankUser(1));
    }

}
