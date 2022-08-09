package com.astore.controller.admin.dashboard;

import com.astore.model.Analysis;
import com.astore.services.implement.DashboardServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;                                                            

@WebServlet(name = "DashboardController", value = "/manage/dashboard")
public class DashboardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // tính đơn hàng trong tháng
        Analysis analysis0 = DashboardServices.getInstance().analysisOrderByMonth(0);
        Analysis analysis1 = DashboardServices.getInstance().analysisOrderByMonth(1);

        Analysis analysis = new Analysis();
        analysis.setAmountOrder(analysis0.getAmountOrder());
        analysis.setSales(analysis.getSales());
        if(analysis1.getAmountOrder() != 0){
            double orderRate = (analysis0.getAmountOrder() / analysis1.getAmountOrder()) * 100 - 1;
            analysis.setOrderRate(orderRate);
        }
        if( analysis1.getSales() > 0){
            double salesRate = (analysis0.getSales() / analysis1.getSales()) * 100 - 1;
            analysis.setSalesRate(salesRate);
        }
        request.setAttribute("analysis", analysis);


        // tính tổng sp từng loại trong tháng




        request.getRequestDispatcher("/view/admin/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
