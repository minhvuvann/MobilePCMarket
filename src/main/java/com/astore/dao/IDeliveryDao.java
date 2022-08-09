package com.astore.dao;


import com.astore.model.Delivery;

import java.sql.SQLException;
import java.util.List;

public interface IDeliveryDao {
    boolean insert(Delivery delivery);

    boolean update(Delivery delivery) throws SQLException;

    boolean delete(int id) throws SQLException;

    Delivery getById(int id) throws SQLException; // tìm kiếm



    Delivery getByOrderId(int orderId); // // tìm kiếm

    List<Delivery> getAll() throws SQLException; // dùng trong admin
}
