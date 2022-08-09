package com.astore.controller.client.pay;

import com.astore.model.Cart;
import com.astore.model.Product;
import com.astore.model.Store;
import com.astore.model.User;
import com.astore.services.implement.CartServices;
import com.astore.services.implement.ProductServices;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartController", value = "/cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore", storeName);

        HttpSession ss = request.getSession();


        if (ss.getAttribute("userNameAccountLogin") != null) {
            String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");
            request.setAttribute("informationCustomer", "none");
            request.setAttribute("informationDelivery", "none");
            request.setAttribute("onSubmitOrder", "return true");
            User user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
            List<Cart> cartData = CartServices.getInstance().getCartForImg(user.getId());
            request.setAttribute("quantityCart", cartData.size());

            if (cartData.size() != 0) {
                request.setAttribute("btnOrder", "block");
                request.setAttribute("titleSumCart", "Tạm tính");
                request.setAttribute("listCart", cartData);
                request.setAttribute("sumCart", CartServices.getInstance().sumPriceCart(user.getId()));
                request.setAttribute("notProduct", "");

            } else {
                request.setAttribute("btnOrder", "none");
                request.setAttribute("titleSumCart", "");
                request.setAttribute("sumCart", "");
                request.setAttribute("listCart", "");
                request.setAttribute("notProduct", "Không có sản phẩm");

            }
        } else {
            request.setAttribute("onSubmitOrder", "return false");

            if (ss.getAttribute("listCart") != null) {
                List<Cart> cartList = (List<Cart>) ss.getAttribute("listCart");
                request.setAttribute("quantityCart", cartList.size());

                long sumCart = 0;
                for (Cart cart : cartList) {
                    Product product = ProductServices.getInstance().getById(cart.getIdProduct());
                    cart.setNameProduct(product.getName());
                    cart.setLinkImgProduct(product.getListPhotoUrl().get(0));
                    cart.setRom(product.getRom());
                    cart.setPrice(product.getPrice());
                    sumCart += cart.getQuantity() * cart.getPrice();
                }
                request.setAttribute("titleSumCart", "Tạm tính");
                request.setAttribute("sumCart", sumCart);
                request.setAttribute("listCart", cartList);
                request.setAttribute("notProduct", "");
                request.setAttribute("informationCustomer", "block");
                request.setAttribute("informationDelivery", "block");
                request.setAttribute("btnOrder", "block");
            } else {
                request.setAttribute("informationCustomer", "none");
                request.setAttribute("informationDelivery", "none");
                request.setAttribute("btnOrder", "none");
                request.setAttribute("quantityCart", 0);
                request.setAttribute("listCart", "");
                request.setAttribute("sumCart", "");
                request.setAttribute("listCart", "");
                request.setAttribute("notProduct", "Không có sản phẩm");
            }


        }
        request.getRequestDispatcher("view/client/cart/cart.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

}
