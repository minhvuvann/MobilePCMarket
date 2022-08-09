package com.astore.controller.admin.inventory;

import com.astore.services.implement.InventoryServices;
import com.astore.services.implement.SlideServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteInventoryController", value = "/manage/delete-inventory")
public class DeleteInventoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        String id = request.getParameter("id");
        try {
            boolean check = InventoryServices.getInstance().delete(Integer.parseInt(id));
            if(check) {
                System.out.println(check);
                response.getWriter().write("done");

            }else{
                response.getWriter().write("fail");
            }
        }catch (NumberFormatException e) {
            response.getWriter().write("fail");
        }

        response.getWriter().close();
    }
}
