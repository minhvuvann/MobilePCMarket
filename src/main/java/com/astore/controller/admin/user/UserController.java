package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserController", value = "/manage/user")
public class UserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = UserServices.getInstance().getAllUserByGroup(2);
        System.out.println(users);
        request.setAttribute("users", users);
        request.getRequestDispatcher("/view/admin/user.jsp").forward(request,response);

//        response.sendRedirect("admin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
