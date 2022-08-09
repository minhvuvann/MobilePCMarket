package com.astore.controller.client;

import com.astore.model.Cart;
import com.astore.model.Product;
import com.astore.model.Store;
import com.astore.model.User;
import com.astore.services.implement.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "product", value = "/product")
public class ProductDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Store store = StoreServices.getInstance().getById(1);
        String name = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore",name);
        HttpSession ss = request.getSession();

        if (ss.getAttribute("userNameAccountLogin") != null) {
            String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");

            User user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
            List<Cart> cartData = CartServices.getInstance().getCartForImg(user.getId());

            request.setAttribute("quantityCart", cartData.size());

        } else {

            if (ss.getAttribute("listCart") != null) {
                List<Cart> cartList = (List<Cart>) ss.getAttribute("listCart");

                request.setAttribute("quantityCart", cartList.size());

            } else {
                request.setAttribute("quantityCart", 0);

            }


        }
        try {
            String id = request.getParameter("id");
            int numId = Integer.parseInt(id);
            ProductServices p = new ProductServices();
            Product product = p.getById(numId); // lấy thông tin sản phẩm


            System.out.println(product.toStringListImgDetails());

            if (product == null) {
                response.setStatus(404);
                response.sendError(404);
            } else {

                List<Product> subProduct = p.getProductByIdDongSp(product.getSubCategoryId());
                System.out.println(product);
                // lấy ds bộ nhớ thông qua idDongSP
                List<Product> rom = filterByRom(subProduct, product);

                // lấy ds màu sắc thông qua idDongSP
                List<Product> color = filterByColor(subProduct, product);

//                System.out.println("Color: " + color);

                // lấy sản phẩm liên quan
//                List<Product> productRelative = p.getProductByIdCate(CategoryServices.getInstance().getByProductId(product.getId()).getId(), 4);


                request.setAttribute("product", product);
//                request.setAttribute("productRelative", productRelative);
                request.setAttribute("rom", rom);
                request.setAttribute("color", color);
                request.getRequestDispatcher("view/client/product-details/product-details.jsp").forward(request, response);
            }
        }catch (Exception e){
            System.err.println(e);
            response.setStatus(404);
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private List<Product> filterByRom(List<Product> list, Product product){
        List<Product> result = new ArrayList<>();
        List<String> ps = new ArrayList<>();
        ps.add(product.getRom());
        result.add(product);

        for (Product p : list) {
            if(!ps.contains(p.getRom())){
                ps.add(p.getRom());
                result.add(p);
            }
        }
        Comparator<Product> cmp = new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                return o1.getRom().compareTo(o2.getRom());
            }
        };
        Collections.sort(result, cmp);
        return result;
    }

    private List<Product> filterByColor(List<Product> list, Product product) {
        List<Product> result = new ArrayList<>();
        List<String> ps = new ArrayList<>();
        ps.add(product.getColorName());
        result.add(product);

        for (Product p : list) {
            if (!ps.contains(p.getColorName())) {
                ps.add(p.getColorName());
                result.add(p);
            }
        }
        Comparator<Product> cmp = new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                return o1.getColorName().compareTo(o2.getColorName());
            }
        };
        Collections.sort(result, cmp);
        return result;
    }
}
