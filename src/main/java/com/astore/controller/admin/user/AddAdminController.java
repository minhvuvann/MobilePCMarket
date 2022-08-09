package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;
import com.astore.tool.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddAdminController", value = "/manage/add-admin")
public class AddAdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("admin-username");
        String name = request.getParameter("admin-name");
        String password = request.getParameter("admin-password");

        String passHash = HashPassword.getInstance().hashPassword(password);



        User user = new User();
        user.setUserName(username);
        user.setName(name);
        user.setPassword(passHash);


        boolean check = UserServices.getInstance().insertAdmin(user);

        if(check) {
            System.out.println("insert admin ok");
            request.setAttribute("success", "Thêm thành công!");
        }else{
            request.setAttribute("user", user);
            request.setAttribute("error", "Đã xãy ra lỗi");
        }
        // chuyển hướng
        request.getRequestDispatcher("/view/admin/add-admin.jsp").forward(request,response);
    }
}
