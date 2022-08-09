package com.astore.dao;

import com.astore.model.Cart;

import java.util.List;

public interface ICartDao {
    boolean insert(Cart cart);

    boolean update(Cart cart);

    boolean delete(int id);

    Cart  getById(int id);

    List<Cart> getByIdCustomer(int idCustomer);

    List<Cart> getAll();

    Cart checkCart(int idCustomer, int idSp);

    long sumCartByCustomer(int idCustomer);

    List<Cart> getCartForImg(int idCustomer);


}
