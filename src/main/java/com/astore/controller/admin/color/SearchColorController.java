package com.astore.controller.admin.color;

import com.astore.model.Color;
import com.astore.services.implement.ColorServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchColorController", value = "/manage/search-color")
public class SearchColorController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String params = request.getParameter("params");
        List<Color> colors = new ArrayList<Color>();

        try {
            int id = Integer.parseInt(params);
            Color c= ColorServices.getInstance().getById(id);
            colors.add(c);
        }catch (NumberFormatException e) {
            colors = ColorServices.getInstance().getByName(params);
        }

        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(colors);
        response.getWriter().write(json);
        response.getWriter().close();
    }
}
