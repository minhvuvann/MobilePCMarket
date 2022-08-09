package com.astore.services.implement;

import com.astore.dao.implement.HelpDao;
import com.astore.dao.implement.OrderDao;
import com.astore.model.Order;
import com.astore.services.IOrderServices;

import java.util.List;

public class OrderServices implements IOrderServices {
    private OrderDao o ;
    private static OrderServices orderServices;

    public OrderServices() {
        this.o = new OrderDao();
    }

    public static OrderServices getInstance() {
        if(orderServices == null){
            orderServices = new OrderServices();
        }
        return orderServices;
    }
    @Override
    public boolean insert(Order order) {
        return o.insert(order);
    }

    @Override
    public boolean delete(int id) {
        return o.delete(id);
    }

    @Override
    public boolean update(Order order) {
        return o.update(order);
    }

    @Override
    public List<Order> getAll() {
        return o.getAll();
    }

    @Override
    public Order getById(int id) {
        return o.getById(id);
    }


    @Override
    public List<Order> getByNameUser(String name) {
        return o.getByNameUser(name);
    }
}
