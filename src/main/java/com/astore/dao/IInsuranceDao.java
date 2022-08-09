package com.astore.dao;

import com.astore.model.Insurance;

import java.util.List;

public interface IInsuranceDao {
    public boolean insert(Insurance insurance);
    public boolean delete(int id);
    public boolean update(Insurance insurance);
    public List<Insurance> getAll();
    public Insurance getById(int id);
}
