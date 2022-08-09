package com.astore.controller.admin.product;

import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProductController", value = "/manage/delete-product")
public class DeleteProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        String id = request.getParameter("id");
        try {
            int number = Integer.parseInt(id);
            boolean check = ProductServices.getInstance().delete(number);
            if(check) {
                response.getWriter().write("done");
            }else{
                response.getWriter().write("fail");
            }
        }catch (Exception e){
            response.getWriter().write("fail");
        }
        response.getWriter().close();
    }
}
