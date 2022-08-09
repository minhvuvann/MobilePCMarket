package com.astore.controller.client.pay;

import com.astore.model.Cart;
import com.astore.model.Product;
import com.astore.model.User;
import com.astore.services.implement.CartServices;
import com.astore.services.implement.ProductServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RemoveCartController", value = "/removeCart")
public class RemoveCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        doPost(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            int idSP = Integer.valueOf(request.getParameter("idSP"));
            System.out.println(idSP);

            HttpSession ss = request.getSession();


            if (ss.getAttribute("userNameAccountLogin") != null) {
                String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");
                User user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
                Cart checkCart = CartServices.getInstance().checkExistCartByIdCustomer(user.getId(), idSP);
                if (checkCart.getQuantity() > 1) {
                    Cart updateQuantity = checkCart.reduceQuantity();
                    CartServices.getInstance().update(updateQuantity);
                }
                System.out.println("remove to cart successful");
                request.getRequestDispatcher("/cart").forward(request, response);

            } else {
                List<Cart> cartList = (ArrayList) ss.getAttribute("listCart");

                for (Cart cart : cartList) {
                    if (cart.getIdProduct() == idSP) {
                        if (cart.getQuantity() > 1) {
                            cart.setQuantity(cart.getQuantity() - 1);
                            break;
                        }
                    }
                }
                ss.setAttribute("listCart", cartList);
                request.getRequestDispatcher("/cart").forward(request, response);

            }
        } catch (Exception e) {

        }
    }
}
