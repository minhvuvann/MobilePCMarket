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
                        <div class="card-title text-success">${success}</div>
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Thêm phiếu bảo hành</div>
                        <hr>
                        <form action="add-insurance" method="post">

                            <div class="form-group">
                                <label for="input-2">Mã đơn hàng</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Mã đơn hàng"
                                       name="order-id">
                            </div>
                            <div class="form-group">
                                <label for="input-3">Mã sản phẩm</label>
                                <input type="text" class="form-control" id="input-3" placeholder="Mã sản phẩm"
                                       name="product-id">
                            </div>
                            <div class="form-group">
                                <label for="input-4">Mã khách hàng</label>
                                <input type="text" class="form-control" placeholder="Mã khách hàng" id="input-4"
                                       name="user-id">
                            </div>

                            <div class="form-group">
                                <label for="input-5">Ngày nhận</label>
                                <input name="date-take" type="date" class="form-control" id="input-5"
                                       placeholder="Ngày nhận">
                            </div>
                            <div class="form-group">
                                <label for="input-6">Ngày trả</label>
                                <input name="date-pay" type="date" class="form-control" id="input-6"
                                       placeholder="Ngày tạo">
                            </div>

                            <div class="form-group">
                                <label for="input-7">Phí bảo hành</label>
                                <input type="text" class="form-control" id="input-7" name="rate-insurance">
                            </div>

                            <div class="form-group">
                                <label for="input-8">Nội dung bảo hành</label>
                                <input type="text" class="form-control" id="input-8" name="content-insurance">
                            </div>

                            <div class="form-group">
                                <label for="input-9">Trạng thái bảo hành </label>
                                <div>
                                    <select class="form-control valid" id="input-9" name="status-insurance" required
                                            aria-invalid="false">
                                        <option name="value-status" value="1">Tạo yêu cầu bảo hành</option>
                                        <option name="value-status" value="2">Đã tiếp nhận</option>
                                        <option name="value-status" value="3">Đang bảo hành</option>
                                        <option name="value-status" value="4">Đã hoàn tất</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a href="<%=request.getContextPath()%>/manage/insurance">Hủy</a>
                                </button>

                                <button class="btn btn-success"><a>Thêm</a></button>
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
