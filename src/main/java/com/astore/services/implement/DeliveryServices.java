package com.astore.services.implement;

import com.astore.dao.implement.ColorDao;
import com.astore.dao.implement.DeliveryDao;
import com.astore.model.Delivery;
import com.astore.services.IDeliveryServices;

import java.sql.SQLException;
import java.util.List;

public class DeliveryServices implements IDeliveryServices {

    private DeliveryDao deliveryDao ;
    private static DeliveryServices deliveryServices;
    private DeliveryServices(){
        this.deliveryDao = new DeliveryDao();
    }

    public static DeliveryServices getInstance(){
        if(deliveryServices == null){
            deliveryServices = new DeliveryServices();
        }
        return deliveryServices;
    }
    @Override
    public boolean insert(Delivery delivery) {
        return this.deliveryDao.insert(delivery);
    }

    @Override
    public boolean update(Delivery delivery) throws SQLException {
        return this.deliveryDao.update(delivery);
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return this.deliveryDao.delete(id);
    }

    @Override
    public Delivery getById(int id) throws SQLException {
        return this.deliveryDao.getById(id);
    }

    @Override
    public Delivery getByOrderId(int orderId) {
        return this.deliveryDao.getByOrderId(orderId);
    }

    @Override
    public List<Delivery> getAll() throws SQLException {
        return this.deliveryDao.getAll();
    }
}
