package com.astore.dao.implement;

import com.astore.dao.ICartDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Cart;
import com.astore.model.Product;
import com.astore.model.Slide;
import com.astore.services.implement.ProductServices;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CartDao implements ICartDao {
    @Override
    public boolean insert(Cart cart) {
        if (cart != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into GIO_HANG(id_khach_hang,ten_nguoi_dung,id_san_pham,gia_san_pham,so_luong) values (?,?,?,?,?)";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, cart.getIdCustomer());
                ps.setString(2, cart.getNameCustomer());
                ps.setInt(3, cart.getIdProduct());
                ps.setDouble(4, cart.getPrice());
                ps.setLong(5, cart.getQuantity());
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
    public boolean update(Cart cart) {
        if (cart != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update GIO_HANG set  id_khach_hang=?,ten_nguoi_dung=?,id_san_pham=?,gia_san_pham=?,so_luong=?, thoi_gian_tao=? where id=? ";

            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, cart.getIdCustomer());
                ps.setString(2, cart.getNameCustomer());
                ps.setInt(3, cart.getIdProduct());
                ps.setDouble(4, cart.getPrice());
                ps.setLong(5, cart.getQuantity());
                ps.setDate(6, new Date(System.currentTimeMillis()));
                ps.setInt(7, cart.getId());
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
            String sql = "delete GIO_HANG where id = ?";

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
    public Cart getById(int id) {
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT * FROM GIO_HANG where id = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            Cart cart = null;
            while (rs.next()) {
                cart = new Cart();
                setValue(rs, cart);
            }
            rs.close();
            ps.close();
            return cart;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private void setValue(ResultSet rs, Cart cart) {

        try {
            cart.setId(rs.getInt("id"));
            cart.setIdCustomer(rs.getInt("id_khach_hang"));
            cart.setNameCustomer(rs.getString("ten_nguoi_dung"));
            cart.setIdProduct(rs.getInt("id_san_pham"));
            cart.setPrice(rs.getDouble("gia_san_pham"));
            cart.setQuantity(rs.getLong("so_luong"));
            cart.setDateAt(rs.getString("thoi_gian_tao"));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public List<Cart> getByIdCustomer(int idCustomer) {
        List<Cart> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM GIO_HANG where id_khach_hang = ?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idCustomer);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Cart cart = new Cart();
                setValue(rs, cart);
                result.add(cart);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Cart> getAll() {
        List<Cart> result = new ArrayList<>();
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM GIO_HANG order by thoi_gian_tao desc ";

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Cart cart = new Cart();
                setValue(rs, cart);
                result.add(cart);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Cart checkCart(int idCustomer, int idSp) {

        Cart cart = null;
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT  * FROM GIO_HANG where id_khach_hang =? and id_san_pham=?";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idCustomer);
            ps.setInt(2, idSp);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                cart = new Cart();
                setValue(rs, cart);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cart;
    }

    @Override
    public long sumCartByCustomer(int idCustomer) {
        List<Cart> list = getByIdCustomer(idCustomer);
        long sum = 0;
        for (Cart cart : list) {
            sum += cart.getQuantity() * cart.getPrice();
        }
        return sum;
    }

    public static void main(String[] args) {
        CartDao cartDao = new CartDao();
//        Cart cart = new Cart(0, 14, "Minh V?", 9, "", "", 2.149E7, 1, null, null);
//        System.out.println(cartDao.insert(cart));
        if (cartDao.checkCart(14, 91) == null) {
            System.out.println(false);
        }
//        System.out.println(cartDao.checkCart(14, 91).toString());
    }

    public List<Cart> getCartForImg(int idCustomer) {
        List<Cart> cartList = getByIdCustomer(idCustomer);
        for (Cart cart : cartList) {
            Product product = ProductServices.getInstance().getById(cart.getIdProduct());
            cart.setNameProduct(product.getName());
            cart.setRom(product.getRom());
            cart.setPrice(product.getPrice());
            cart.setLinkImgProduct(product.getListPhotoUrl().get(0));
            System.out.print(product.getListPhotoUrl().get(0));
        }
        return cartList;

    }
}
