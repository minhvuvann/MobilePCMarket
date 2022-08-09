package com.astore.controller.client.account_information;

import com.astore.model.Cart;
import com.astore.model.Store;
import com.astore.model.User;
import com.astore.services.implement.CartServices;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EditInformationAccount", value = "/edit-information-account")
public class EditInformationAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore", storeName);
        User user = null;
        HttpSession ss = request.getSession();
        if (ss.getAttribute("userNameAccountLogin") != null) {
            String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");

            user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
            List<Cart> cartData = CartServices.getInstance().getCartForImg(user.getId());
            request.setAttribute("edit", user);
            request.setAttribute("quantityCart", cartData.size());

        }

        request.getRequestDispatcher("view/client/information_account/editInformationAccount.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Store store = StoreServices.getInstance().getById(1);
        String storeName = store.getName();
        String linkLogo = store.getLinkLogo();
        request.setAttribute("linkLogoStore", linkLogo);
        request.setAttribute("nameStore", storeName);
        User user = null;
        HttpSession ss = request.getSession();
        if (ss.getAttribute("userNameAccountLogin") != null) {
            String userNameAccountLogin = (String) ss.getAttribute("userNameAccountLogin");

            user = UserServices.getInstance().getInformationUser(userNameAccountLogin);
            List<Cart> cartData = CartServices.getInstance().getCartForImg(user.getId());

            request.setAttribute("quantityCart", cartData.size());
        }
        String editName = request.getParameter("edit-name");
        String editTelephone = request.getParameter("edit-telephone");
        String editAddress = request.getParameter("edit-address");
        String editBirthday = request.getParameter("edit-birthday");
        if (editBirthday != null)
            user.setBirthday(editBirthday);
        if (editName != null)
            user.setName(editName);
        if (editTelephone != null)
            user.setPhone(editTelephone);
        if (editAddress != null)
            user.setAddress(editAddress);

        boolean check = UserServices.getInstance().updateUser(user);
        if (check) {
            request.setAttribute("success", "Sửa thông tin thành công");
        } else {
            request.setAttribute("error", "Sửa thông tin không thành công");
            request.setAttribute("edit", user);
        }
        request.getRequestDispatcher("view/client/information_account/editInformationAccount.jsp").forward(request, response);

    }
}
