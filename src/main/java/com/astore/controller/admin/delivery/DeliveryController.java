package com.astore.controller.admin.delivery;

import com.astore.model.Color;
import com.astore.model.Delivery;
import com.astore.services.implement.ColorServices;
import com.astore.services.implement.DeliveryServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "DeliveryController", value = "/manage/delivery")
public class DeliveryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Delivery> deliveries = null;
        try {
            deliveries = DeliveryServices.getInstance().getAll();
            request.setAttribute("deliveries",deliveries);
            request.getRequestDispatcher("/view/admin/show-delivery.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
