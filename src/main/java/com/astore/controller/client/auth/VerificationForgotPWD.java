package com.astore.controller.client.auth;

import com.astore.model.Store;
import com.astore.services.implement.StoreServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "VerificationForgotPWD", value = "/verificationForgotPWD")
public class VerificationForgotPWD extends HttpServlet {
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
        request.setAttribute("nameStore",storeName);

        String OTPForgotPWDInput = request.getParameter("OTPForgetPWD-input");
        HttpSession ss = request.getSession();
        String OTPForgotPWDsesion = ss.getAttribute("OTPForgotPWD").toString();
        System.out.println(OTPForgotPWDInput + " ; " + OTPForgotPWDsesion);
        if (OTPForgotPWDInput.equals(OTPForgotPWDsesion)) {
            response.sendRedirect("setPWD");
        } else {
            request.setAttribute("fromMessErrorOTPForgotPWD", "from-mess-error-otp");
            request.setAttribute("errorVerificationOTPForgotPWD", "Mã xác thực không đúng. vui lòng nhập lại");
            request.getRequestDispatcher("verificationCode").forward(request, response);
            System.out.println("errorVerificationOTP");
        }
    }
}
