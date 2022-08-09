package com.astore.controller.admin.image_product;

import com.astore.model.Image;
import com.astore.services.implement.ImageProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddImageProductController", value = "/manage/add-image-product")
public class AddImageProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-image-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("product_id");
        String url = request.getParameter("image_url");

        Image image = new Image();

        try{
            image.setProductId(Integer.parseInt(id));
            image.setUrl(url);
            boolean check = ImageProductServices.getInstance().insert(image);
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
        request.getRequestDispatcher("/view/admin/add-image-product.jsp").forward(request, response);
    }
}
