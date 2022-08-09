<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Tồn kho</title>


<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Cập nhật sản phẩm tồn kho</div>
                        <hr>
                        <form action="update-inventory" method="post">
                            <div class="form-group">
                                <label for="input-1">Mã sản phẩm</label>
                                <input type="text" class="form-control" id="input-1" readonly="readonly"
                                       placeholder="Mã sản phẩm" value="${inventory.id}" name="product-id">
                            </div>
                            <div class="form-group">
                                <label for="input-2">Số lượng</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Số lượng" value="${inventory.count}"
                                       name="product-amount">
                            </div>

                            <div class="form-group">
                                <button class="btn btn-danger"><a href="inventory">Hủy</a></button>

                                <button type="submit" class="btn btn-success"><a>Cập nhật</a>
                                </button>
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
