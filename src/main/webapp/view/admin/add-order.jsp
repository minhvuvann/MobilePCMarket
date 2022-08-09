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
                        <div class="card-title text-success">${success}</div>
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Thêm mới</div>
                        <hr>
                        <form action="add-order" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã khách hàng</label>
                                <input type="text" class="form-control" id="input-1" name="user-id"
                                       placeholder="Mã khách hàng">
                            </div>

                            <div class="form-group">
                                <label for="input-3">Tri giá</label>
                                <input type="text" class="form-control" id="input-3" name="order-price"
                                       placeholder="Trị giá">
                            </div>

                            <div class="form-group">
                                <label for="input-4">Ngày lập hóa đơn</label>
                                <input type="date" class="form-control" id="input-4" placeholder="Ngày lập hóa đơn"
                                       name="order-date">
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a href="<%=request.getContextPath()%>/manage/order">Hủy</a></button>
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
F
