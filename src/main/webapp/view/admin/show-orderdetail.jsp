<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Chi tiết đơn hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">

            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-orderdetail.jsp">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>


            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Chi tiết đơn hàng</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">ID Đơn Hàng</th>
                                    <th scope="col">ID Sản Phẩm</th>
                                    <th scope="col">Tên Sản Phẩm</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td scope="row">1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>Iphone 13</td>
                                    <td>15.000.000 VNĐ</td>
                                    <td>1</td>
                                    <td>
                                        <button class="btn btn-danger"><a href="#">Xóa</a></button>
                                        <button class="btn btn-success"><a href="edit-orderdetail.jsp">Sửa</a></button>
                                    </td>


                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="./footer/footer.jsp" flush="true"/>
