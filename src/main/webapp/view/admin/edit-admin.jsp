<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header/header.jsp" flush="true"/>


<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title text-danger">${error}</div>
                        <div class="card-title">Cập nhật admin</div>
                        <hr>
                        <form action="update-admin" method="post">
                            <div class="form-group">
                                <label for="input-1">ID</label>
                                <input type="text" class="form-control" readonly id="input-1" placeholder="Admin ID"
                                       name="user-id" value="${user.id}">
                            </div>
                            <div class="form-group">
                                <label for="input-2">Username</label>
                                <input type="text" class="form-control"  readonly id="input-2" placeholder="Username"
                                       name="user-username" value="${user.userName}">
                            </div>
                            <div class="form-group">
                                <label for="myinput">Password</label>
                                <input type="password" class="form-control"  id="myinput" placeholder="Mật khẩu"
                                       name="user-password" value="${user.password}">
                                <input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
                                <script>
                                    function myFunction1() {
                                        var x = document.getElementById("myinput");
                                        if (x.type === "password") {
                                            x.type = "text";
                                        } else {
                                            x.type = "password";
                                        }
                                    }
                                </script>
                            </div>
                            <div class="form-group">
                                <label for="input-3">Tên Admin</label>
                                <input type="text" class="form-control" id="input-3" placeholder="Tên Admin" name="user-name"
                                       value="${user.name}">
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
