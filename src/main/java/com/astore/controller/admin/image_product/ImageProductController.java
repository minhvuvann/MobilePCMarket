package com.astore.controller.admin.image_product;

import com.astore.model.Image;
import com.astore.services.implement.ImageProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ImageProductController", value = "/manage/image-product")
public class ImageProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int count = ImageProductServices.getInstance().countImage();
        int totalPages = 0;
        if(count % 50 > 0){
            totalPages = count / 50 +1;
        }else
            totalPages = count / 50;
        System.out.println(count+ " "+totalPages);
        List<Image> images = ImageProductServices.getInstance().getAll(1, 50);
        request.setAttribute("totalPages", totalPages);

        request.setAttribute("images", images);

        request.getRequestDispatcher("/view/admin/show-image-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
