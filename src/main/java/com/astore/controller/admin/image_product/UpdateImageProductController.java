package com.astore.controller.admin.image_product;

import com.astore.model.Image;
import com.astore.services.implement.ImageProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateImageProductController", value = "/manage/update-image-product")
public class UpdateImageProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {
            Image image = ImageProductServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("image", image);
            request.getRequestDispatcher("/view/admin/edit-image-product.jsp").forward(request,response);
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
            boolean check = ImageProductServices.getInstance().update(image);
            if (check) {
                List<Image> images = ImageProductServices.getInstance().getAll();
                response.sendRedirect(request.getContextPath()+"/manage/image-product");
            } else {
                request.setAttribute("image", image);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/edit-image-product.jsp").forward(request, response);
            }
        }catch(NumberFormatException e){
            request.setAttribute("image", image);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-image-product.jsp").forward(request, response);
        }

    }
}
