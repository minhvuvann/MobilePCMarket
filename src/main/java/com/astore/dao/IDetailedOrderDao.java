package com.astore.dao;

import com.astore.model.DetailedOrder;

import java.util.List;

public interface IDetailedOrderDao {
    public boolean insert(DetailedOrder detailedOrder);

    public boolean delete(int id);

    public boolean update(DetailedOrder detailedOrder);

    public List<DetailedOrder> getAll();

    public DetailedOrder getById(int id);

    public List<DetailedOrder> getByNameProduct(String name);

    public List<DetailedOrder> getByIdOrder(int idOrder);
}
