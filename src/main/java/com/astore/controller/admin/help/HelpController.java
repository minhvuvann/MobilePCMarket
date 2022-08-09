package com.astore.controller.admin.help;

import com.astore.services.implement.HelpServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HelpController", value = "/manage/help")
public class HelpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("listHelp", HelpServices.getInstance().getListHelp());
        request.getRequestDispatcher("/view/admin/show-help.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}