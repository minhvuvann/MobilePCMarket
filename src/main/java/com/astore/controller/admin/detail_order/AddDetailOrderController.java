package com.astore.controller.admin.detail_order;

import com.astore.model.DetailedOrder;
import com.astore.model.Inventory;
import com.astore.services.implement.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddDetailOrderController", value = "/manage/add-order-detail")
public class AddDetailOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-order-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idHD = request.getParameter("order-id");
        String idSP = request.getParameter("product-id");
        String productPrice = request.getParameter("product-price");
        String amountProduct = request.getParameter("product-amount");

        DetailedOrder detailOrder = new DetailedOrder();

        try{
            if (OrderServices.getInstance().getById(Integer.valueOf(idHD))==null|| ProductServices.getInstance().getById(Integer.valueOf(idSP))==null) {
                request.setAttribute("detailOrder", detailOrder);
                request.setAttribute("error", "Mã Hóa đơn hoặc mã sản phẩm không tồn tại");
            } else {
                detailOrder.setIdOrder(Integer.valueOf(idHD));
                detailOrder.setPriceProduct(Double.valueOf(productPrice));
                detailOrder.setCount(Integer.valueOf(amountProduct));
                detailOrder.setIdProduct(Integer.valueOf(idSP));
                boolean check = DetailedOrderServices.getInstance().insert(detailOrder);
                System.out.println(check);
                if (check) {
                    request.setAttribute("success", "Thêm thành công!");
                    System.out.println(check);
                } else {
                    request.setAttribute("detailOrder", detailOrder);
                    request.setAttribute("error", "Đã có lỗi xảy ra!");
                }
            }
        }catch(NumberFormatException e){
            request.setAttribute("detailOrder", detailOrder);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
        }
        request.getRequestDispatcher("/view/admin/add-order-detail.jsp").forward(request, response);
    }
}
