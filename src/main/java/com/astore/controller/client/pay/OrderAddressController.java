package com.astore.controller.client.pay;

import com.astore.model.*;
import com.astore.services.implement.*;
import com.astore.tool.GeneratorUserName;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "OrderAddressController", value = "/orderAddress")
public class OrderAddressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession ss = request.getSession();

        try {
            String userName = null;
            User customer = null;
            List<Cart> cartList = null;

            if (ss.getAttribute("userNameAccountLogin") == null) {
                cartList = (ArrayList) ss.getAttribute("listCart");
                String sexCustomer = request.getParameter("sexCustomer");
                String fullNameCustomer = request.getParameter("fullNameCustomer");
                String telephoneCustomer = request.getParameter("telephoneCustomer");
                String calc_shipping_provinces = request.getParameter("calc_shipping_provinces");
                String calc_shipping_district = request.getParameter("calc_shipping_district");
                String calc_shipping_ward = request.getParameter("calc_shipping_ward");
                String calc_shipping_detail_address = request.getParameter("calc_shipping_detail_address");
                String detailAddress = calc_shipping_detail_address + ", " + calc_shipping_ward + ", " + calc_shipping_district + ", " + calc_shipping_provinces;
                customer = new User();
                customer.setUserName(GeneratorUserName.getInstance().generatorUserName(8));
                customer.setName(fullNameCustomer);
                customer.setGender(sexCustomer);
                customer.setPhone(telephoneCustomer);
                customer.setAddress(detailAddress);
                boolean createCustomer = UserServices.getInstance().insertUser(customer);
                if (createCustomer) userName = customer.getUserName();
                customer = UserServices.getInstance().getInformationUser(userName);

                Order order = new Order();
                order.setNameUser(customer.getUserName());
                order.setIdUser(customer.getId());
                long sumCart = 0;
                for (Cart c : cartList) {
                    sumCart += c.getQuantity() * c.getPrice();
                }
                order.setPriceOrder(sumCart);
                order.setDateAtOrder(LocalDate.now().toString());
                boolean createOrder = OrderServices.getInstance().insert(order);
                List<Order> orderList = OrderServices.getInstance().getByNameUser(customer.getUserName());
                int idOrder = orderList.get(orderList.size() - 1).getId();
                System.out.println("idOrder" + idOrder);
                boolean createDetail = false;
                for (Cart c : cartList) {
                    DetailedOrder detailedOrder = new DetailedOrder();
                    detailedOrder.setIdOrder(idOrder);
                    detailedOrder.setIdProduct(c.getIdProduct());
                    detailedOrder.setCount((int) c.getQuantity());
                    detailedOrder.setNameProduct(c.getNameProduct());
                    detailedOrder.setPriceProduct(c.getPrice());
                    createDetail = DetailedOrderServices.getInstance().insert(detailedOrder);

                }
                Delivery delivery = new Delivery();
                delivery.setOrderId(idOrder);
                delivery.setAddress(customer.getAddress());
                delivery.setDeliveryDate(LocalDate.now().toString());
                boolean createDelivery = DeliveryServices.getInstance().insert(delivery);
                if (createOrder && createDelivery && createDetail) {
                    ss.setAttribute("listCart", null);
                    for (Cart c : cartList) {
                        CartServices.getInstance().delete(c.getId());

                    }
                    request.setAttribute("successfulOrder", "successfulOrder");
                    request.setAttribute("btnOrderSuccessful", "<button class=\"btn-back-home\" onclick=\"okOrder()\">Quay Lại</button>");
                    System.out.println("Bạn đã đặt hàng thành công");
                    request.getRequestDispatcher("/cart").forward(request, response);

                }
            } else {
                userName = ss.getAttribute("userNameAccountLogin").toString();
                User userCheck = UserServices.getInstance().getInformationUser(userName);
                if (userCheck.getAddress() == null || userCheck.getName() == null || userCheck.getPhone() == null) {
                    request.setAttribute("edit", userCheck);
                    request.getRequestDispatcher("/edit-screen").forward(request, response);

                } else {
                    customer = UserServices.getInstance().getInformationUser(userName);
                    cartList = CartServices.getInstance().getByIdCustomer(UserServices.getInstance().getInformationUser(userName).getId());

                    Order order = new Order();
                    order.setNameUser(customer.getUserName());
                    order.setIdUser(customer.getId());
                    long sumCart = 0;
                    for (Cart c : cartList) {
                        sumCart += c.getQuantity() * c.getPrice();
                    }
                    order.setPriceOrder(sumCart);
                    order.setDateAtOrder(LocalDate.now().toString());
                    boolean createOrder = OrderServices.getInstance().insert(order);
                    List<Order> orderList = OrderServices.getInstance().getByNameUser(customer.getUserName());
                    int idOrder = orderList.get(orderList.size() - 1).getId();
                    System.out.println("idOrder" + idOrder);
                    boolean createDetail = false;
                    for (Cart c : cartList) {
                        DetailedOrder detailedOrder = new DetailedOrder();
                        detailedOrder.setIdOrder(idOrder);
                        detailedOrder.setIdProduct(c.getIdProduct());
                        detailedOrder.setCount((int) c.getQuantity());
                        detailedOrder.setNameProduct(c.getNameProduct());
                        detailedOrder.setPriceProduct(c.getPrice());
                        createDetail = DetailedOrderServices.getInstance().insert(detailedOrder);

                    }
                    Delivery delivery = new Delivery();
                    delivery.setOrderId(idOrder);
                    delivery.setAddress(customer.getAddress());
                    delivery.setDeliveryDate(LocalDate.now().toString());
                    boolean createDelivery = DeliveryServices.getInstance().insert(delivery);
                    if (createOrder && createDelivery && createDetail) {
                        ss.setAttribute("listCart", null);
                        for (Cart c : cartList) {
                            CartServices.getInstance().delete(c.getId());

                        }
                        request.setAttribute("successfulOrder", "successfulOrder");
                        request.setAttribute("btnOrderSuccessful", "<button class=\"btn-back-home\" onclick=\"okOrder()\">Quay Lại</button>");
                        System.out.println("Bạn đã đặt hàng thành công");
                        request.getRequestDispatcher("/cart").forward(request, response);

                    }
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
