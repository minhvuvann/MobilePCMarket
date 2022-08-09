package com.astore.services.implement;

import com.astore.dao.implement.SlideDao;
import com.astore.model.Slide;
import com.astore.services.ISlideServices;

import java.util.List;

public class SlideServices implements ISlideServices {
    static SlideServices slideServices = null;
    private SlideDao slideDao;


    private SlideServices() {
        this.slideDao = new SlideDao();
    }

    public static SlideServices getInstance(){
        if(slideServices == null){
            slideServices = new SlideServices();
        }
        return  slideServices;
    }

@Override
    public boolean insert(Slide slide) {
        return this.slideDao.insert(slide);
    }

    @Override
    public boolean update(Slide slide) {
        return this.slideDao.update(slide);
    }

    @Override
    public boolean delete(int id) {
        return this.slideDao.delete(id);
    }

    @Override
    public Slide getById(int id) {
        return this.slideDao.getById(id);
    }

    @Override
    public List<Slide> getByName(String name) {
        return this.slideDao.getByName(name);
    }

    @Override
    public List<Slide> getAll() {
        return this.slideDao.getAll();
    }
}
