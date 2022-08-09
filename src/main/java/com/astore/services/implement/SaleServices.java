package com.astore.services.implement;

import com.astore.dao.implement.SaleDao;
import com.astore.model.Sale;
import com.astore.services.ISaleServices;

import java.util.List;

public class SaleServices implements ISaleServices {

    private SaleDao saleDao;

    @Override
    public boolean insert(Sale sale) {
        return saleDao.insert(sale);
    }

    @Override
    public boolean update(Sale sale) {
        return saleDao.update(sale);
    }

    @Override
    public boolean delete(int id) {
        return saleDao.delete(id);
    }

    @Override
    public Sale getById(int id) {
        return saleDao.getById(id);
    }

    @Override
    public List<Sale> getByName(String name) {
        return saleDao.getByName(name);
    }

    @Override
    public List<Sale> getAll() {
        return saleDao.getAll();
    }
}
