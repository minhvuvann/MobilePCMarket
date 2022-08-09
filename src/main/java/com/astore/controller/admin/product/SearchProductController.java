package com.astore.controller.admin.product;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchProductController", value = "/manage/search-product")
public class SearchProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String params = request.getParameter("params");

        List<Product> products = new ArrayList<Product>();

        try {
            int id = Integer.parseInt(params);
            Product product = ProductServices.getInstance().getById(id);
            products.add(product);
        }catch (NumberFormatException e) {
            products = ProductServices.getInstance().getByName(params);
        }


        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(products);
        response.getWriter().write(json);
    }
}
