package com.astore.controller.admin.insurance;

import com.astore.model.Insurance;
import com.astore.model.Inventory;
import com.astore.services.implement.InsuranceServices;
import com.astore.services.implement.InventoryServices;
import com.astore.services.implement.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddInsuranceController", value = "/manage/add-insurance")
public class AddInsuranceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/add-baohanh.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
            insurance.setIdProduct(idSp);
            insurance.setIdOrder(idOrder);
            insurance.setIdUser(idUser);
            insurance.setNameUser(UserServices.getInstance().getById(2,idUser).getUserName());
            insurance.setDateTake(dataTake);
            insurance.setDatePay(datePay);
            insurance.setRateInsurance(rateInsurance);
            insurance.setNote(contentInsurance);
            insurance.setStatus(status);
            boolean check = InsuranceServices.getInstance().insert(insurance);
            System.out.println(check);
            if (check) {
                request.setAttribute("success", "Thêm thành công!");
                System.out.println(check);
            } else {
                request.setAttribute("insurance", insurance);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
            }
        } catch (NumberFormatException e) {
            request.setAttribute("insurance", insurance);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
        }
        request.getRequestDispatcher("/view/admin/add-baohanh.jsp").forward(request, response);
    }
}
