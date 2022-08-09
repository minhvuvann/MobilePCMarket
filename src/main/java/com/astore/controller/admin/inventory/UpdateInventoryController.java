package com.astore.controller.admin.inventory;

import com.astore.model.Inventory;
import com.astore.model.Slide;
import com.astore.services.implement.InventoryServices;
import com.astore.services.implement.SlideServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateInventoryController", value = "/manage/update-inventory")
public class UpdateInventoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        HttpSession ss = request.getSession();
        ss.setAttribute("id-update-inventory", id);
        try {
            Inventory inventory = InventoryServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("inventory", inventory);
            request.getRequestDispatcher("/view/admin/edit-inventory.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idSP = request.getParameter("product-id");
        HttpSession ss = request.getSession();
        String id = ss.getAttribute("id-update-inventory").toString();
        String count = request.getParameter("product-amount");
        Inventory inventory = new Inventory();

        try {
            inventory.setId(Integer.parseInt(id));
            inventory.setIdSP(Integer.parseInt(idSP));
            inventory.setCount(Long.parseLong(count));
            boolean check = InventoryServices.getInstance().update(inventory);
            System.out.println(check);
            if (check) {
                response.sendRedirect(request.getContextPath() + "/manage/inventory");
                System.out.println(check);

            } else {
                request.setAttribute("inventory", inventory);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/edit-inventory.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            request.setAttribute("inventory", inventory);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-inventory.jsp").forward(request, response);
        }

    }
}
