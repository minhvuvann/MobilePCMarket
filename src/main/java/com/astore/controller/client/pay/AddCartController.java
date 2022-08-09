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
import java.util.Random;

@WebServlet(name = "AddCartController", value = "/addCart")
public class AddCartController extends HttpServlet {
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

            Product product = ProductServices.getInstance().getById(idSP);

            if (ss.getAttribute("userNameAccountLogin") != null) {
                String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");
                User user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
                Cart checkCart = CartServices.getInstance().checkExistCartByIdCustomer(user.getId(), idSP);

                if (checkCart == null) {

                    Cart newCart = new Cart();
                    newCart.setIdCustomer(user.getId());
                    newCart.setNameCustomer(user.getUserName());
                    newCart.setIdProduct(idSP);
                    newCart.setQuantity(1);
                    newCart.setPrice(product.getPrice());

                    boolean cartInsert = CartServices.getInstance().insert(newCart);
                    //add cart in session
                    if (cartInsert == true) {
                        System.out.println("add to cart successful");
                        request.getRequestDispatcher("/cart").forward(request, response);

                    } else {
                        request.getRequestDispatcher("/page404").forward(request, response);

                    }
                } else {
                    Cart augment = checkCart.augmentQuantity();
                    CartServices.getInstance().update(augment);
                    if (augment != null) {
                        request.getRequestDispatcher("/cart").forward(request, response);

                    }
                }

            } else {
                Random rd = new Random();

                Cart newCart = new Cart();
                if (ss.getAttribute("listCart") == null) {

                    List<Cart> newList = new ArrayList<>();
                    newCart.setId(rd.nextInt(1000000000));
                    newCart.setIdProduct(idSP);
                    newCart.setQuantity(1);
                    newCart.setPrice(product.getPrice());

                    newList.add(newCart);
                    ss.setAttribute("listCart", newList);
                    request.getRequestDispatcher("/cart").forward(request, response);


                } else {
                    List<Cart> cartList = (ArrayList) ss.getAttribute("listCart");

                    boolean checkSP = false;
                    for (Cart cart : cartList) {
                        if (cart.getIdProduct() == idSP) {
                            cart.setQuantity(cart.getQuantity() + 1);
                            checkSP = true;
                            break;
                        }
                    }
                    if (!checkSP) {
                        newCart.setId(rd.nextInt(1000000000));

                        newCart.setIdProduct(idSP);
                        newCart.setQuantity(1);
                        newCart.setPrice(product.getPrice());

                        cartList.add(newCart);
                    }
                    ss.setAttribute("listCart", cartList);
                    request.getRequestDispatcher("/cart").forward(request, response);

                }


            }

        } catch (Exception e) {
            System.err.println(e.getMessage());
            request.getRequestDispatcher("/page404").forward(request, response);
            ;

        }

    }


}