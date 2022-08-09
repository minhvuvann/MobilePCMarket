package com.astore.controller.admin.insurance;

import com.astore.model.Insurance;
import com.astore.model.Order;
import com.astore.services.implement.InsuranceServices;
import com.astore.services.implement.OrderServices;
import com.astore.services.implement.ProductServices;
import com.astore.services.implement.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateInsuranceController", value = "/manage/update-insurance")
public class UpdateInsuranceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        HttpSession ss = request.getSession();
        ss.setAttribute("id-update-insurance", id);
        try {
            Insurance insurance = InsuranceServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("insurance", insurance);
            request.getRequestDispatcher("/view/admin/edit-baohanh.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession ss = request.getSession();
        String id = ss.getAttribute("id-update-insurance").toString();

        Insurance insurance = new Insurance();
        try {
            int idOrder = Integer.valueOf(request.getParameter("order-id"));
            int idUser = Integer.valueOf(request.getParameter("user-id"));
            int idSp = Integer.valueOf(request.getParameter("product-id"));
            String dataTake = request.getParameter("date-take");
            String datePay = request.getParameter("date-pay");
            double rateInsurance = Double.valueOf(request.getParameter("rate-insurance"));
            String contentInsurance = request.getParameter("content-insurance");
            int status = Integer.valueOf(request.getParameter("status-insurance"));

            if ( UserServices.getInstance().getById(2,idUser) == null) {
                request.setAttribute("insurance", insurance);
                request.setAttribute("error", "Mã khách hàng  không tồn tại");
            }
            if ( ProductServices.getInstance().getById(idSp) == null) {
                request.setAttribute("insurance", insurance);
                request.setAttribute("error", "Mã sản phẩm  không tồn tại");
            }
            if ( OrderServices.getInstance().getById(idOrder) == null) {
                request.setAttribute("insurance", insurance);
                request.setAttribute("error", "Mã dơn hàng  không tồn tại");
            }else {
                insurance.setId(Integer.valueOf(id));
                insurance.setIdProduct(idSp);
                insurance.setIdOrder(idOrder);
                insurance.setIdUser(idUser);
                insurance.setNameUser(UserServices.getInstance().getById(2,idUser).getUserName());
                insurance.setDateTake(dataTake);
                insurance.setDatePay(datePay);
                insurance.setRateInsurance(rateInsurance);
                insurance.setNote(contentInsurance);
                insurance.setStatus(status);
                boolean check =InsuranceServices.getInstance().update(insurance);
                System.out.println(check);
                if (check) {
                    response.sendRedirect(request.getContextPath() + "/manage/insurance");
                    System.out.println(check);

                } else {
                    request.setAttribute("order", insurance);
                    request.setAttribute("error", "Đã có lỗi xảy ra!");
                    request.getRequestDispatcher("/view/admin/edit-baohanh.jsp").forward(request, response);
                }
            }
        } catch (NumberFormatException e) {
            request.setAttribute("order", insurance);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-baohanh.jsp").forward(request, response);
        }

    }
}
