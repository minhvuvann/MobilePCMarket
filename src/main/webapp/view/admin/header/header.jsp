<%@ page import="com.astore.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- <script type="text/javascript" src="http://ff.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=kQ1_6JxX15NM8b7kYUIAfrBCh58Z-bpM1xXTTX2_9LAlIVM-vkMU0bCbLR_nvkvC60HbFjFc_CGMM5IKZUW3UT3PpYzGWOxmFz7SNw-S3TK9pMygW8vkx5EcXljEUQZ9" charset="UTF-8"></script><link rel="stylesheet" crossorigin="anonymous" href="http://ff.kis.v2.scr.kaspersky-labs.com/E3E8934C-235A-4B0E-825A-35A08381A191/abn/main.css?attr=aHR0cDovL2xvY2FsaG9zdDo4MDgwL1dlYk9ubGluZV93YXJfZXhwbG9kZWQvYWRtaW4vcHJvZHVjdC9saXN0"/><script src="/WebOnline_war_exploded/view/admin/assets/js/pace.min.js"></script> -->
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/pace.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/plugins/summernote/dist/summernote-bs4.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/animate.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/sidebar-menu.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/app-style.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/sweetalert.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/view/admin/assets/images/favicon.ico" type="image/x-icon" rel="icon" />
    <script src="<%=request.getContextPath()%>/view/admin/assets/js/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="<%=request.getContextPath()%>/view/admin/assets/js/sweetalert.min.js"></script>

</head>
<body class="bg-theme bg-theme1">


<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming">
    <div class="loader-wrapper-outer">
        <div class="loader-wrapper-inner">
            <div class="loader"></div>
        </div>
    </div>
</div>


<div id="wrapper">
    <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
        <a class="nav-link toggle-menu my-icon-menu" href="javascript:;">
            <i class="icon-menu menu-icon"></i>
        </a>
        <div class="brand-logo" style="justify-content: flex-start;">
            <a href="<%=request.getContextPath()%>/manage/dashboard">
                <img src="<%=request.getContextPath()%>/view/admin/assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
                <!-- <h5 class="logo-text">Admin website</h5> -->
            </a>
        </div>
        <ul class="sidebar-menu do-nicescrol">
            <li class="sidebar-header">MENU ADMIN</li>
            <li>
                <a href="<%=request.getContextPath()%>/manage/dashboard">
                    <i class="zmdi zmdi-view-dashboard"></i><span>Tổng quan</span>
                </a>
            </li>

            <li>
                <a href="${pageContext.request.contextPath}/manage/admin">
                    <i class="zmdi zmdi-account-box"></i><span>Quản lí Admin</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/manage/user">
                    <i class="zmdi zmdi-accounts"></i><span>Quản lí User</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/category">
                    <i class="zmdi zmdi-store"></i><span>Danh mục</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/subcategory">
                    <i class="zmdi zmdi-collection-add"></i><span>Dòng sản phẩm</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/list-product">
                    <i class="fa fa-product-hunt"></i><span>Sản phẩm</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/image-product">
                    <i class="fa fa-image"></i><span>Ảnh sản phẩm</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/image-product-detail">
                    <i class="zmdi zmdi-image-alt"></i><span>Mô tả sản phẩm</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/color">
                    <i class="fa fa-paint-brush"></i><span>Màu sản phẩm</span>
                </a>
            </li>


            <li>
                <a href="<%=request.getContextPath()%>/manage/order">
                    <i class="zmdi zmdi-shopping-cart"></i><span>Đơn Hàng</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/delivery">
                    <i class="zmdi zmdi-car-wash"></i><span>Giao Hàng</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/manage/insurance">
                    <i class="zmdi zmdi-local-hospital"></i><span>Bảo Hành</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/manage/inventory">
                    <i class="zmdi zmdi-storage"></i><span>Tồn kho</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/slide">
                    <i class="zmdi zmdi-slideshow"></i><span>Slide</span>
                </a>
            </li>

            <li>
                <a href="<%=request.getContextPath()%>/manage/help">
                    <i class="fa fa-question-circle"></i><span>Hỗ trợ</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/manage/upload">
                    <i class="fa fa-upload"></i><span>Upload</span>
                </a>
            </li>


        </ul>
    </div>
    <header class="topbar-nav">
        <!-- nav fixed-top -->
        <nav class="navbar navbar-expand fixed-top" id="my-header">
            <ul class="navbar-nav mr-auto align-items-center">
                <li class="nav-item">
                    <a class="nav-link toggle-menu" href="javascript:;">
                        <i class="icon-menu menu-icon"></i>
                    </a>
                </li>
            </ul>

            <ul class="navbar-nav align-items-center right-nav-link">
                <li class="nav-item">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                        <span class="user-profile"><img src="<%=request.getContextPath()%>/view/admin/assets/images/avatar-admin.png" class="img-circle"
                                                        alt="avatar"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-item user-details">
                            <a href="javaScript:;">
                                <div class="media">
                                    <div class="avatar"><img class="align-self-start mr-3" src="<%=request.getContextPath()%>/view/admin/assets/images/avatar-admin.png" alt="user avatar"></div>
                                    <div class="media-body">
                                        <h6 class="mt-2 user-title"><%=((User)session.getAttribute("admin")).getName()%></h6>
                                        <b>admin</b>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-power mr-2"></i><a href="logout">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
    <div class="clearfix"></div>






