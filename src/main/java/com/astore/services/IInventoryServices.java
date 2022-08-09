package com.astore.services;

import com.astore.model.Inventory;

import java.util.List;

public interface IInventoryServices {
    public boolean insert(Inventory inventory);
    public boolean delete(int id);
    public boolean update(Inventory inventory);
    public List<Inventory> getAll();
    public Inventory getById(int id);
    public List<Inventory> getByIdSP(int idSP);
    public List<Inventory> getByNameSP(String name);
}
