package com.astore.services.implement;

import com.astore.dao.implement.SlideDao;
import com.astore.dao.implement.StoreDao;
import com.astore.model.Store;
import com.astore.services.IStoreServices;

import java.util.List;

public class StoreServices implements IStoreServices {
    static StoreServices storeServices = null;
    private StoreDao storeDao;


    private StoreServices() {
        this.storeDao = new StoreDao();
    }

    public static StoreServices getInstance(){
        if(storeServices == null){
            storeServices = new StoreServices();
        }
        return storeServices;
    }
    @Override
    public boolean insert(Store store) {
        return storeDao.insert(store);
    }

    @Override
    public boolean update(Store store) {
        return storeDao.update(store);
    }

    @Override
    public boolean delete(int id) {
        return storeDao.delete(id);
    }

    @Override
    public Store getById(int id) {
        return storeDao.getById(id);
    }

    @Override
    public List<Store> getAll() {
        return storeDao.getAll();
    }
}
