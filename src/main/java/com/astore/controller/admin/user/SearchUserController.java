package com.astore.controller.admin.user;

import com.astore.model.User;
import com.astore.services.implement.UserServices;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchUserController", value = "/manage/search-user")
public class SearchUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/json");
        String params = request.getParameter("params");
        String group = request.getParameter("group");

        int groupid = Integer.parseInt(group);

        List<User> users = new ArrayList<User>();

        try {
            int id = Integer.parseInt(params);
            User user = UserServices.getInstance().getById(groupid,id);
            users.add(user);
        }catch (NumberFormatException e) {
            users = UserServices.getInstance().getByName(groupid,params);
        }


        String json = null;
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        json = gson.toJson(users);
        response.getWriter().write(json);
    }
}
