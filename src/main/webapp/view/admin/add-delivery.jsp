<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title text-success">${success}</div>
                                <div class="card-title text-danger">${error}</div>
                                <div class="card-title">Thêm mới</div>
                                <hr>
                                <form action="add-delivery" method="post">


                                    <div class="form-group">
                                        <label for="input-2">Mã đơn hàng</label>
                                        <input type="text" class="form-control" id="input-2" name="order-id" placeholder="Mã hóa đơn" required value="${delivery.orderId}">
                                    </div>

                                    <div class="form-group">
                                        <label for="input-3">Địa chỉ giao hàng</label>
                                        <input type="text" class="form-control" id="input-3" name="delivery-address" placeholder="Địa chỉ giao hàng" required value="${delivery.address}">
                                    </div>

                                    <div class="form-group">
                                        <label for="input-4">Ngày giao hàng</label>
                                        <input type="date" class="form-control" id="input-4" placeholder="Ngày lập hóa đơn"
                                               name="delivery-date" placeholder="Ngày giao hàng" required value="${delivery.deliveryDate}">
                                    </div>

                                    <div class="form-footer">
                                        <button class="btn btn-danger"><a onclick="goback()">Hủy</a></button>
                                        <button type="submit" class="btn btn-success"><a>Thêm</a></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="overlay toggle-menu"></div>
            </div>
        </div>




<jsp:include page="./footer/footer.jsp" flush="true"/>
