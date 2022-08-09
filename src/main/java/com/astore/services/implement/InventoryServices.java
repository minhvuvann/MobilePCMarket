package com.astore.services.implement;

import com.astore.dao.implement.InventoryDao;
import com.astore.dao.implement.UserDao;
import com.astore.model.Inventory;
import com.astore.services.IInventoryServices;

import java.util.List;

public class InventoryServices implements IInventoryServices {
    static InventoryServices inventoryServices = null;
    private InventoryDao inventoryDao;


    private InventoryServices() {
        this.inventoryDao = new InventoryDao();
    }

    public static InventoryServices getInstance(){
        if(inventoryServices == null){
            inventoryServices = new InventoryServices();
        }
        return  inventoryServices;
    }


    @Override
    public boolean insert(Inventory inventory) {
        return inventoryDao.insert(inventory) ;
    }

    @Override
    public boolean delete(int id) {
        return inventoryDao.delete(id);
    }

    @Override
    public boolean update(Inventory inventory) {
        return inventoryDao.update(inventory);
    }

    @Override
    public List<Inventory> getAll() {
        return inventoryDao.getAll();
    }

    @Override
    public Inventory getById(int id) {
        return inventoryDao.getById(id);
    }

    @Override
    public List<Inventory> getByIdSP(int idSP) {
        return inventoryDao.getByIdSP(idSP);
    }

    @Override
    public List<Inventory> getByNameSP(String name) {
        return inventoryDao.getByNameSP(name);
    }


}
