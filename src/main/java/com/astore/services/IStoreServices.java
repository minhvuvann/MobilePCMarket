package com.astore.services;

import com.astore.model.Slide;
import com.astore.model.Store;

import java.util.List;

public interface IStoreServices {
    boolean insert(Store store);

    boolean update(Store store);

    boolean delete(int id);

    Store getById(int id);

    List<Store> getAll();
}
