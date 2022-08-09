package com.astore.controller.admin.order;


import com.astore.model.Order;
import com.astore.services.implement.OrderServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddOrderController", value = "/manage/add-order")
public class AddOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String idKH = request.getParameter("user-id");
        String name = UserServices.getInstance().getById(2,Integer.valueOf(idKH)).getUserName();
        String priceOrder = request.getParameter("order-price");
        String dateOrder = request.getParameter("order-date");

        Order order = new Order();

        try {
            order.setNameUser(name);
            order.setIdUser(Integer.valueOf(idKH));
            order.setPriceOrder(Double.valueOf(priceOrder));
            order.setDateAtOrder(dateOrder);
            if (UserServices.getInstance().getById(2, Integer.valueOf(idKH)) == null) {
                request.setAttribute("order", order);
                request.setAttribute("error", "Mã khách hàng  không tồn tại");
            } else {
                boolean check = OrderServices.getInstance().insert(order);
                System.out.println(check);
                if (check) {
                    request.setAttribute("success", "Thêm thành công!");
                    System.out.println(check);
                } else {
                    request.setAttribute("order", order);
                    request.setAttribute("error", "Đã có lỗi xảy ra!");
                }
            }
        } catch (NumberFormatException e) {
            request.setAttribute("order", order);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
        }
        request.getRequestDispatcher("/view/admin/add-order.jsp").forward(request, response);
    }
}
