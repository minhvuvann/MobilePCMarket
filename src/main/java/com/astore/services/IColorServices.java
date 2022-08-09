package com.astore.services;

import com.astore.model.Color;

import java.util.List;

public interface IColorServices {
    boolean insert(Color color);

    boolean update(Color color);

    boolean delete(int id);

    Color getById(int id); // tìm kiếm

    List<Color> getByName(String name); // // tìm kiếm

    List<Color> getAll(); // dùng trong admin
}
