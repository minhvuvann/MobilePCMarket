package com.astore.controller.client;

import com.astore.model.*;
import com.astore.services.implement.*;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchProduct", value = "/search")
public class SearchProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        if(search == null) {
            request.setAttribute("products", new ArrayList<Product>());
            request.getRequestDispatcher("/view/client/product-list/ResultSearch.jsp").forward(request, response);
            return;
        }
        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore", storeName);

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
        List<Slide> sliderList = SlideServices.getInstance().getByName("home");

        request.setAttribute("listSliderDesktop", sliderList);



        List<Slide> sliderMobile = SlideServices.getInstance().getByName("homeMobile");

        request.setAttribute("listSliderMobile", sliderMobile);


        //  tính tông số sp theo tên
        int countProduct = ProductServices.getInstance().countProductByName(search);

        int totalPages = 0;
        if(countProduct % 20 > 0){
            totalPages = countProduct / 20 +1;
        }else
            totalPages = countProduct / 20;

        request.setAttribute("totalPages", totalPages);
        request.setAttribute("search", search);
        List<Product> products = ProductServices.getInstance().getByNameLimit(search, 0, 30);
        request.setAttribute("products", products);
        request.getRequestDispatcher("/view/client/product-list/ResultSearch.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request,response);
        String page = request.getParameter("page");
        String search = request.getParameter("search");
        System.out.println(page +"page");
        try {
            int pageInt = Integer.parseInt(page) - 1;
            int start = pageInt *20 +1;
            int end = start +19;

            List<Product> products = ProductServices.getInstance().getByNameLimit(search, start, end);

            String json = null;
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            Gson gson = new Gson();
            json = gson.toJson(products);
            response.getWriter().write(json);


        }catch(NumberFormatException e){

        }
    }
}