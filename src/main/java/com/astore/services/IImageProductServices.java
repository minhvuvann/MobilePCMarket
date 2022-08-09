package com.astore.services;

import com.astore.model.Image;

import java.util.List;

public interface IImageProductServices {

    boolean insert(Image image);

    boolean update(Image image);

    boolean delete(int id);

    List<Image> getByProductId(int id);

    Image getById(int id);


    List<Image> getAll();

    List<Image> getAll(int start, int end);

    int countImage();


    List<Image> getByName(String imageName);

}
