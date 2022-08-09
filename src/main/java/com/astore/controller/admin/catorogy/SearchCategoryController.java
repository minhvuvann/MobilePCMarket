package com.astore.controller.admin.catorogy;

import com.astore.model.Category;
import com.astore.services.implement.CategoryServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchCategoryController", value = "/manage/search-category")
public class SearchCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String params = request.getParameter("params");


        List<Category> categories = new ArrayList<Category>();

        try {
            int id = Integer.parseInt(params);
            Category category = CategoryServices.getInstance().getById(id);
            categories.add(category);
        }catch (NumberFormatException e) {
            categories = CategoryServices.getInstance().getByName(params);
        }


        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(categories);
        response.getWriter().write(json);

    }
}
