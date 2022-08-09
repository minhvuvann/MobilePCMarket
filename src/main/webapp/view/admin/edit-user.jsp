<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header/header.jsp" flush="true"/>


<title>Admin | User</title>


        <div class="content-wrapper">
            <div class="container-fluid">

                <div class="row mt-3">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title text-danger">${error}</div>
                                <div class="card-title">Sửa User</div>
                                <hr>
                                <form action="update-user" method="post">
                                    <div class="form-group">
                                        <label for="input-1">ID</label>
                                        <input type="text" class="form-control" id="input-1" readonly="readonly" placeholder="ID" value="${user.id}" name="user-id">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-2">Họ tên</label>
                                        <input type="text" class="form-control" id="input-2" placeholder="Họ tên" value="${user.name}" name="user-fullname">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-3">Email</label>
                                        <input type="text" class="form-control" id="input-3" placeholder="Địa chỉ Email" value="${user.email}" name="user-email">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-4">Số điện thoại</label>
                                        <input type="text" class="form-control" id="input-4" placeholder="Số điện thoại" value="${user.phone}" name="user-phone">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-5">UserName</label>
                                        <input type="text" class="form-control" id="input-5" placeholder="Username" value="${user.userName}" name="user-userName">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-6">Giới tính</label>
                                        <input type="text" class="form-control" id="input-6" placeholder="Giới tính" value="${user.gender}" name="user-gender">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-7">Ngày sinh</label>
                                        <input type="date" class="form-control" id="input-7" placeholder="Ngày sinh" value="${user.birthday}" name="user-birthday">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-8">Địa chỉ</label>
                                        <input type="text" class="form-control" id="input-8" placeholder="Địa chỉ" value="${user.address}" name="user-address">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-9">Photo url</label>
                                        <input type="text" class="form-control" id="input-9" placeholder="Phot url" value="${user.avatar}" name="user-photoUrl">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-10">Mật khẩu</label>
                                        <input type="password" class="form-control" id="input-10" placeholder="Mật khẩu" value="" name="user-password">
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
                                        <input type="date" class="form-control" id="input-11" placeholder="Ngày tạo" value="2021-09-25" name="user-created">
                                    </div>

                                    <div class="form-group">
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
