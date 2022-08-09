<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Sản phẩm</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Cập nhât sản phẩm</div>
                        <hr>
                        <form action="update-product" method="post">


                            <div class="form-group">
                                <label for="input-1">Mã sản phẩm</label>
                                <input type="text" class="form-control" id="input-1" name="product_id" required placeholder="Mã sản phẩm" value="${product.id}">
                            </div>

                            <div class="form-group">
                                <label for="input-2">Mã dòng sản phẩm</label>
                                <input type="text" class="form-control" id="input-2" name="subcategory_id" required placeholder="Mã dòng sản phẩm" value="${product.subCategoryId}">
                            </div>

                            <div class="form-group">
                                <label for="input-4">Giá</label>
                                <input type="text" class="form-control" id="input-4" name="product_price" required placeholder="Giá" value="<fmt:formatNumber type = "number" groupingUsed = "false"  value = "${product.price}" />">
                            </div>

                            <div class="form-group">
                                <label for="input-7" class="col-form-label">Mã màu sắc</label>
                                <input type="text" class="form-control" id="input-7" name="product_color_id" required placeholder="Mã màu" value="${product.colorId}">
                            </div>
                            <div class="form-group">
                                <label for="input-8" class="col-form-label">Kích thước màn hình</label>
                                <input type="text" class="form-control" id="input-8" name="product_size_screen" placeholder="Kích thước màn hình" value="${product.sizeScreen}">
                            </div>

                            <div class="form-group">
                                <label for="input-9" class="col-form-label">Độ phân giải</label>
                                <input type="text" class="form-control" id="input-9" name="product_resolution_screen" placeholder="Độ phân giải" value="${product.screenResolution}">
                            </div>

                            <div class="form-group">
                                <label for="input-10" class="col-form-label">Camera trước</label>
                                <input type="text" class="form-control" id="input-10" name="product_frontcam" placeholder="Camera trước" value="${product.frontCamera}">
                            </div>
                            <div class="form-group">
                                <label for="input-11" class="col-form-label">Camera sau</label>
                                <input type="text" class="form-control" id="input-11" name="product_backcam" placeholder="Camera sau" value="${product.backCamera}">
                            </div>
                            <div class="form-group">
                                <label for="input-12" class="col-form-label">Ram</label>
                                <input type="text" class="form-control" id="input-12" name="product_ram" required placeholder="Ram" value="${product.ram}">
                            </div>
                            <div class="form-group">
                                <label for="input-13" class="col-form-label">Rom</label>
                                <input type="text" class="form-control" id="input-13" name="product_rom" required placeholder="Rom" value="${product.rom}">
                            </div>


                            <div class="form-footer">
                                <button class="btn btn-danger"><a onclick="goback()">Hủy</a></button>
                                <button class="btn btn-success" type="submit"><a>Cập nhật</a></button>

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
