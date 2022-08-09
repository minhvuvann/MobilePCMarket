package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;
import com.astore.tool.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddUserController", value = "/manage/add-user")
public class AddUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.getRequestDispatcher("/view/admin/add-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id = request.getParameter("user-id");
        String fullname = request.getParameter("user-name");
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

//        user.setId(Integer.parseInt(id));
        user.setUserName(userName);
        user.setName(fullname);
        user.setEmail(email);
        user.setGender(gender);
        user.setAvatar(photoUrl);
        user.setPhone(phone);
        user.setPassword(passHash);
        user.setBirthday(birthday);
        user.setAddress(address);
        System.out.println(user);
        boolean check = UserServices.getInstance().insertUser(user);
        if (check) {
            request.setAttribute("success", "Thêm thành công!");
        } else {
            request.setAttribute("user", user);
            request.setAttribute("error", "Đã xãy ra lỗi");
        }
        request.getRequestDispatcher("/view/admin/add-user.jsp").forward(request, response);
    }



}
