package com.astore.controller.client.auth;

import com.astore.model.Store;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserLogin", value = "/userLogin")
public class UserLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
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

        String userName = request.getParameter("email-login");
        String pwd = request.getParameter("password-login");
        HttpSession ss = request.getSession();
        if (UserServices.getInstance().checkLogin(userName, pwd) != null) {
            System.out.println("UserName: "+userName + " " + pwd + " " + UserServices.getInstance().checkLogin(userName, pwd).getPassword());
            if (UserServices.getInstance().roleLogin(2, userName, pwd)) {
                ss.setAttribute("userNameAccountLogin", userName);
                request.getRequestDispatcher("#").forward(request, response);

            }
        } else {
            String errorLogin = "<div class=\"error-login-user\"><div class=\"img-error-login\"><i class=\"far fa-times-circle\"></i></div>\n" +
                    "              <div class=\"text-error-login\">\n" +
                    "                <p>Tài khoản của bạn hoặc Mật khẩu không đúng, vui lòng thử lại</p>\n" +
                    "              </div>" +
                    " </div>";
            request.setAttribute("errorLogin", errorLogin);
            request.getRequestDispatcher("signIn").forward(request, response);

        }

    }
}
