<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Bảo hành</title>


<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Cập nhật phiếu bảo hành</div>
                        <hr>
                        <form action="update-insurance" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã phiếu bảo hành</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-1"
                                       placeholder="Mã phiếu bảo hành" name="baohanh-id" value="${insurance.id}">
                            </div>
                            <div class="form-group">
                                <label for="input-2">Mã đơn hàng</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-2"
                                       placeholder="Mã đơn hàng" name="order-id" value="${insurance.idOrder}">
                            </div>
                            <div class="form-group">
                                <label for="input-3">Mã sản phẩm</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-3"
                                       placeholder="Mã sản phẩm" name="product-id" value="${insurance.idProduct}">
                            </div>
                            <div class="form-group">
                                <label for="input-4">Mã khách hàng</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-4" name="user-id"
                                       value="${insurance.idUser}">
                            </div>

                            <div class="form-group">
                                <label for="input-5">Ngày nhận</label>
                                <input type="date" class="form-control" id="input-5" placeholder="Ngày nhận"
                                       value="${insurance.dateTake}" name="date-take">
                            </div>
                            <div class="form-group">
                                <label for="input-6">Ngày trả</label>
                                <input type="date" class="form-control" id="input-6" placeholder="Ngày Trả" value="${insurance.datePay}"
                                       name="date-pay">
                            </div>

                            <div class="form-group">
                                <label for="input-7">Phí bảo hành</label>
                                <input type="text" class="form-control" id="input-7" name="rate-insurance" value="${insurance.rateInsurance}">
                            </div>

                            <div class="form-group">
                                <label for="input-8">Nội dung bảo hành</label>
                                <input type="text" class="form-control" id="input-8" name="content-insurance"
                                       value="${insurance.note}">
                            </div>

                            <div class="form-group">
                                <label for="input-9">Trạng thái bảo hành </label>
                                <div>
                                    <select  class="form-control valid" id="input-9" name="status-insurance" required
                                            aria-invalid="false">
                                        <option value="1" selected="selected">Tạo yêu cầu bảo hành</option>
                                        <option value="2" >Đã tiếp nhận</option>
                                        <option value="3">Đang bảo hành</option>
                                        <option value="4">Đã hoàn tất</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a href="insurance">Hủy</a></button>

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
