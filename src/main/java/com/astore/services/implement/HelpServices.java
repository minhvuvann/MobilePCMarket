package com.astore.services.implement;

import com.astore.dao.implement.HelpDao;
import com.astore.model.Help;
import com.astore.services.IHelpServices;

import java.util.List;

public class HelpServices implements IHelpServices {
    private HelpDao h ;
    private static HelpServices helpServices;

    public HelpServices() {
        this.h = new HelpDao();
    }

    public static HelpServices getInstance() {
        if(helpServices == null){
            helpServices = new HelpServices();
        }
        return helpServices;
    }

    @Override
    public Help getById(int id) {
        return h.getById(id);
    }

    @Override
    public List<Help> getByName(String name) {
        return h.getByName(name);
    }

    @Override
    public List<Help> getListHelp() {
        return h.getListHelp();
    }

    @Override
    public boolean delete(int id) {
        return h.delete(id);
    }

    @Override
    public boolean insert(Help help) {
        return h.insert(help);
    }
}
