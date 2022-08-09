package com.astore.controller.client;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Payment", value = "/Payment")
public class Payment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCart = request.getParameter("id");



        ProductServices ps = new ProductServices();
        List<Product> watch = ps.getProductByIdCate(4, 0, 20);
        request.setAttribute("watch", watch);
        request.getRequestDispatcher("view/client/products-watch.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
