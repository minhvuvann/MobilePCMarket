package com.astore.controller.admin.color;

import com.astore.model.Color;
import com.astore.services.implement.ColorServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateColorController", value = "/manage/update-color")
public class UpdateColorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {
            Color color = ColorServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("color", color);
            request.getRequestDispatcher("/view/admin/edit-product-color.jsp").forward(request,response);
        }catch(NumberFormatException e){
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("color_id");
        String name = request.getParameter("color_name");
        String codeHex = request.getParameter("color_hex");

        Color color = new Color();

        try{
            color.setId(Integer.parseInt(id));
            color.setName(name);
            color.setCodeHex(codeHex);
            boolean check = ColorServices.getInstance().update(color);
            if (check) {
                List<Color> colors = ColorServices.getInstance().getAll();
                response.sendRedirect(request.getContextPath()+"/manage/color");
//                request.setAttribute("colors", colors);
//                request.getRequestDispatcher("view/admin/show-product-color.jsp").forward(request, response);
            } else {
                request.setAttribute("color", color);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("view/admin/edit-product-color.jsp").forward(request, response);
            }
        }catch(NumberFormatException e){
            request.setAttribute("color", color);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("view/admin/edit-product-color.jsp").forward(request, response);
        }

    }
}
