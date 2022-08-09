package com.astore.services.implement;

import com.astore.dao.implement.DashboardDao;
import com.astore.model.Analysis;
import com.astore.model.Category;
import com.astore.services.IDashboardServices;

import java.util.Map;

public class DashboardServices implements IDashboardServices {
    private static DashboardServices dashboardServices;
    private DashboardDao dashboardDao;

    public DashboardServices() {
        dashboardDao = new DashboardDao();
    }

    public static DashboardServices getInstance(){
        if(dashboardServices == null){
            dashboardServices = new DashboardServices();
        }
        return dashboardServices;
    }

    @Override
    public Analysis analysisOrderByMonth(int month) {
        return dashboardDao.analysisOrderByMonth(month);
    }

    @Override
    public Map<Category, Integer> analysisCategoryByMonth() {
        return dashboardDao.analysisCategoryByMonth();
    }
}
