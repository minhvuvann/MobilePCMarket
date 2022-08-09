package com.astore.controller.admin.slide;

import com.astore.model.Slide;
import com.astore.services.implement.SlideServices;
import com.google.gson.Gson;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchSlideController", value = "/manage/searchSlide")
public class SearchSlideController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json");
        String params = request.getParameter("params");
        List<Slide> listSlide = new ArrayList<>();

        try {
            int id = Integer.parseInt(params);
            listSlide.add(SlideServices.getInstance().getById(id));
        }catch (NumberFormatException e) {
           listSlide = SlideServices.getInstance().getByName(params);
        }

        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(listSlide);
        response.getWriter().write(json);
        response.getWriter().close();
    }
}
