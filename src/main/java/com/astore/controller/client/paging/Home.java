package com.astore.controller.client.paging;

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

import com.astore.model.Slide;

import java.util.List;

@WebServlet(name = "home", value = "")
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductServices ps = new ProductServices();
        List<Product> iphone = ps.getProductByIdCate(1, 4);
        List<Product> mac = ps.getProductByIdCate(2, 4);
        List<Product> ipad = ps.getProductByIdCate(3, 4);
        List<Product> watch = ps.getProductByIdCate(4, 4);
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

        System.out.println(sliderList.toString());

        List<Slide> sliderMobile = SlideServices.getInstance().getByName("homeMobile");

        request.setAttribute("listSliderMobile", sliderMobile);


        System.out.println(sliderMobile.toString());
        request.setAttribute("iphone", iphone);
        request.setAttribute("mac", mac);
        request.setAttribute("watch", watch);
        request.setAttribute("ipad", ipad);
        response.setContentType("text/html");


        request.getRequestDispatcher("view/client/home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
