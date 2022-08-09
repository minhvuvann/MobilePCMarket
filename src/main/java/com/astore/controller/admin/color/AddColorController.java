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

@WebServlet(name = "AddColorController", value = "/manage/add-color")
public class AddColorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-product-color.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("color_name");
        String codeHex = request.getParameter("color_hex");

        Color color = new Color();

        try {
            color.setName(name);
            color.setCodeHex(codeHex);
            boolean check = ColorServices.getInstance().insert(color);
            if (check) {
                request.setAttribute("success", "Thêm thành công!");
                request.getRequestDispatcher("/view/admin/add-product-color.jsp").forward(request, response);
            } else {
                request.setAttribute("color", color);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/add-product-color.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            System.out.println(e.getMessage());
            request.setAttribute("color", color);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/add-product-color.jsp").forward(request, response);
        }

    }
}
