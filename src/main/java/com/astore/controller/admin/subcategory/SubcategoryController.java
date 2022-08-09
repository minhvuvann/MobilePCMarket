package com.astore.controller.admin.subcategory;

import com.astore.model.SubCategory;
import com.astore.services.implement.SubCategoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SubcategoryController", value = "/manage/subcategory")
public class SubcategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SubCategory> subCategories = SubCategoryServices.getInstance().getAll();
        request.setAttribute("subCategories",subCategories);
        request.getRequestDispatcher("/view/admin/show-subcategory.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
