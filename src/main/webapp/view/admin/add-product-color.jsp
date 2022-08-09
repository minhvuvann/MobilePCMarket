<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin | Màu sản phẩm</title>


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
                        <form action="add-color" method="post">

                            <div class="form-group">
                                <label for="input-2">Tên màu</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Tên màu"
                                       name="color_name" required value="${color.name}">
                            </div>

                            <div class="form-group">
                                <label for="input-3">Mã hex</label>
                                <input type="text" class="form-control" id="input-3" placeholder="Mã hex"
                                       name="color_hex" required value = "${color.codeHex}">
                            </div>

                            <div class="form-footer">
                                <button class="btn btn-danger"><a onClick="goback()">Hủy</a></button>

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


<jsp:include page="footer/footer.jsp" flush="true"/>
