package com.astore.controller.admin.slide;



import com.astore.services.implement.SlideServices;
import com.astore.model.Slide;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "UpdateSlideController", value = "/manage/update-slide")
public class UpdateSlideController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        try {
            Slide slide = SlideServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("slide", slide);
            request.getRequestDispatcher("/view/admin/edit-slider.jsp").forward(request,response);
        }catch(NumberFormatException e){
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("slide-id");
        String title = request.getParameter("slide-title");
        String content = request.getParameter("slide-content");
        String linkImage = request.getParameter("slide-photourl");


        Slide slide = new Slide();

        try{
            slide.setId(Integer.parseInt(id));
            slide.setTitle(title);
            slide.setContent(content);
            slide.setLinkImage(linkImage);
            boolean check = SlideServices.getInstance().update(slide);
            if (check) {
                response.sendRedirect(request.getContextPath()+"/manage/slide");

            } else {
                request.setAttribute("slide", slide);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/edit-slider.jsp").forward(request, response);
            }
        }catch(NumberFormatException e){
            request.setAttribute("slide", slide);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-slider.jsp").forward(request, response);
        }

    }
}
