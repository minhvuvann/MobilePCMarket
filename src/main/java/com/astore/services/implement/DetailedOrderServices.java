package com.astore.services.implement;

import com.astore.dao.implement.DetailedOrderDao;
import com.astore.model.DetailedOrder;
import com.astore.services.IDetailedOrderServices;

import java.util.List;

public class DetailedOrderServices implements IDetailedOrderServices {
    private DetailedOrderDao d;
    private static DetailedOrderServices detailedOrderServices;

    public DetailedOrderServices() {
        this.d = new DetailedOrderDao();
    }

    public static DetailedOrderServices getInstance() {
        if(detailedOrderServices == null){
            detailedOrderServices = new DetailedOrderServices();
        }
        return detailedOrderServices;
    }

    @Override
    public boolean insert(DetailedOrder detailedOrder) {
        return d.insert(detailedOrder);
    }

    @Override
    public boolean delete(int id) {
        return d.delete(id);
    }

    @Override
    public boolean update(DetailedOrder detailedOrder) {
        return d.update(detailedOrder);
    }

    @Override
    public List<DetailedOrder> getAll() {
        return d.getAll();
    }

    @Override
    public DetailedOrder getById(int id) {
        return d.getById(id);
    }

    @Override
    public List<DetailedOrder> getByNameProduct(String name) {
        return d.getByNameProduct(name);
    }

    @Override
    public List<DetailedOrder> getByIdOrder(int idOrder) {
        return d.getByIdOrder(idOrder);
    }


}
