package com.astore.services;

import com.astore.model.Slide;

import java.util.List;

public interface ISlideServices {
    boolean insert(Slide slide);

    boolean update(Slide slide);

    boolean delete(int id);

    Slide getById(int id); // tìm kiếm

    List<Slide> getByName(String name); // // tìm kiếm

    List<Slide> getAll();
}
