<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Dòng sản phẩm</title>


<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Cập nhật dòng sản phẩm</div>
                        <hr>
                        <form action="update-subcategory" method="post">

                            <div class="form-group">
                                <label for="input-1">Mã dòng sản phẩm</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-1"
                                       placeholder="Mã dòng sản phẩm" name="sub_category_id" value="${subcategory.id}" required>
                            </div>
                            <div class="form-group">
                                <label for="input-2">Mã danh mục</label>
                                <input type="text" class="form-control" readonly="readonly" id="input-2"
                                       placeholder="Mã danh mục" name="category_id" value="${subcategory.idCategory}" required>
                            </div>
                            <div class="form-group">
                                <label for="input-3">Tên dòng sản phẩm</label>
                                <input type="text" class="form-control" id="input-3" placeholder="Tên dòng sản phẩm"
                                       name="sub_category_name" value="${subcategory.name}" required>
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
