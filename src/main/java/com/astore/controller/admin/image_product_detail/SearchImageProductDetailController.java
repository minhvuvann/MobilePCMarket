package com.astore.controller.admin.image_product_detail;

import com.astore.model.Image;
import com.astore.services.implement.ImageProductDetailServices;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchImageProductDetailController", value = "/manage/search-image-product-detail")
public class SearchImageProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String params = request.getParameter("params");
        List<Image> images = new ArrayList<Image>();

        try {
            int id = Integer.parseInt(params);
            images= ImageProductDetailServices.getInstance().getByProductId(id);
        }catch (NumberFormatException e) {
            images = ImageProductDetailServices.getInstance().getByName(params);
        }

        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(images);
        response.getWriter().write(json);
        response.getWriter().close();
    }
}
