package com.astore.controller.admin.detail_order;

import com.astore.services.implement.DetailedOrderServices;
import com.astore.services.implement.InventoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailOrderController", value = "/manage/order-detail")
public class DetailOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idOder = request.getParameter("idOrder");
        request.setAttribute("listOrderDetail", DetailedOrderServices.getInstance().getByIdOrder(Integer.valueOf(idOder)));
        System.out.println(DetailedOrderServices.getInstance().getById(Integer.valueOf(idOder)));
        request.getRequestDispatcher("/view/admin/show-order-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
