package com.astore.controller.admin.catorogy;

import com.astore.model.Category;
import com.astore.services.implement.CategoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateCategoryController", value = "/manage/update-category")
public class UpdateCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Category category = CategoryServices.getInstance().getById(Integer.parseInt(id));
        request.setAttribute("category", category);
        request.getRequestDispatcher("/view/admin/edit-category.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("category_id");
        String name = request.getParameter("category_name");
        Category c = null;
        try {
            c = new Category(Integer.parseInt(id), name);
            boolean check = CategoryServices.getInstance().update(c);
            if(check){
                response.sendRedirect(request.getContextPath()+"manage/category");
            }else {
                request.setAttribute("category", c);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/edit-category.jsp").forward(request,response);
            }
        }catch (NumberFormatException e){
            request.setAttribute("category", c);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-category.jsp").forward(request,response);
        }




    }
}
