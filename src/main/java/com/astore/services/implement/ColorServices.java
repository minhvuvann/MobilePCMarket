package com.astore.services.implement;

import com.astore.dao.implement.ColorDao;
import com.astore.model.Color;
import com.astore.services.IColorServices;

import java.util.List;

public class ColorServices implements IColorServices {

    private ColorDao colorDao ;
    private static ColorServices colorServices;
    private ColorServices(){
        this.colorDao = new ColorDao();
    }

   public static ColorServices getInstance(){
        if(colorServices == null){
            colorServices = new ColorServices();
        }
        return colorServices;
   }

    @Override
    public boolean insert(Color color) {
        return colorDao.insert(color);
    }

    @Override
    public boolean update(Color color) {
        return colorDao.update(color);
    }

    @Override
    public boolean delete(int id) {
        return colorDao.delete(id);
    }

    @Override
    public Color getById(int id) {
        return colorDao.getById(id);
    }

    @Override
    public List<Color> getByName(String name) {
        return colorDao.getByName(name);
    }

    @Override
    public List<Color> getAll() {
        return colorDao.getAll();
    }
}
