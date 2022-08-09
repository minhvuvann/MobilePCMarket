package com.astore.controller.admin.subcategory;

import com.astore.model.SubCategory;
import com.astore.services.implement.SubCategoryServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchSubCategoryController", value = "/manage/search-subcategory")
public class SearchSubCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String params = request.getParameter("params");

        System.out.println(params);


        List<SubCategory> subcategories = new ArrayList<SubCategory>();

        try {
            int id = Integer.parseInt(params);
            SubCategory subCategory = SubCategoryServices.getInstance().getById(id);
            subcategories.add(subCategory);
        }catch (NumberFormatException e) {
            subcategories = SubCategoryServices.getInstance().getByName(params);
        }


        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(subcategories);
        response.getWriter().write(json);
        response.getWriter().close();

    }
}
