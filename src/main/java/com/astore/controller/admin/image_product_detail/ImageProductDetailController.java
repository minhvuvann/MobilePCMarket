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

@WebServlet(name = "ImageProductDetailController", value = "/manage/image-product-detail")
public class ImageProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int count = ImageProductDetailServices.getInstance().countImage();
        int totalPages = 0;
        if(count % 50 > 0){
            totalPages = count / 50 +1;
        }else
            totalPages = count / 50;
        System.out.println(count+ " "+totalPages);

        List<Image> images = ImageProductDetailServices.getInstance().getAll(1, 50);
        request.setAttribute("images", images);
        request.setAttribute("totalPages", totalPages);

        request.getRequestDispatcher("/view/admin/show-image-product-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
