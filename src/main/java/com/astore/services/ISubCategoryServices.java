package com.astore.services;

import com.astore.model.SubCategory;

import java.util.List;

public interface ISubCategoryServices {

    boolean insert(SubCategory subCategory);

    boolean update(SubCategory subCategory);

    boolean delete(int id);

    SubCategory getById(int id); // tìm kiếm

    List<SubCategory> getByName(String name); // // tìm kiếm

    List<SubCategory> getAll(); // dùng trong admin
}
