package com.astore.controller.admin.detail_order;

import com.astore.model.DetailedOrder;
import com.astore.model.Order;
import com.astore.services.implement.DetailedOrderServices;
import com.astore.services.implement.OrderServices;
import com.astore.services.implement.ProductServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateDetailOrderController", value = "/manage/update-detail-order")
public class UpdateDetailOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        HttpSession ss = request.getSession();
        ss.setAttribute("id-update-order-detail", id);
        try {
           DetailedOrder order = DetailedOrderServices.getInstance().getById(Integer.valueOf(id));
            request.setAttribute("orderDetail", order);
            request.getRequestDispatcher("/view/admin/edit-order-detail.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession ss = request.getSession();
        String id = ss.getAttribute("id-update-order-detail").toString();
        String idOrder = request.getParameter("order-id");
        String idProduct = request.getParameter("product-id");
        String priceProduct = request.getParameter("product-price");
        String amountPrice = request.getParameter("product-amount");
        DetailedOrder order = new DetailedOrder();
        try {
            if (OrderServices.getInstance().getById(Integer.valueOf(idOrder))==null|| ProductServices.getInstance().getById(Integer.valueOf(idProduct))==null) {
                request.setAttribute("orderDetail",order);
                request.setAttribute("error", "Mã Hóa đơn hoặc mã sản phẩm không tồn tại");
            } else {
                order.setId(Integer.parseInt(id));
                order.setIdOrder(Integer.valueOf(idOrder));
                order.setIdProduct(Integer.valueOf(idProduct));
                order.setPriceProduct(Double.valueOf(priceProduct));
                order.setCount(Integer.parseInt(amountPrice));
                boolean check = DetailedOrderServices.getInstance().update(order);
                System.out.println(check);
                if (check) {
                    response.sendRedirect(request.getContextPath() + "/manage/order-detail");
                    System.out.println(check);

                } else {
                    request.setAttribute("orderDetail", order);
                    request.setAttribute("error", "Đã có lỗi xảy ra!");
                    request.getRequestDispatcher("/view/admin/edit-order-detail.jsp").forward(request, response);
                }
            }
        } catch (NumberFormatException e) {
            request.setAttribute("orderDetail", order);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-order-detail.jsp").forward(request, response);
        }

    }
}
