package com.astore.services;

import com.astore.model.Product;

import java.util.List;
import java.util.Map;

public interface IProductServices {
    boolean insert(Product product);

    boolean update(Product product);

    boolean delete(int id);

    Product getById(int id);


    List<Product> getAll();

    List<Product> getAll(int start, int end);
    int countProduct();



    List<Product> getByName(String productName);

    List<Product> getProductByIdCate(int idCate);

    List<Product> getProductByIdDongSp(int idDongSp);


    List<Product> getProductByIdCate(int idCate, int numTop);

    List<Product> getProductByIdDongSp(int idDongSp, int numTop);

    public List<Product> getProductByIdCate(int idCate, int start, int end);


    public List<Product> getListProductOrder(int idOrder) ;


    Map<Integer,Integer> quantilyProductOrder(int idOrder);//số lượng của sản phẩm trong đơn hàng

    int countProductByCategoryId(int i);

    int countProductByName(String search);

    List<Product> getByNameLimit(String search, int i, int i1);
}
