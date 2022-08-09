package com.astore.controller.admin.help;

import com.astore.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "InformationHelp", value = "/manage/informationHelp")
public class InformationHelpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession ss = request.getSession();
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("admin");
        ss.setAttribute("namePeopleHelp",user.getName());
        ss.setAttribute("idPeopleHelp",user.getName());

        ss.setAttribute("nameUserHelp",request.getParameter("nameUser"));
        ss.setAttribute("emailUserHelp",request.getParameter("emailUser"));
        request.getRequestDispatcher("/view/admin/show-help-reply.jsp").forward(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}
