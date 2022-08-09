package com.astore.controller.admin.catorogy;

import com.astore.services.implement.CategoryServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteCategoryController", value = "/manage/delete-category")
public class DeleteCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        String id = request.getParameter("id");
        try {
            boolean check = CategoryServices.getInstance().delete(Integer.parseInt(id));
            if(check) {
                response.getWriter().write("done");

            }else{
                response.getWriter().write("fail");
            }
        }catch (NumberFormatException e) {
            response.getWriter().write("fail");
        }

        response.getWriter().close();
    }
}
