<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Giao hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Cập nhật giao hàng</div>
                        <hr>
                        <form action="update-delivery" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã giao hàng</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-1"
                                       name="delivery-id" value="${delivery.id}" placeholder="Mã giao hàng">
                            </div>

                            <div class="form-group">
                                <label for="input-2">Mã đơn hàng</label>
                                <input type="text" class="form-control" id="input-2" readonly="readonly" name="order-id"
                                       value="${delivery.orderId}" placeholder="Mã Đơn hàng">
                            </div>

                            <div class="form-group">
                                <label for="input-3">Địa chỉ giao hàng</label>
                                <input type="text" class="form-control" id="input-3" name="delivery-address"
                                       value="${delivery.address}" placeholder="Địa chỉ giao hàng">
                            </div>

                            <div class="form-group">
                                <label for="input-4">Ngày giao hàng</label>
                                <input type="date" class="form-control" id="input-4" placeholder="Ngày lập hóa đơn"
                                       name="delivery-date" value="${delivery.deliveryDate}" placeholder="Ngày giao hàng">
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a onclick="goback()">Hủy</a></button>

                                <button type="submit" class="btn btn-success"><a>Cập nhật</a></button>
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
