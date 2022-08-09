package com.astore.controller.client.auth;

import com.astore.model.*;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;
import com.astore.tool.CheckEmail;
import com.astore.tool.GeneratorUserName;
import com.astore.tool.HashPassword;
import com.astore.tool.SendMail;

import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserRegistration", value = "/userRegistration")
public class UserRegistration extends HttpServlet {
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

        String fullName = request.getParameter("fullName-sign-up");
        String userName = GeneratorUserName.getInstance().generatorUserName(8);

        String emailOrPhone = request.getParameter("email-sign-up");
        String emailRegister = null;
        String phoneRegister = null;
        String gender = null;
        String birthday = "01/01/2001";
        String address = null;
        String avatar = "https://ui-avatars.com/api/?name=" + fullName;
        String pwd = request.getParameter("password-sign-up");
        if (CheckEmail.getInstance().checkEmail(emailOrPhone)) {
            emailRegister = emailOrPhone;
        } else {
            phoneRegister = emailOrPhone;
        }

        String userMail = "19130137@st.hcmuaf.edu.vn";
        String nameFrom = "ASTORE";
        String passUserMail = "qiswwsjutmgbraru";
        if (UserServices.getInstance().checkUserExist(emailOrPhone)) {
            String errorRegistration = "<div class=\"error-login-user\"><div class=\"img-error-login\"><i class=\"far fa-times-circle\"></i></div>\n" +
                    "              <div class=\"text-error-login\">\n" +
                    "                <p>Tài khoản của bạn đã tồn tại. Xin vui lòng dùng tài khoản khác để đăng ký</p>\n" +
                    "              </div>" +
                    " </div>";
            request.setAttribute("errorRegistration", errorRegistration);
            request.setAttribute("classRightRegister", "right-panel-active");
            request.getRequestDispatcher("/view/client/sign_user/signIn.jsp").forward(request, response);
        } else {
            UserServices.getInstance().insertUser(new User(0, userName, fullName, emailRegister, gender, birthday.trim(), phoneRegister, address, avatar, HashPassword.getInstance().hashPassword(pwd), null));
            String subjectMail = "Ma Xac Thuc";
            String codeOTP = SendMail.getInstance().ranDomOTP();
            HttpSession ss = request.getSession();
            ss.setAttribute("OTPRegister", codeOTP);
            ss.setAttribute("emailRegister", emailOrPhone);
            String messSendMail = codeOTP + " la ma xac thuc OTP dang ky tai khoan ASTORE và userName: "+userName+". De tranh bi mat tien, tuyet doi KHONG chia se ma nay voi bat ky ai";
            Session sessRes = SendMail.getInstance().loginMail(userMail, passUserMail);
            if (CheckEmail.getInstance().checkEmail(emailOrPhone)) {
                SendMail.getInstance().sendMailTo(sessRes, userMail, nameFrom, emailOrPhone, subjectMail, messSendMail);
            }
            response.sendRedirect("verificationCreate");
        }
    }
}
