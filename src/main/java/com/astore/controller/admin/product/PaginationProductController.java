package com.astore.controller.admin.product;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PaginationProductController", value = "/manage/page-product")
public class PaginationProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("get page product");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        System.out.println(page +"page");
        try {
            int pageInt = Integer.parseInt(page) - 1;
            int start = pageInt *50 +1;
            int end = start +49;

            List<Product> products = ProductServices.getInstance().getAll(start, end);

            String json = null;
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            Gson gson = new Gson();
            json = gson.toJson(products);
            response.getWriter().write(json);


        }catch(NumberFormatException e){

        }
    }
}
