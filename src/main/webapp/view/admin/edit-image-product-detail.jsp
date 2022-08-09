<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin | Mô tả sản phẩm</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Cập nhật mô tả sản phẩm</div>
                        <hr>
                        <form action="update-image-product-detail" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã hình ảnh</label>
                                <input type="text" class="form-control" id="input-1" placeholder="Mã hình ảnh"
                                       name="image_id" required value="${image.id}" readonly>
                            </div>
                            <div class="form-group">
                                <label for="input-2">Mã dòng sản phẩm</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Mã dòng sản phẩm"
                                       name="product_id" required value="${image.productId}">
                            </div>
                            <div class="form-group">
                                <label for="input-3">URL mô tả</label>
                                <input type="text" class="form-control" id="input-3" placeholder="URL mô tả"
                                       name="image_url" required value="${image.url}">
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


<jsp:include page="footer/footer.jsp" flush="true"/>
