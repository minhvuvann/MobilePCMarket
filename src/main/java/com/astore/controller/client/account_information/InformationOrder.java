package com.astore.controller.client.account_information;

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
import java.util.List;
import java.util.Map;

@WebServlet(name = "InformationOrder", value = "/informationOrder")
public class InformationOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        Store store = StoreServices.getInstance().getById(1);
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
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore",storeName);

        String idHd = request.getParameter("idHD");
        List<Product> lProOrder = ProductServices.getInstance().getListProductOrder(Integer.valueOf(idHd));
        Map<Integer,Integer> quantilyProduct = ProductServices.getInstance().quantilyProductOrder(Integer.valueOf(idHd));
     String sumOrder = request.getParameter("moneyOrder");
       if (lProOrder.size()==0){
           System.out.println("không có sản phẩm");
           request.getRequestDispatcher("/view/client/information_account/order-details-account.jsp").forward(request,response);
       }else {
           request.setAttribute("listProductOrder", lProOrder);
            request.setAttribute("moneyOrder",sumOrder);
           request.setAttribute("mapQuantilyProduct",quantilyProduct);
           System.out.println(quantilyProduct);
           request.getRequestDispatcher("/view/client/information_account/order-details-account.jsp").forward(request, response);

           System.out.println(lProOrder);
       }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}
