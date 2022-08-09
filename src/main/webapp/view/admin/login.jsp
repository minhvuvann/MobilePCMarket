<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login Admin</title>

    <link href="<%=request.getContextPath()%>/view/admin/assets/css/pace.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/animate.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/app-style.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/images/favicon.ico" type="image/x-icon" rel="icon" />
    <script src="<%=request.getContextPath()%>/view/admin/assets/js/jquery.min.js"></script>



</head>

<body>



    <!-- start loader -->
    <div id="pageloader-overlay" class="visible incoming">
        <div class="loader-wrapper-outer">
            <div class="loader-wrapper-inner">
                <div class="loader"></div>
            </div>
        </div>
    </div>
    <!-- end loader -->

    <!-- Start wrapper-->
    <div id="wrapper">

        <div class="loader-wrapper">
            <div class="lds-ring">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <div class="card card-authentication1 mx-auto my-5">
            <div class="card-body">
                <div class="card-content p-2">
                    <div class="text-center">
                        <img src="<%=request.getContextPath()%>/view/admin/assets/images/logo-icon.png" alt="logo" style="width:120px">
                    </div>
                    <div class="card-title text-uppercase text-center py-3">Đăng nhập</div>
                    <div class="card-title text-danger">${error}</div>
                    <form action="login" method="post">
                        <div class="form-group">
                            <label for="exampleInputUsername" class="sr-only">Username</label>
                            <div class="position-relative has-icon-right">
                                <input type="text" id="exampleInputUsername" class="form-control input-shadow" placeholder="Username" name="admin-username" required value="${user.userName}">
                                <div class="form-control-position">
                                    <i class="icon-user"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword" class="sr-only">Password</label>
                            <div class="position-relative has-icon-right">
                                <input type="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="Password" name="admin-password" required value="${user.password}">
                                <div class="form-control-position">
                                    <i class="icon-lock"></i>
                                </div>
                            </div>
                        </div>
                        <div><b> <span style="color:#00d9e8"> </span></b></div>
                        <div class="form-row">
                            <div class="form-group col-6">
                                <div class="icheck-material-white">
                                    <input type="checkbox" id="user-checkbox" />
                                    <label for="user-checkbox">Ghi nhớ</label>
                                </div>
                            </div>
                        </div>
                        <button  class="btn btn-light btn-block"><a>Đăng nhập</a></button>
                    </form>
                </div>
            </div>

        </div>

        <!--Start Back To Top Button-->

    </div>

</body>

</html>
