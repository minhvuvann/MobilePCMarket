package com.astore.controller.admin.slide;

import com.astore.services.implement.SlideServices;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteSlideController", value = "/manage/delete-slide")
public class DeleteSlideController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/plain");
        String id = request.getParameter("id");
        try {
            boolean check = SlideServices.getInstance().delete(Integer.parseInt(id));
            if(check) {
                response.getWriter().write("done");

            }else{
                response.getWriter().write("fail");
            }
        }catch (NumberFormatException e) {
            response.getWriter().write("fail");
        }

        response.getWriter().close();
    }
}
