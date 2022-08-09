package com.astore.controller.admin.auth;

import com.astore.model.User;
import com.astore.services.implement.UserServices;
import com.astore.tool.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/manage/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("admin");
        if(user == null)
            request.getRequestDispatcher("/view/admin/login.jsp").forward(request, response);
        else
            response.sendRedirect(request.getContextPath()+"/manage/dashboard");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("admin-username") != null ? request.getParameter("admin-username") : "";
        String password = request.getParameter("admin-password") != null ? request.getParameter("admin-password") : "";
        String passHash = HashPassword.getInstance().hashPassword(password);
        User user = UserServices.getInstance().loginAdmin(username, passHash);
        if (user != null) {

            if (user.getUserName().equalsIgnoreCase(username) && user.getPassword().equalsIgnoreCase(passHash)) {
                HttpSession session = request.getSession();


                session.setAttribute("admin", user);



                System.out.println(user);
//                request.getRequestDispatcher("/ma").forward(request, response);
                response.sendRedirect(request.getContextPath()+"/manage/dashboard");
                return;

            }
        }
        user = new User();
        user.setUserName(username);
        user.setPassword(password);

        request.setAttribute("error", "Sai thông tin đăng nhập");
        request.setAttribute("user", user);
        request.getRequestDispatcher("/view/admin/login.jsp").forward(request, response);

    }
}
