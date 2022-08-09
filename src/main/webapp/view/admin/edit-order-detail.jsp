<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Chi tiết đơn hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Cập nhật chi tiết đơn hàng</div>
                        <hr>
                        <form action="update-detail-order" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã đơn hàng</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-1" name="order-id"
                                       value="${orderDetail.idOrder}" placeholder="Mã hóa đơn">
                            </div>

                            <div class="form-group">
                                <label for="input-2">Mã sản phẩm</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-2"
                                       name="product-id" value="${orderDetail.idProduct}" placeholder="Mã sản phẩm">
                            </div>


                            <div class="form-group">
                                <label for="input-3">Giá</label>
                                <input type="text" class="form-control" id="input-3" name="product-price"
                                       value="${orderDetail.priceProduct}" placeholder="Giá">
                            </div>

                            <div class="form-group">
                                <label for="input-4">Số lượng</label>
                                <input type="text" class="form-control" id="input-4" name="product-amount"
                                       placeholder="Số lượng" value="${orderDetail.count}">
                            </div>


                            <div class="form-footer">
                                <button class="btn btn-danger"><a href="order-detail">Hủy</a></button>
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
