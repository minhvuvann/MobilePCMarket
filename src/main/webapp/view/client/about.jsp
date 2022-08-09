<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | About</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>


<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<!-- Offer -->
<div class="offer about-content">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="../../../../../../../../../../Lab_LTWeb/AStore-master/back_End/Astore/src/main/webapp/view/client/assets/images/about/apple_staff_4x-removebg-preview.png">
            </div>
            <div class="col-2">
                <h1>ĐẠI LÝ ỦY QUYỀN</h1>
                <p>Từ tháng 09/2020, ASTORE – chính thức là đại lý uỷ quyền Apple (Apple Authorized Reseller) tại
                    Việt Nam. </p>
                <a href="" class="btn">Xem video</a>
            </div>

        </div>
    </div>
</div>

<div class="offer about-content">
    <div class="small-container">
        <div class="row">

            <div class="col-2">
                <h1>DÒNG SẢN PHẨM</h1>
                <p>Toàn bộ sản phẩm bao gồm iPhone, iPad, MacBook, Apple Watch, cho tới AirPods và nhiều sản phẩm
                    phụ kiện… đều là hàng chính hãng được phân phối thông qua công ty Apple Việt Nam.</p>
                <a href="" class="btn">Explore Now &#8594;</a>
            </div>
            <div class="col-2">
                <img src="../../../../../../../../../../Lab_LTWeb/AStore-master/back_End/Astore/src/main/webapp/view/client/assets/images/about/product.png">
            </div>
        </div>
    </div>
</div>


<div class="offer about-content">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="../../../../../../../../../../Lab_LTWeb/AStore-master/back_End/Astore/src/main/webapp/view/client/assets/images/about/9879bb3d83fba3127e5415ad6e558650.jpg">
            </div>
            <div class="col-2">
                <h1>CỬA HÀNG ASTORE</h1>
                <p>Ðội ngũ chuyên viên tư vấn
                    của ShopDunk được đào tạo bài bản bởi các chuyên gia Apple, sẵn sàng hỗ trợ khách hàng về sản
                    phẩm, kỹ thuật, ứng dụng hay các công nghệ mới nhất từ Apple.</p>
                <a href="" class="btn">Explore Now &#8594;</a>
            </div>

        </div>
    </div>
</div>


<!-- Testimonial -->
<div class="testimonial">
    <div class="small-container">
        <h1 class="title color-white"><i class="fa fa-apple" aria-hidden="true"></i> ĐỘI NGŨ PHÁT TRIỂN</h1>
            <div class="row">
                <div class="col-3 about-us">
                    <i class="color-white fa fa-quote-left"></i>
                    <p class="color-white">Lorem ipsum is simply dummy text of the printing and typesetting
                        industry. Lorem Ipsum has been
                        industry's standard dummy text.</p>
                    <img src="../../../../../../../../../../Lab_LTWeb/AStore-master/back_End/Astore/src/main/webapp/view/client/assets/images/cofounder/loc.jpg">
                    <h3 class="color-white">Thành Lộc</h3>
                </div>
                <div class="col-3 about-us">
                    <i class="color-white fa fa-quote-left"></i>
                    <p class="color-white">Lorem ipsum is simply dummy text of the printing and typesetting
                        industry. Lorem Ipsum has been
                        industry's standard dummy text.</p>
                    <img src="./assets/images/cofounder/thanh.jpg">
                    <h3 class="color-white">Văn Thanh</h3>
                </div>
                <div class="col-3 about-us">
                    <i class="color-white fa fa-quote-left"></i>
                    <p class="color-white">Lorem ipsum is simply dummy text of the printing and typesetting
                        industry. Lorem Ipsum has been
                        industry's standard dummy text.</p>
                    <img src="../../../../../../../../../../Lab_LTWeb/AStore-master/back_End/Astore/src/main/webapp/view/client/assets/images/cofounder/minh.jpg">
                    <h3 class="color-white">Văn Minh</h3>
                </div>
            </div>
    </div>
</div>

<!-- Brands -->

<!-- <div class="brands">
    <div class="small-container">
        <div class="row">
            <div class="col-5">
                <img src="./Assets/images/logo-godrej.png">
            </div>
            <div class="col-5">
                <img src="./Assets/images/logo-oppo.png">
            </div>
            <div class="col-5">
                <img src="./Assets/images/logo-coca-cola.png">
            </div>
            <div class="col-5">
                <img src="./Assets/images/logo-paypal.png">
            </div>
            <div class="col-5">
                <img src="./Assets/images/logo-philips.png">
            </div>
        </div>
    </div>
</div> -->

<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
<div id="help">
    <a href="<%=request.getContextPath()%>/view/client/help.jsp"
    ><img src="<%=request.getContextPath()%>/view/client/view/client/assets/images/help.png"
          alt="help"
    /></a>
</div>
<!-- javascript -->

<script src="<%=request.getContextPath()%>/view/client/assets/js/home.js"></script>

</body>
</html>