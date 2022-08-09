package com.astore.controller.admin.delivery;


import com.astore.model.Delivery;
import com.astore.services.implement.DeliveryServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UpdateDeliveryController", value = "/manage/update-delivery")
public class UpdateDeliveryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {
            Delivery delivery = DeliveryServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("delivery", delivery);
            System.out.println(delivery);
            request.getRequestDispatcher("/view/admin/edit-delivery.jsp").forward(request,response);
        }catch(Exception e){
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("delivery-id");
        String address = request.getParameter("delivery-address");
        String deliveryDate = request.getParameter("delivery-date");

        Delivery delivery = new Delivery();

        try{
            delivery.setId(Integer.parseInt(id));
            delivery.setAddress(address);
            delivery.setDeliveryDate(deliveryDate);

            boolean check = DeliveryServices.getInstance().update(delivery);
            if (check) {
//                List<Delivery> colors = DeliveryServices.getInstance().getAll();
                response.sendRedirect(request.getContextPath()+"/manage/delivery");
            } else {
                request.setAttribute("delivery", delivery);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("view/admin/edit-delivery.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("delivery", delivery);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("view/admin/edit-delivery.jsp").forward(request, response);
        }

    }
}
