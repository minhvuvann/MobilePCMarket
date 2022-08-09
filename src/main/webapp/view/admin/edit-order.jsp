<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Đơn hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Cập nhật đơn hàng</div>
                        <hr>
                        <form action="update-order" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã đơn hàng</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-1" name="order-id"
                                       value="${order.id}">
                            </div>

                            <div class="form-group">
                                <label for="input-2">Mã khách hàng</label>
                                <input type="text" class="form-control" id="input-2" name="user-id"
                                       value="${order.idUser}">
                            </div>
                            <div class="form-group">
                                <label for="input-4">Trị giá</label>
                                <input type="text" class="form-control" id="input-4" name="order-price"
                                       value="${order.priceOrder}">
                            </div>

                            <div class="form-group">
                                <label for="input-5">Ngày lập hóa đơn</label>
                                <input type="date" class="form-control" id="input-5" placeholder="Ngày lập hóa đơn"
                                       name="order-date" value="${order.dateAtOrder}">
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a href="order">Hủy</a></button>
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
