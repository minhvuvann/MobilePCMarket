package com.astore.services.implement;

import com.astore.dao.implement.ImageProductDao;
import com.astore.model.Image;
import com.astore.services.IImageProductServices;

import java.util.List;

public class ImageProductServices implements IImageProductServices{

    private static ImageProductServices imageProductServices;
    private ImageProductDao imageProductDao;

    private ImageProductServices() {
        this.imageProductDao = new ImageProductDao();
    }

    public static ImageProductServices getInstance(){
        if(imageProductServices == null){
            imageProductServices = new ImageProductServices();
        }
        return imageProductServices;
    }

    @Override
    public boolean insert(Image image) {
        return imageProductDao.insert(image);
    }

    @Override
    public boolean update(Image image) {
        return imageProductDao.update(image);
    }

    @Override
    public boolean delete(int id) {
        return imageProductDao.delete(id);
    }

    @Override
    public List<Image> getByProductId(int id) {
        return imageProductDao.getByProductId(id);
    }

    @Override
    public Image getById(int id) {
        return imageProductDao.getById(id);
    }

    @Override
    public List<Image> getAll() {
        return imageProductDao.getAll();
    }

    @Override
    public List<Image> getAll(int start, int end) {
        return imageProductDao.getAll(start, end);
    }

    @Override
    public int countImage() {
        return imageProductDao.countImage();
    }

    @Override
    public List<Image> getByName(String imageName) {
        return imageProductDao.getByName(imageName);
    }
}
