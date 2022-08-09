package com.astore.controller.admin.subcategory;

import com.astore.model.SubCategory;
import com.astore.services.implement.SubCategoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateSubCategoryController", value = "/manage/update-subcategory")
public class UpdateSubCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {
            SubCategory subCategory = SubCategoryServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("subcategory", subCategory);
            request.getRequestDispatcher("/view/admin/edit-subcategory.jsp").forward(request, response);
        } catch (Exception e) {
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("sub_category_id");
        String idCategory = request.getParameter("category_id");
        String name = request.getParameter("sub_category_name");
        SubCategory c = new SubCategory();
        try {
            c.setId(Integer.parseInt(id));
            c.setIdCategory(Integer.parseInt(idCategory));
            c.setName(name);

            boolean check = SubCategoryServices.getInstance().update(c);

            if (check) {
                response.sendRedirect(request.getContextPath()+"/manage/subcategory");
            } else {
                request.setAttribute("subcategory", c);
                request.setAttribute("error", "Đã xãy ra lỗi");
                request.getRequestDispatcher("view/admin/edit-subcategory.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            request.setAttribute("subcategory", c);
            request.setAttribute("error", "Đã xãy ra lỗi");
            request.getRequestDispatcher("view/admin/edit-subcategory.jsp").forward(request, response);
        }

    }
}
