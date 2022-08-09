package com.astore.services.implement;

import com.astore.dao.implement.InsuranceDao;
import com.astore.dao.implement.InventoryDao;
import com.astore.model.Insurance;
import com.astore.services.IInsuranceServices;

import java.util.List;

public class InsuranceServices implements IInsuranceServices {
    static InsuranceServices insuranceServices = null;
    private InsuranceDao insuranceDao;


    private InsuranceServices() {
        this.insuranceDao = new InsuranceDao();
    }

    public static InsuranceServices getInstance() {
        if (insuranceServices == null) {
            insuranceServices = new InsuranceServices();
        }
        return insuranceServices;
    }

    @Override
    public boolean insert(Insurance insurance) {
        return insuranceDao.insert(insurance);
    }

    @Override
    public boolean delete(int id) {
        return insuranceDao.delete(id);
    }

    @Override
    public boolean update(Insurance insurance) {
        return insuranceDao.update(insurance);
    }

    @Override
    public List<Insurance> getAll() {
        return insuranceDao.getAll();
    }

    @Override
    public Insurance getById(int id) {
        return insuranceDao.getById(id);
    }
}
