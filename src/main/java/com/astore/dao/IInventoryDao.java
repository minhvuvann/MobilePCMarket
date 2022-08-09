package com.astore.dao;

import com.astore.model.Inventory;

import java.util.List;

public interface IInventoryDao {
    public boolean insert(Inventory inventory);
    public boolean delete(int id);
    public boolean update(Inventory inventory);
    public List<Inventory> getAll();
    public Inventory getById(int id);

    List<Inventory> getByIdSP(int idSP);

    List<Inventory> getByNameSP(String name);
}
