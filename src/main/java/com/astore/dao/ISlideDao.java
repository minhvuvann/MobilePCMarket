package com.astore.dao;

import com.astore.model.Sale;
import com.astore.model.Slide;

import java.util.List;

public interface ISlideDao {
    boolean insert(Slide slide);

    boolean update(Slide slide);

    boolean delete(int id);

    Slide getById(int id); // tìm kiếm

    List<Slide> getByName(String name); // // tìm kiếm

    List<Slide> getAll(); // dùng trong admin
}
