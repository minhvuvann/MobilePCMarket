package com.astore.services;

import com.astore.model.Analysis;
import com.astore.model.Category;

import java.util.Map;

public interface IDashboardServices {

    Analysis analysisOrderByMonth(int month); // phân tích đơn hàng theo tháng
    Map<Category, Integer> analysisCategoryByMonth(); // phân tích loại sp theo tháng

}
