package com.astore.dao;

import com.astore.model.Order;

import java.util.List;

public interface IOrderDao {
    public boolean insert(Order order);
    public boolean delete(int id);
    public boolean update(Order order);
    public List<Order> getAll();
    public Order getById(int id);
    public List<Order> getByNameUser(String name);
}
