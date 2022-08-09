package com.astore.controller.client.account_information;

import com.astore.model.Cart;
import com.astore.model.GiftUser;
import com.astore.model.Store;
import com.astore.model.User;
import com.astore.services.implement.CartServices;
import com.astore.services.implement.InformationAccountServices;
import com.astore.services.implement.StoreServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "GiftAccount", value = "/giftAccount")
public class GiftAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

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
        String userNameAccountLogin = ss.getAttribute("userNameAccountLogin").toString();
        User userLogin = UserServices.getInstance().getInformationUser(userNameAccountLogin);
        List<GiftUser> listGift = InformationAccountServices.getInstance().getListGift(userLogin.getId());
        Map<String, String> mapGiftNew = InformationAccountServices.getInstance().giftRankUser("NEW");
        request.setAttribute("conditionNewUser", mapGiftNew.get("condition"));
        request.setAttribute("accessoryNewUser", mapGiftNew.get("accessory"));
        request.setAttribute("accessoryRemainingNewUser", mapGiftNew.get("accessoryRemaining"));
        request.setAttribute("mobileComeToLifeNewUser", mapGiftNew.get("mobileComeToLife"));
        request.setAttribute("giftBirthdayNewUser", mapGiftNew.get("giftBirthday"));
        request.setAttribute("accessoryRemainingNewUser", mapGiftNew.get("accessoryRemaining"));
        request.setAttribute("servicePolicyUser", mapGiftNew.get("servicePolicy"));
        Map<String, String> mapGiftMem = InformationAccountServices.getInstance().giftRankUser("MEMBER");
        request.setAttribute("conditionMemUser", mapGiftMem.get("condition"));
        request.setAttribute("machineMemUser", mapGiftMem.get("machine"));
        request.setAttribute("accessoryMemUser", mapGiftMem.get("accessory"));
        request.setAttribute("accessoryRemainingMemUser", mapGiftMem.get("accessoryRemaining"));
        request.setAttribute("mobileComeToLifeMemUser", mapGiftMem.get("mobileComeToLife"));
        request.setAttribute("giftBirthdayMemUser", mapGiftMem.get("giftBirthday"));


        Map<String, String> mapGiftVip = InformationAccountServices.getInstance().giftRankUser("VIP");
        request.setAttribute("conditionVipUser", mapGiftVip.get("condition"));
        request.setAttribute("machineVipUser", mapGiftVip.get("machine"));
        request.setAttribute("accessoryVipUser", mapGiftVip.get("accessory"));
        request.setAttribute("accessoryRemainingVipUser", mapGiftVip.get("accessoryRemaining"));
        request.setAttribute("mobileComeToLifeVipUser", mapGiftVip.get("mobileComeToLife"));
        request.setAttribute("giftBirthdayVipUser", mapGiftVip.get("giftBirthday"));

        request.setAttribute("listGift", listGift);
        request.getRequestDispatcher("view/client/information_account/gift-account.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
