package com.astore.controller.admin.inventory;

import com.astore.model.Inventory;
import com.astore.model.Slide;
import com.astore.services.implement.InventoryServices;
import com.astore.services.implement.SlideServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddInventoryController", value = "/manage/add-inventory")
public class AddInventoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-inventory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idSp = request.getParameter("product-id");
        String count = request.getParameter("product-amount");

        Inventory inventory = new Inventory();

        try{
            inventory.setIdSP(Integer.parseInt(idSp));
            inventory.setCount(Long.parseLong(count));
            boolean check = InventoryServices.getInstance().insert(inventory);
            System.out.println(check);
            if (check) {
                request.setAttribute("success", "Thêm thành công!");
                System.out.println(check);
            } else {
                request.setAttribute("inventory", inventory);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
            }
        }catch(NumberFormatException e){
            request.setAttribute("inventory", inventory);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
        }
        request.getRequestDispatcher("/view/admin/add-inventory.jsp").forward(request, response);
    }
}
