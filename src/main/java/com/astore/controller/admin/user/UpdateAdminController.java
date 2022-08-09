package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;
import com.astore.tool.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateAdminController", value = "/manage/update-admin")
public class UpdateAdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        try {
            int number = Integer.parseInt(id);
            User user = UserServices.getInstance().getById(1,number);

            if(user != null) {
                request.setAttribute("user", user);
                request.getRequestDispatcher("/view/admin/edit-admin.jsp").forward(request, response);
            }

        }catch (Exception e){
            response.sendError(404);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("user-id");
        String name = request.getParameter("user-name");
        String password = request.getParameter("user-password");
        String passHash = HashPassword.getInstance().hashPassword(password);


        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setName(name);
        user.setPassword(passHash);

        boolean check = UserServices.getInstance().updateAdmin(user);
        if(check){
            response.sendRedirect(request.getContextPath()+"/manage/admin");
        }else{
//            user = null;
//            user = UserServices.getInstance().getById(1,Integer.parseInt(id));
//            if(user != null) {
                request.setAttribute("user", user);
                request.getRequestDispatcher("/view/admin/edit-admin.jsp").forward(request, response);
//            }
        }

    }
}
