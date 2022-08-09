package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Admin", value = "/manage/admin")
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // tính toán
        List<User> users = UserServices.getInstance().getAllUserByGroup(1);
        request.setAttribute("users", users);

        // chuyển hướng
        request.getRequestDispatcher("/view/admin/admin.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
