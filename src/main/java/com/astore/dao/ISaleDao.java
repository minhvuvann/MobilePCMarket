package com.astore.dao;

import com.astore.model.Sale;

import java.util.List;

public interface ISaleDao {

    boolean insert(Sale sale);

    boolean update(Sale sale);

    boolean delete(int id);

    Sale getById(int id); // tìm kiếm

    List<Sale> getByName(String name); // // tìm kiếm

    List<Sale> getAll(); // dùng trong admin
}
