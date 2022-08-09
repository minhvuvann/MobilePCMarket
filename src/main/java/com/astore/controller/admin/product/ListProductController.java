package com.astore.controller.admin.product;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProductController", value = "/manage/list-product")
public class ListProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int countProduct = ProductServices.getInstance().countProduct();
        int totalPages = 0;
        if(countProduct % 50 > 0){
            totalPages = countProduct / 50 +1;
        }else
            totalPages = countProduct / 50;
        System.out.println(countProduct+ " "+totalPages);
        List<Product> products = ProductServices.getInstance().getAll(1, 50);
        request.setAttribute("products", products);
        request.setAttribute("totalPages", totalPages);

        request.getRequestDispatcher("/view/admin/show-product.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
