package com.astore.dao;

import com.astore.model.Analysis;
import com.astore.model.Category;

import java.util.Map;

public interface IDashboardDao {
    Analysis analysisOrderByMonth(int month); // phân tích đơn hàng theo tháng
    Map<Category, Integer> analysisCategoryByMonth(); // phân tích loại sp theo tháng
}
