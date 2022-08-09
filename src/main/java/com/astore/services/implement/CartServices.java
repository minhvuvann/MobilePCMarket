package com.astore.services.implement;

import com.astore.dao.implement.CartDao;
import com.astore.model.Cart;
import com.astore.services.ICartServices;

import java.util.List;

public class CartServices implements ICartServices {
    static CartServices cartServices = null;
    private CartDao cartDao;


    private CartServices() {
        this.cartDao = new CartDao();
    }

    public static CartServices getInstance() {
        if (cartServices == null) {
            cartServices = new CartServices();
        }
        return cartServices;
    }

    @Override
    public boolean insert(Cart cart) {
        return cartDao.insert(cart);
    }

    @Override
    public boolean update(Cart cart) {
        return cartDao.update(cart);
    }

    @Override
    public boolean delete(int id) {
        return cartDao.delete(id);
    }

    @Override
    public Cart getById(int id) {
        return cartDao.getById(id);
    }

    @Override
    public List<Cart> getByIdCustomer(int idCustomer) {
        return cartDao.getByIdCustomer(idCustomer);
    }

    @Override
    public List<Cart> getAll() {
        return cartDao.getAll();
    }

    @Override
    public Cart checkExistCartByIdCustomer(int idCustomer,int idSp) {
        return cartDao.checkCart(idCustomer,idSp);
    }

    @Override
    public long sumPriceCart(int idCustomer) {
        return cartDao.sumCartByCustomer(idCustomer);
    }

    @Override
    public List<Cart> getCartForImg(int idCustomer) {
        return cartDao.getCartForImg(idCustomer);
    }
}
