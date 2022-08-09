package com.astore.controller.admin.product;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProductController", value = "/manage/add-product")
public class AddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String params = request.getParameter("id");
//        Product product = ProductServices.getInstance().getById(Integer.parseInt(params));
//        request.setAttribute("product",product);
        request.getRequestDispatcher("/view/admin/add-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
            product.setSubCategoryId(Integer.parseInt(subcategory_id));
            product.setColorId(Integer.parseInt(product_color_id));
            product.setPrice(Double.parseDouble(product_price));
            product.setRom(product_rom);
            product.setRam(product_ram);
            product.setBackCamera(product_backcam);
            product.setFrontCamera(product_frontcam);
            product.setSizeScreen(product_size_screen);
            product.setScreenResolution(product_resolution_screen);

            boolean check = ProductServices.getInstance().insert(product);

            if(check){
                List<Product> products = ProductServices.getInstance().getAll();
                request.setAttribute("success", "Thêm thành công!");
            }else{
                request.setAttribute("product", product);
                request.setAttribute("error", "Đã xãy ra lỗi");

            }
        }catch(Exception e){
            request.setAttribute("product", product);
            request.setAttribute("error", "Đã xãy ra lỗi");
        }
        // chuyển hướng
        request.getRequestDispatcher("/view/admin/add-product.jsp").forward(request,response);
    }
}
