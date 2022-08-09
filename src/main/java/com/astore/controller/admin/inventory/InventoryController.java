package com.astore.controller.admin.inventory;

import com.astore.services.implement.InventoryServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "InventoryController", value = "/manage/inventory")
public class InventoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listInventory", InventoryServices.getInstance().getAll());
        System.out.println(InventoryServices.getInstance().getAll().toString());
        request.getRequestDispatcher("/view/admin/show-inventory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
