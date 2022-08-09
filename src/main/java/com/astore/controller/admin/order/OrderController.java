package com.astore.controller.admin.order;

import com.astore.dao.implement.OrderDao;
import com.astore.services.implement.InventoryServices;
import com.astore.services.implement.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "OrderController", value = "/manage/order")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listOrder", OrderServices.getInstance().getAll());
        System.out.println(OrderServices.getInstance().getAll().toString());
        request.getRequestDispatcher("/view/admin/show-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
