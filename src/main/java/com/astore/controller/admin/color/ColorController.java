package com.astore.controller.admin.color;

import com.astore.model.Color;
import com.astore.services.implement.ColorServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ColorController", value = "/manage/color")
public class ColorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Color> colors = ColorServices.getInstance().getAll();
        request.setAttribute("colors",colors);
        request.getRequestDispatcher("/view/admin/show-product-color.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
