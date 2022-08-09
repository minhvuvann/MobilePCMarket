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

@WebServlet(name = "AddImageProductDetailController", value = "/manage/add-image-product-detail")
public class AddImageProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-image-product-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("product_id");
        String url = request.getParameter("image_url");

        Image image = new Image();

        try{
            image.setProductId(Integer.parseInt(id));
            image.setUrl(url);
            boolean check = ImageProductDetailServices.getInstance().insert(image);
            if (check) {
                request.setAttribute("success", "Thêm thành công!");
            } else {
                request.setAttribute("image", image);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
            }
        }catch(NumberFormatException e){
            request.setAttribute("image", image);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
        }
        request.getRequestDispatcher("/view/admin/add-image-product-detail.jsp").forward(request, response);
    }
}
