package com.astore.controller.admin.subcategory;

import com.astore.model.SubCategory;
import com.astore.services.implement.SubCategoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddSubCategoryController", value = "/manage/add-subcategory")
public class AddSubCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-subcategory.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id = request.getParameter("sub_category_id");
        String idCategory = request.getParameter("category_id");
        String name = request.getParameter("sub_category_name");

        SubCategory subCategory = new SubCategory();

        try {
            subCategory.setName(name);
            subCategory.setIdCategory(Integer.parseInt(idCategory));
//            subCategory.setId(Integer.parseInt(id));

            boolean check = SubCategoryServices.getInstance().insert(subCategory);
            if(check) {
                request.setAttribute("success", "Thêm thành công!");
            }else{
                request.setAttribute("subcategory", subCategory);
                request.setAttribute("error", "Đã xãy ra lỗi");

            }
        }catch (Exception e) {
            request.setAttribute("subcategory", subCategory);
            request.setAttribute("error", "Đã xãy ra lỗi");
        }
        // chuyển hướng
        request.getRequestDispatcher("/view/admin/add-subcategory.jsp").forward(request,response);
    }
}
