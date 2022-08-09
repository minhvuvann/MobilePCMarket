package com.astore.controller.admin.detail_order;

import com.astore.model.DetailedOrder;
import com.astore.model.Order;
import com.astore.services.implement.DetailedOrderServices;
import com.astore.services.implement.OrderServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchDetailOrderController", value = "/manage/search-detail-order")
public class SearchDetailOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json");
        String params  = request.getParameter("params");
        List<DetailedOrder> listOrder= new ArrayList<>();

        try {
            int id = Integer.parseInt(params);
            listOrder.add(DetailedOrderServices.getInstance().getById(id));
        }catch (NumberFormatException e) {
            listOrder=DetailedOrderServices.getInstance().getByNameProduct(params);
        }

        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(listOrder);
        response.getWriter().write(json);
        response.getWriter().close();

    }
}
