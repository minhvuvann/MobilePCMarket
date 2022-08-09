package com.astore.controller.admin.help;

import com.astore.model.Help;
import com.astore.services.implement.HelpServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchHelp", value = "/manage/searchHelp")
public class SearchHelpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json");
        String params = request.getParameter("params");
        List<Help> helps = new ArrayList<Help>();

        try {
            int id = Integer.parseInt(params);
            Help help = HelpServices.getInstance().getById(id);
            helps.add(help);
        }catch (NumberFormatException e) {
            helps = HelpServices.getInstance().getByName(params);
        }
        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(helps);
        response.getWriter().write(json);
    }
}
