package com.astore.controller.client.auth;

import com.astore.model.Store;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SetForgotPWD", value = "/setForgotPWD")
public class SetForgotPWD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore", storeName);

        String pwdForgot = request.getParameter("password-set-forgotPWD");
        HttpSession ss = request.getSession();
        String userForgot = ss.getAttribute("userNameForgotPWD").toString();
        UserServices.getInstance().updateForgotPwd(userForgot, pwdForgot);
        request.setAttribute("setPWDForgotSuccess", "set-PWD-forgot-success");
        request.setAttribute("loginSuccessForgotPwd", "<button onclick=\"signInNowForgotPWD()\">Đăng nhập ngay</button>");
        request.getRequestDispatcher("setPWD").forward(request, response);

    }
}
