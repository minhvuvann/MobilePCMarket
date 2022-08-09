package com.astore.services;

import com.astore.model.Cart;

import java.util.List;

public interface ICartServices {
    boolean insert(Cart cart);

    boolean update(Cart cart);

    boolean delete(int id);

   Cart  getById(int id);

    List<Cart> getByIdCustomer(int idCustomer);

    List<Cart> getAll();

    Cart checkExistCartByIdCustomer(int idCustomer,int idSp);

    long sumPriceCart(int idCustomer);

    List<Cart> getCartForImg(int idCustomer);

}
