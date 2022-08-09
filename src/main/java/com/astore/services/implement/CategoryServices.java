package com.astore.services.implement;

import com.astore.dao.implement.CategoryDao;
import com.astore.model.Category;
import com.astore.services.ICategoryServices;

import java.util.List;

public class CategoryServices implements ICategoryServices {
    private static  CategoryDao categoryDao;
    private static  CategoryServices categoryServices;

    private CategoryServices(){
        categoryDao = new CategoryDao();
    }

    public static CategoryServices getInstance(){
        if(categoryDao == null){
            categoryServices = new CategoryServices();
        }
        return categoryServices;
    }

    @Override
    public boolean insert(Category category) {
        return categoryDao.insert(category);
    }

    @Override
    public boolean update(Category category) {
        return categoryDao.update(category);
    }

    @Override
    public boolean delete(int id) {
        return categoryDao.delete(id);
    }

    @Override
    public Category getById(int id) {
        return categoryDao.getById(id);
    }

    @Override
    public Category getByProductId(int id) {
        return categoryDao.getByProductId(id);
    }

    @Override
    public List<Category> getByName(String name) {
        return categoryDao.getByName(name);
    }

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }
}
