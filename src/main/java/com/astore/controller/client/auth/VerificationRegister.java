package com.astore.controller.client.auth;

import com.astore.model.Store;
import com.astore.services.implement.StoreServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "VerificationRegister", value = "/verificationRegister")
public class VerificationRegister extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String codeOTPInput = request.getParameter("verification-code-set");

        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore",storeName);

        HttpSession ss = request.getSession();
        String codeOTP = ss.getAttribute("OTPRegister").toString();
        System.out.println(codeOTP + "  " + codeOTPInput);
        if (codeOTP.equals(codeOTPInput)) {
            request.setAttribute("successVerificationOTP", "successVerificationOTP");
            request.setAttribute("loginSuccessOTP", "<button onclick=\"signInNowRegister()\">Đăng nhập ngay</button>");
            request.getRequestDispatcher("/view/client/sign_user/verificationCreate.jsp").forward(request, response);
            request.setAttribute("errorVerificationOTP", "");
            System.out.println("successVerificationOTP");
        } else {
            request.setAttribute("successVerificationOTP", "errorVerificationOTP");
            request.setAttribute("fromMessErrorOTP", "from-mess-error-otp");
            request.setAttribute("errorVerificationOTP", "Mã xác thực không đúng. vui lòng nhập lại");
            request.getRequestDispatcher("/view/client/sign_user/verificationCreate.jsp").forward(request, response);
            System.out.println("errorVerificationOTP");
        }

    }
}
