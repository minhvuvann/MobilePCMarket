package com.astore.dao;

import com.astore.model.Category;

import java.sql.SQLException;
import java.util.List;

public interface ICategoryDao {

    boolean insert(Category category);

    boolean update(Category category) throws SQLException;

    boolean delete(int id) throws SQLException;

    Category getById(int id) throws SQLException; // tìm kiếm

    Category getByProductId(int id); // tìm kiếm

    List<Category> getByName(String name); // // tìm kiếm

    List<Category> getAll() throws SQLException; // dùng trong admin
}
