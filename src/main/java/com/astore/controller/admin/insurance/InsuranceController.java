package com.astore.controller.admin.insurance;

import com.astore.services.implement.InsuranceServices;
import com.astore.services.implement.InventoryServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InsuranceController", value = "/manage/insurance")
public class InsuranceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listInsurance", InsuranceServices.getInstance().getAll());
        System.out.println(InsuranceServices.getInstance().getAll().size());
        request.getRequestDispatcher("/view/admin/show-baohanh.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
