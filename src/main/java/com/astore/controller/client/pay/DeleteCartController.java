package com.astore.controller.client.pay;

import com.astore.model.Cart;
import com.astore.model.User;
import com.astore.services.implement.CartServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteCartController", value = "/deleteCart")
public class DeleteCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession ss = request.getSession();
        int idCart = Integer.valueOf(request.getParameter("idCart"));

        if (ss.getAttribute("userNameAccountLogin") != null) {
            String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");

            User user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
            List<Cart> cartData = CartServices.getInstance().getCartForImg(user.getId());
            boolean delete = CartServices.getInstance().delete(idCart);
            request.setAttribute("quantityCart", cartData.size());
            if (delete) {
                request.getRequestDispatcher("/cart").forward(request, response);
            } else {
                request.getRequestDispatcher("/page404").forward(request, response);

            }
        } else {
            if (ss.getAttribute("listCart") != null) {
                List<Cart> cartList = (List<Cart>) ss.getAttribute("listCart");
                for (Cart cart : cartList
                ) {
                    if (cart.getId() == idCart){
                        cartList.remove(cart);
                        break;
                    }
                }
                request.setAttribute("quantityCart", cartList.size());

            } else {
                request.setAttribute("quantityCart", 0);

            }
            request.getRequestDispatcher("/cart").forward(request, response);


        }

    }
}
