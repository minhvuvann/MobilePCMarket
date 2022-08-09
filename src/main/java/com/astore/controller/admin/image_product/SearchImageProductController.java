package com.astore.controller.admin.image_product;

import com.astore.model.Image;
import com.astore.services.implement.ImageProductServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchImageProductController", value = "/manage/search-image-product")
public class SearchImageProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String params = request.getParameter("params");
        List<Image> images = new ArrayList<Image>();

        try {
            int id = Integer.parseInt(params);
            images= ImageProductServices.getInstance().getByProductId(id);
        }catch (NumberFormatException e) {
            images = ImageProductServices.getInstance().getByName(params);
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
