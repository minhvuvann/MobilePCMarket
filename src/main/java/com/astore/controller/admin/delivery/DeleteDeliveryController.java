package com.astore.controller.admin.delivery;

import com.astore.services.implement.DeliveryServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteDeliveryController", value = "/manage/delete-delivery")
public class DeleteDeliveryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        String id = request.getParameter("id");
        try {
            boolean check = DeliveryServices.getInstance().delete(Integer.parseInt(id));
            if(check) {
                response.getWriter().write("done");
            }else{
                response.getWriter().write("fail");
            }
        }catch (Exception e) {
            response.getWriter().write("fail");
        }

        response.getWriter().close();
    }
}
