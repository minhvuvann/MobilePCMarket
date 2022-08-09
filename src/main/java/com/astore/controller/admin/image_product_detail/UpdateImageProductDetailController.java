package com.astore.controller.admin.image_product_detail;

import com.astore.model.Image;
import com.astore.services.implement.ImageProductDetailServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateImageProductDetailController", value = "/manage/update-image-product-detail")
public class UpdateImageProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {
            Image image = ImageProductDetailServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("image", image);
            request.getRequestDispatcher("/view/admin/edit-image-product-detail.jsp").forward(request,response);
        }catch(NumberFormatException e){
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("image_id");
        String product_id = request.getParameter("product_id");
        String url = request.getParameter("image_url");

        Image image = new Image();

        try{
            image.setId(Integer.parseInt(id));
            image.setProductId(Integer.parseInt(product_id));
            image.setUrl(url);
            boolean check = ImageProductDetailServices.getInstance().update(image);
            if (check) {
                response.sendRedirect(request.getContextPath()+"/manage/image-product-detail");
            } else {
                request.setAttribute("image", image);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/edit-image-product-detail.jsp").forward(request, response);
            }
        }catch(NumberFormatException e){
            request.setAttribute("image", image);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-image-product-detail.jsp").forward(request, response);
        }

    }
}
