package com.astore.controller.client.paging;

import com.astore.model.*;
import com.astore.services.implement.*;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/Product-ipad")
public class Ipad extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore",storeName);

        int countProduct = ProductServices.getInstance().countProductByCategoryId(3);
        int totalPages = 0;
        if(countProduct % 30 > 0){
            totalPages = countProduct / 30 +1;
        }else
            totalPages = countProduct / 30;


        request.setAttribute("totalPages", totalPages);

        ProductServices ps = new ProductServices();
        List<Product> ipad = ps.getProductByIdCate(3, 0, 30);
//        System.out.println(ipad.toString());
        System.out.println("ipad.size(): " + ipad.size());
        request.setAttribute("ipad", ipad);

        List<Slide> sliderList = SlideServices.getInstance().getByName("home");

        request.setAttribute("listSliderDesktop", sliderList);



        List<Slide> sliderMobile = SlideServices.getInstance().getByName("homeMobile");

        request.setAttribute("listSliderMobile", sliderMobile);
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
        request.getRequestDispatcher("/view/client/product-list/product-ipad.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        System.out.println(page +"page");
        try {
            int pageInt = Integer.parseInt(page) - 1;
            int start = pageInt *30 +1;
            int end = start +29;

            List<Product> products = ProductServices.getInstance().getProductByIdCate(1, start, end);

            String json = null;
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            Gson gson = new Gson();
            json = gson.toJson(products);
            response.getWriter().write(json);


        }catch(NumberFormatException e){

        }    }
}
