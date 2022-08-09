<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin</title>

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
                        <form action="add-admin" method="post">

                            <div class="form-group">
                                <label for="input-1">Username</label>
                                <input type="text" class="form-control" id="input-1" placeholder="Username"
                                       name="admin-username" value="${user.userName}" required>
                            </div>
                            <div class="form-group">
                                <label for="input-1">Password</label>
                                <input type="password" class="form-control" id="myinput" placeholder="Password"
                                       name="admin-password" value="${user.password}" required>
                                <input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
                                <script>function myFunction1() {
                                    var x = document.getElementById("myinput");
                                    if (x.type === "password") {
                                        x.type = "text";
                                    } else {
                                        x.type = "password";
                                    }
                                }</script>
                            </div>
                            <div class="form-group">
                                <label for="input-2">Tên Admin</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Tên Admin"
                                       name="admin-name" required value="${user.name}">
                            </div>
                            <div class="form-footer">
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
