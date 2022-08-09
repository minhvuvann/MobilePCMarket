package com.astore.controller.admin.product;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateProductController", value = "/manage/update-product")
public class UpdateProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {
            Product product = ProductServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("product", product);
            request.getRequestDispatcher("/view/admin/edit-product.jsp").forward(request, response);
        }catch (NumberFormatException e){
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_id = request.getParameter("product_id");
        String subcategory_id = request.getParameter("subcategory_id");
        String product_price = request.getParameter("product_price");
        String product_color_id = request.getParameter("product_color_id");
        String product_size_screen = request.getParameter("product_size_screen");
        String product_frontcam = request.getParameter("product_frontcam");
        String product_backcam = request.getParameter("product_backcam");
        String product_ram = request.getParameter("product_ram");
        String product_rom = request.getParameter("product_rom");
        String product_resolution_screen = request.getParameter("product_resolution_screen");
        Product product = new Product();
        try {
            product.setId(Integer.parseInt(product_id));
            product.setSubCategoryId(Integer.parseInt(subcategory_id));
            product.setColorId(Integer.parseInt(product_color_id));
            product.setPrice(Double.parseDouble(product_price));
            product.setRom(product_rom);
            product.setRam(product_ram);
            product.setBackCamera(product_backcam);
            product.setFrontCamera(product_frontcam);
            product.setSizeScreen(product_size_screen);
            product.setScreenResolution(product_resolution_screen);

            boolean check = ProductServices.getInstance().update(product);

            if(check){
                response.sendRedirect(request.getContextPath()+"/manage/list-product");
            }else{
                request.setAttribute("product", product);
                request.setAttribute("error", "Đã xãy ra lỗi");
                // chuyển hướng
                request.getRequestDispatcher("view/admin/edit-product.jsp").forward(request,response);
            }
        }catch (Exception e) {
            request.setAttribute("product", product);
            request.setAttribute("error", "Đã xãy ra lỗi");
            // chuyển hướng
            request.getRequestDispatcher("view/admin/edit-product.jsp").forward(request,response);
        }
    }
}
