package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;
import com.astore.tool.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateUser", value = "/manage/update-user")
public class UpdateUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        try {
            int number = Integer.parseInt(id);
            User user = UserServices.getInstance().getById(2, number);

            if(user != null) {
                request.setAttribute("user", user);
                request.getRequestDispatcher("/view/admin/edit-user.jsp").forward(request, response);
            }

        }catch (Exception e){
            response.sendError(404);
        }
    }

    public UpdateUserController() {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("user-id");
        String fullname = request.getParameter("user-fullname");
        String email = request.getParameter("user-email");
        String phone = request.getParameter("user-phone");
        String userName = request.getParameter("user-userName");
        String gender = request.getParameter("user-gender");
        String birthday = request.getParameter("user-birthday");
        String address = request.getParameter("user-address");
        String photoUrl = request.getParameter("user-photoUrl");
        String password = request.getParameter("user-password");
        String passHash = HashPassword.getInstance().hashPassword(password);

        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setName(fullname);
        user.setEmail(email);
        user.setPhone(phone);
        user.setUserName(userName);
        user.setGender(gender);
        user.setBirthday(birthday);
        user.setAddress(address);
        user.setAvatar(photoUrl);
        user.setPassword(passHash);

        boolean check = UserServices.getInstance().updateUser(user);
        if(check){
            response.sendRedirect(request.getContextPath()+"/manage/user");
        }else{
//            user = null;
//            user = UserServices.getInstance().getById(2, Integer.parseInt(id));
//            if(user != null) {
                request.setAttribute("user", user);
                request.getRequestDispatcher("/view/admin/edit-user.jsp").forward(request, response);
//            }
        }

        System.out.println(birthday);
    }
}
