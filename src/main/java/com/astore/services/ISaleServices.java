package com.astore.services;

import com.astore.model.Sale;

import java.util.List;

public interface ISaleServices {
    boolean insert(Sale sale);

    boolean update(Sale sale);

    boolean delete(int id);

    Sale getById(int id); // tìm kiếm

    List<Sale> getByName(String name); // // tìm kiếm

    List<Sale> getAll(); // dùng trong admin
}
