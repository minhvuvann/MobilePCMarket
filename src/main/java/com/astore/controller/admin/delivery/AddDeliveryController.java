package com.astore.controller.admin.delivery;

import com.astore.model.Delivery;
import com.astore.services.implement.DeliveryServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddDeliveryController", value = "/manage/add-delivery")
public class AddDeliveryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-delivery.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderId = request.getParameter("order-id");
        String address = request.getParameter("delivery-address");
        String deliveryDate = request.getParameter("delivery-date");


        Delivery delivery = new Delivery();

        try {
            delivery.setOrderId(Integer.parseInt(orderId));
            delivery.setAddress(address);
            delivery.setDeliveryDate(deliveryDate);
            boolean check = DeliveryServices.getInstance().insert(delivery);
            if (check) {
                request.setAttribute("success", "Thêm thành công!");
                request.getRequestDispatcher("/view/admin/add-delivery.jsp").forward(request, response);
            } else {
                request.setAttribute("delivery", delivery);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/add-delivery.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            request.setAttribute("delivery", delivery);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/add-delivery.jsp").forward(request, response);
        }

    }
}
