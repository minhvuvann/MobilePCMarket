package com.astore.controller.client.auth;

import com.astore.services.implement.ProductServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateAvatarCustomer", value = "/UpdateAvatarCustomer")
public class UpdateAvatarCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        String id = request.getParameter("id");
        String urlAvt = request.getParameter("urlAvt");
        System.out.println("do update avatar");
        try {
            int number = Integer.parseInt(id);
            boolean check = UserServices.getInstance().updateAvatarCustomer(number,urlAvt);
            if(check) {
                response.getWriter().write(urlAvt);
            }else{
                response.getWriter().write("");
            }
        }catch (Exception e){
            response.getWriter().write("");
        }
        response.getWriter().close();
    }
}
