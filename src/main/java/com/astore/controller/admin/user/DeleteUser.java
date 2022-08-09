package com.astore.controller.admin.user;

import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/manage/delete-user")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        String id = request.getParameter("id");

        try {
            int number = Integer.parseInt(id);
            boolean check = UserServices.getInstance().delete(number);
            if(check) {
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
