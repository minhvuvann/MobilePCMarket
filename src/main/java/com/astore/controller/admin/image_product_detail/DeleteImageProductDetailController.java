package com.astore.controller.admin.image_product_detail;

import com.astore.services.implement.ImageProductDetailServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteImageProductDetailController", value = "/manage/delete-image-product-detail")
public class DeleteImageProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        String id = request.getParameter("id");
        try {
            boolean check = ImageProductDetailServices.getInstance().delete(Integer.parseInt(id));
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
