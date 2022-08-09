package com.astore.controller.admin.slide;

import com.astore.services.implement.SlideServices;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SlideController", value = "/manage/slide")
public class SlideController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listSlide", SlideServices.getInstance().getAll());
        request.getRequestDispatcher("/view/admin/show-slider.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}
