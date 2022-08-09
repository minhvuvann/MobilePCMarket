<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ASTORE | Hệ thống cửa hàng</title>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/view/client/assets/css/style.css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/view/client/assets/css/grid%20copy.css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/view/client/assets/css/header-n-footer.css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/view/client/assets/css/slider.css"/>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/assets/images/logo1.png
" type="image/x-icon"/>
</head>
<body>
<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<section>
    <div class="center-sieuthi">
        <div class="tab-store">
          <span class="tab-id current" id="tab-id-province_3"
          >Hồ Chí Minh (2)</span
          >

            <span class="tab-id" id="tab-id-province_5">Hà Nội (2)</span>
        </div>

        <div class="tab-box current" id="tab-province_3">
            <ul>
                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Gò Vấp</strong>
                            <span
                            >232 Phan Huy Ích, Phường 12, Gò Vấp, Thành phố Hồ Chí
                    Minh</span
                            >
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>

                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Bình Tân</strong>
                            <span
                            >479 Kinh Dương Vương, An Lạc, Bình Tân, Thành phố Hồ Chí
                    Minh</span
                            >
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>
            </ul>
        </div>

        <div class="tab-box" id="tab-province_5">
            <ul>
                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Bạch Mai</strong>
                            <span
                            >25 P. Bùi Ngọc Dương, Bạch Mai, Hai Bà Trưng, Hà Nội</span
                            >
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>

                <li>
                    <div class="info-store">
                        <a
                                href="#"
                        >
                            <strong>AStore Văn Điển</strong>
                            <span>379 Đ. Ngọc Hồi, Văn Điển, Thanh Trì, Hà Nội</span>
                        </a>
                    </div>
                    <div class="direct">
                        <a
                                href="#"
                        >Xem chỉ đường</a
                        >
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="center-sieuthi">
        <div class="convenient">
            <strong>CÁC TIỆN ÍCH TẠI CỬA HÀNG</strong>
            <div>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/10Refresh-48x48.png"/>Hư
                    g&igrave; đổi nấy 12 th&aacute;ng (miễn ph&iacute; th&aacute;ng
                    đầu).
                </p>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/08BaoHanh-48x48.png"/>Bảo
                    h&agrave;nh ch&iacute;nh h&atilde;ng 1 năm c&oacute; cam kết.
                </p>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/06MayCaThe-48x48.png"/>Giao
                    h&agrave;ng tận nơi, mang m&aacute;y c&agrave; thẻ đến tận
                    nh&agrave;, kh&ocirc;ng mua kh&ocirc;ng sao.
                </p>
                <p>
                    <img
                            src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/02NhanVien-48x48.png"
                    />Nh&acirc;n vi&ecirc;n tư vấn sản phẩm nhiệt t&igrave;nh, nhiều
                    kinh nghiệm.
                </p>
                <p>
                    <img
                            src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/01BaiGiuXe-48x48.png"
                    />B&atilde;i giữ xe miễn ph&iacute; rộng r&atilde;i, tho&aacute;ng
                    m&aacute;t, nh&acirc;n vi&ecirc;n giữ xe chu đ&aacute;o dắt xe cho
                    kh&aacute;ch h&agrave;ng.
                </p>
                <p>
                    <img src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/09Wifi-48x48.png"/>Miễn
                    ph&iacute; Wifi tại si&ecirc;u thị cho kh&aacute;ch h&agrave;ng
                    đến mua sắm.
                </p>
                <p>
                    <img
                            src="<%=request.getContextPath()%>/view/client/assets/images/systemStore/04QuayTraiNghiem-48x48.png"
                    />Xem v&agrave; trải nghiệm thử sản phẩm miễn ph&iacute; trực tiếp
                    tại si&ecirc;u thị.
                </p>
            </div>
        </div>
    </div>
</section>
<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>


</body>
<!-- javascript -->
<script>
    var tabID3 = document.getElementById("tab-id-province_3");
    var tabID5 = document.getElementById("tab-id-province_5");
    var tab3 = document.getElementById("tab-province_3");
    var tab5 = document.getElementById("tab-province_5");
    tabID3.addEventListener("click", (e) => {
        e.preventDefault();
        tabID3.className = "tab-id current";
        tabID5.className = "tab-id";
        tab3.className = "tab-box current";
        tab5.className = "tab-box";
    });
    tabID5.addEventListener("click", (e) => {
        e.preventDefault();
        tabID5.className = "tab-id current";
        tabID3.className = "tab-id";
        tab5.className = "tab-box current";
        tab3.className = "tab-box";
    });
</script>
<script>
    var MenuItems = document.getElementById("MenuItems");
    MenuItems.style.maxHeight = "0px";

    function menutoggle() {
        if (MenuItems.style.maxHeight == "0px") {
            MenuItems.style.maxHeight = "200px";
        } else {
            MenuItems.style.maxHeight = "0px";
        }
    }
</script>
<!--icon account-->
<script>
    var icAcount = document.getElementById("link-account");
    var linkSign = document.getElementById("link-sign-in");
    icAcount.style.display = sessionStorage.getItem("icAccount");
    linkSign.style.display = sessionStorage.getItem("linkSignIn");
</script>
</html>
