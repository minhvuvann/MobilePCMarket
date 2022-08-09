package com.astore.controller.admin.delivery;

import com.astore.model.Color;
import com.astore.model.Delivery;
import com.astore.services.implement.ColorServices;
import com.astore.services.implement.DeliveryServices;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchDeliveryController", value = "/manage/search-delivery")
public class SearchDeliveryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String params = request.getParameter("params");
        List<Delivery> deliveries = new ArrayList<Delivery>();

        try {
            int id = Integer.parseInt(params);
            Delivery d= DeliveryServices.getInstance().getByOrderId(id);
            deliveries.add(d);
        }catch (Exception e) {

        }

        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(deliveries);
        response.getWriter().write(json);
        response.getWriter().close();
    }
}
