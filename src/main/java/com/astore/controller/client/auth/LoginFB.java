package com.astore.controller.client.auth;

import com.astore.model.Store;
import com.astore.services.implement.RestFBServices;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;
import com.restfb.types.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginFB", value = "/loginFB")
public class LoginFB extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public LoginFB() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore",storeName);
        HttpSession ssFB = request.getSession();
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("/view/client/sign_user/signIn.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = RestFBServices.getToken(code);
            User user = RestFBServices.getUserInfo(accessToken);
            System.out.println(user.getName());
            String emailFB = user.getEmail();
            String nameFB = user.getName();
            String idFB = user.getId();
            String birthdayFB = user.getBirthday();
            String genderFB = user.getGender();
            String phoneRegister="chưa có thông tin";
            String address ="chưa có thông tin";
            String avatar="chưa có thông tin";
        System.out.println(nameFB+" "+emailFB+" "+idFB+" "+birthdayFB+" "+genderFB);
            if (UserServices.getInstance().checkUserExist(emailFB)){
                ssFB.setAttribute("userNameAccountLogin",emailFB);
                response.sendRedirect("index.jsp");
            }else{
                UserServices.getInstance().insertUser(new com.astore.model.User(0,nameFB,emailFB,nameFB,genderFB,birthdayFB,phoneRegister,address,avatar,idFB,null));
                ssFB.setAttribute("userNameAccountLogin",emailFB);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}
