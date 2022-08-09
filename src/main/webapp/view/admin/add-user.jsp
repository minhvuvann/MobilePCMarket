<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin | User</title>
<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-success">${success}</div>
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Thêm mới</div>
                        <hr>
                        <form action="add-user" method="post">
<%--                            <div class="form-group">--%>
<%--                                <label for="input-1">ID</label>--%>
<%--                                <input type="text" class="form-control" id="input-1" placeholder="ID" name="user-id">--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <label for="input-2">Họ tên</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Họ tên"
                                       name="user-name" required value="${user.name}">
                            </div>
                            <div class="form-group">
                                <label for="input-3">Email</label>
                                <input type="text" class="form-control" id="input-3" placeholder="Địa chỉ Email"
                                       name="user-email" value="${user.email}">
                            </div>
                            <div class="form-group">
                                <label for="input-4">Số điện thoại</label>
                                <input type="text" class="form-control" id="input-4" placeholder="Số điện thoại"
                                       name="user-phone" value="${user.phone}">
                            </div>
                            <div class="form-group">
                                <label for="input-5">UserName</label>
                                <input type="text" class="form-control" id="input-5" placeholder="Username"
                                       name="user-userName"  value="${user.userName}">
                            </div>
                            <div class="form-group">
                                <label for="input-6">Giới tính</label>
                                <input type="text" class="form-control" id="input-6" placeholder="Giới tính"
                                       name="user-gender"  value="${user.gender}">
                            </div>
                            <div class="form-group">
                                <label for="input-7">Ngày sinh</label>
                                <input type="date" class="form-control" id="input-7" placeholder="Ngày sinh"
                                       name="user-birthday"  value="${user.birthday}">
                            </div>
                            <div class="form-group">
                                <label for="input-8">Địa chỉ</label>
                                <input type="text" class="form-control" id="input-8" placeholder="Địa chỉ"
                                       name="user-address"  value="${user.address}">
                            </div>
                            <div class="form-group">
                                <label for="input-9">Photo url</label>
                                <input type="text" class="form-control" id="input-9" placeholder="Phot url"
                                       name="user-photoUrl"  value="${user.photoUrl}">
                            </div>
                            <div class="form-group">
                                <label for="input-10">Mật khẩu</label>
                                <input type="password" class="form-control" id="input-10" placeholder="Mật khẩu"
                                       name="user-password"  value="${user.password}">
                                <input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu

                                <script>
                                    function myFunction1() {
                                        var x = document.getElementById("input-10");
                                        if (x.type === "password") {
                                            x.type = "text";
                                        } else {
                                            x.type = "password";
                                        }
                                    }
                                </script>
                            </div>
                            <div class="form-group">
                                <label for="input-11">Ngày tạo</label>
                                <input type="date" class="form-control" id="input-11" placeholder="Ngày tạo"
                                       name="user-created">
                            </div>

                            <div class="form-group">
                                <button class="btn btn-danger"><a onclick="goback()">Hủy</a></button>

                                <button class="btn btn-success" type="submit"><a>Thêm</a></button>
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
