package com.astore.controller.admin.slide;

import com.astore.model.Slide;
import com.astore.services.implement.SlideServices;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddSlideController", value = "/manage/add-slide")
public class AddSlideController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-slider.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("slide-id");
        String url = request.getParameter("slide-photourl");
        String title = request.getParameter("slide-title");
        String content = request.getParameter("slide-content");

        Slide slide = new Slide();

        try{
            slide.setId(Integer.parseInt(id));
            slide.setTitle(title);
            slide.setContent(content);
            slide.setLinkImage(url);
            boolean check = SlideServices.getInstance().insert(slide);
            System.out.println(check);
            if (check) {
                request.setAttribute("success", "Thêm thành công!");
            } else {
                request.setAttribute("slide", slide);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
            }
        }catch(NumberFormatException e){
            request.setAttribute("slide", slide);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
        }
        request.getRequestDispatcher("/view/admin/add-slider.jsp").forward(request, response);
    }
}
