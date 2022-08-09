<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ASTORE | Nội quy cửa hàng</title>
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
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/assets/images/logo1.png" type="image/x-icon"/>
</head>
<body>
<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<section>
    <div class="warranty">
        <ul class="tabs">
            <li class="tab-link">
                <a href="#">Giới thiệu AStore</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/storeRules">Nội quy cửa hàng</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/serviceQuality">Chất lượng phục vụ</a>
            </li>
            <li class="tab-link">
                <a href="<%=request.getContextPath()%>/warrantyAndExchange">Chính sách bảo hành & đổi trả</a>
            </li>
            <li class="tab-link current">
                <a href="<%=request.getContextPath()%>/deliveryPolicy">Chính sách giao hàng</a>
            </li>
        </ul>
        <div class="tab-content current" id="warranty1">
            <h2 style="text-align: left" align="center">
                <strong>NỘI QUY CỬA H&Agrave;NG ASTORE</strong>
            </h2>
            <p>
            <span style="font-size: 14pt"
            ><strong
            >Điều 1: Thời gian hoạt động của cửa h&agrave;ng</strong
            ></span
            >
            </p>
            <p>
                Cửa h&agrave;ng hoạt động từ 7h30 đến 21h h&agrave;ng ng&agrave;y.
                Tết v&agrave; c&aacute;c ng&agrave;y kh&aacute;c sẽ c&oacute;
                th&ocirc;ng b&aacute;o ri&ecirc;ng.
            </p>
            <p>
            <span style="font-size: 14pt"
            ><strong
            >Điều 2: Quy định h&agrave;ng h&oacute;a, dịch vụ kinh doanh tại
                cửa h&agrave;ng</strong
            ></span
            ><!--/p-->
            </p>
            <p>
                - H&agrave;ng h&oacute;a, dịch vụ kinh doanh tại cửa h&agrave;ng
                phải ph&ugrave; hợp với c&aacute;c mặt h&agrave;ng đ&atilde; đăng
                k&yacute; trong giấy chứng nhận đăng k&yacute; kinh doanh v&agrave;
                kh&ocirc;ng thuộc danh mục ph&aacute;p luật cấm kinh doanh.
            </p>
            <p>
                - Kh&ocirc;ng kinh doanh h&agrave;ng nh&aacute;i, h&agrave;ng lậu,
                h&agrave;ng giả, h&agrave;ng kh&ocirc;ng r&otilde; nguồn gốc.
            </p>
            <p>
                - H&agrave;ng h&oacute;a c&oacute; bảo h&agrave;nh th&igrave; giấy
                bảo h&agrave;nh phải ghi r&otilde; thời gian bảo h&agrave;nh
                v&agrave; địa điểm bảo h&agrave;nh. Tất cả h&agrave;ng h&oacute;a
                dịch vụ kinh doanh tại cửa h&agrave;ng phải c&oacute; thương mại,
                gi&aacute; b&aacute;n phải ni&ecirc;m yết tại địa điểm kinh doanh
                bằng VNĐ.
            </p>
            <p>
            <span style="font-size: 14pt"
            ><strong
            >Điều 3: Quy định về người đến giao dịch mua b&aacute;n, tham
                quan, thi h&agrave;nh c&ocirc;ng vụ tại cửa h&agrave;ng</strong
            ></span
            >
            </p>
            <p>
                <strong>- </strong>Mọi người đến cửa h&agrave;ng giao dịch mua
                b&aacute;n, tham quan, thi h&agrave;nh c&ocirc;ng vụ phải chấp
                h&agrave;nh nghi&ecirc;m chỉnh nội quy tại cửa h&agrave;ng,
                c&aacute;c quy định ph&aacute;p luật hiện h&agrave;nh v&agrave; sự
                hướng dẫn của c&aacute;n bộ nh&acirc;n vi&ecirc;n cửa h&agrave;ng.
            </p>
            <p>
                - CBNV cơ quan nh&agrave; nước v&agrave;o cửa h&agrave;ng để thi
                h&agrave;nh nhiệm vụ phải th&ocirc;ng b&aacute;o, xuất tr&igrave;nh
                chứng minh nh&acirc;n d&acirc;n v&agrave; c&aacute;c giấy tờ
                c&oacute; li&ecirc;n quan đến việc thi h&agrave;nh nhiệm vụ với
                người c&oacute; thẩm quyền ở cửa h&agrave;ng.
            </p>
            <p>
            <span style="font-size: 14pt"
            ><strong
            >Điều 4: Quy định đối với c&aacute;n bộ nh&acirc;n vi&ecirc;n
                tại cửa h&agrave;ng</strong
            ></span
            >
            </p>
            <p>
                - Thực hiện đ&uacute;ng chức tr&aacute;ch, nhiệm vụ được ph&acirc;n
                c&ocirc;ng, c&oacute; t&aacute;c phong đ&uacute;ng mực, th&aacute;i
                độ h&ograve;a nh&atilde;, khi&ecirc;m tốn khi giao tiếp v&agrave;
                giải quyết c&ocirc;ng việc.
            </p>
            <p>
                - Hướng dẫn tận t&igrave;nh cho mọi người trong cửa h&agrave;ng hiểu
                r&otilde; v&agrave; chấp h&agrave;nh theo đ&uacute;ng quy định của
                cửa h&agrave;ng v&agrave; c&aacute;c quy định của nh&agrave; nước.
            </p>
            <p>
                - Nghi&ecirc;m cấm mọi biểu hiện ti&ecirc;u cực, gian lận, g&acirc;y
                cản trở kh&oacute; khăn trong kinh doanh của cửa h&agrave;ng.
            </p>
            <p>
                - Nghi&ecirc;m cấm uống rượu bia, sử dụng chất k&iacute;ch
                th&iacute;ch trong thời gian thực hiện nhiệm vụ.
            </p>
            <p>
            <span style="font-size: 14pt"
            ><strong
            >Điều 5: Quy định về an to&agrave;n ph&ograve;ng ch&aacute;y
                chữa ch&aacute;y (PCCC)</strong
            ></span
            >
            </p>
            <p>
                - Mọi người nghi&ecirc;m chỉnh thực hiện đ&uacute;ng quy định về
                PCCC, ph&ograve;ng chống ch&aacute;y nổ, c&aacute;c hiệu lệnh, bảng
                chỉ dẫn tho&aacute;t hiểm, bảng cấm theo quy định ph&aacute;p luật
                PCCC được đặt treo nơi dễ thấy.
            </p>
            <p>
                - Nghi&ecirc;m cấm mua b&aacute;n, t&agrave;ng trữ, vận chuyển, sử
                dụng c&aacute;c chất, vật liệu, dụng cụ dễ ch&aacute;y, nổ.
            </p>
            <p>
                - Kh&ocirc;ng đun nấu, thắp hương, đốt nến, v&agrave;ng m&atilde;
                trong cửa h&agrave;ng.
            </p>
            <p>
                - Bộ phận phụ tr&aacute;ch về PCCC của cửa h&agrave;ng c&oacute;
                tr&aacute;ch nhiệm đ&ocirc;n đốc, kiểm tra mọi người thực hiện tốt
                c&aacute;c quy định về PCCC. Khi c&oacute; sự cố xảy ra phải
                b&igrave;nh tĩnh b&aacute;o động v&agrave; t&igrave;m c&aacute;ch
                b&aacute;o ngay cho ph&ograve;ng cảnh s&aacute;t PCCC TP.
            </p>
            <p>
                - C&aacute;c h&agrave;nh vi vi phạm về quy định PCCC để xảy ra sự cố
                phải chịu tr&aacute;ch nhiệm trước ph&aacute;p luật.
            </p>
            <p>
            <span style="font-size: 14pt"
            ><strong
            >Điều 6: Quy định về đảm bảo an ninh trật tự tại cửa
                h&agrave;ng</strong
            ></span
            >
            </p>
            <p>
                - Nghi&ecirc;m cấm mọi h&agrave;nh vi g&acirc;y rối trật tự trị an
                trong phạm vi cửa h&agrave;ng.
            </p>
            <p>
                - Nghi&ecirc;m cấm tổ chức tham gia đ&aacute;nh đề, hụi, c&aacute;
                cược, b&oacute;i to&aacute;n m&ecirc; t&iacute;n. Kh&ocirc;ng phổ
                biến c&aacute;c loại văn h&oacute;a phẩm đồi trụy, phản động.
            </p>
            <p>
                - Người đang mắc bệnh truyền nhiễm nhưng kh&ocirc;ng &aacute;p dụng
                c&aacute;c biện ph&aacute;p ph&ograve;ng chống l&acirc;y lan, người
                ăn xin, người đang say rượu bia, người đang mắc bệnh t&acirc;m thần
                kh&ocirc;ng được ph&eacute;p v&agrave;o cửa h&agrave;ng.
            </p>
            <p>
                - Lực lượng bảo vệ trong cửa h&agrave;ng, trong ca trực c&oacute;
                tr&aacute;ch nhiệm đảm bảo an ninh, an to&agrave;n t&agrave;i sản,
                h&agrave;ng h&oacute;a tại cửa h&agrave;ng, cuối ca trực c&oacute;
                b&agrave;n giao b&aacute;o c&aacute;o cụ thể t&igrave;nh h&igrave;nh
                ca trực.
            </p>
            <p>
            <span style="font-size: 14pt"
            ><strong>Điều 7: Quy định về văn minh thương mại</strong></span
            >
            </p>
            <p>
                - Thực hiện văn minh thương mại: ăn mặc gọn g&agrave;ng, lịch sự,
                h&ograve;a nh&atilde; trong giao tiếp ứng xử với mọi người.
            </p>
            <p>
                - Trung thực trong kinh doanh, thực hiện mua b&aacute;n h&agrave;ng
                h&oacute;a dịch vụ đ&uacute;ng gi&aacute; ni&ecirc;m yết tại điểm
                kinh doanh.
            </p>
            <p>
                - H&agrave;ng h&oacute;a được sắp xếp gọn g&agrave;ng, ngăn nắp theo
                khu vực kinh doanh đảm bảo thẩm mỹ, th&ocirc;ng tho&aacute;ng
                v&agrave; y&ecirc;u cầu ph&ograve;ng chống ch&aacute;y nổ.
            </p>
            <p>
            <span style="font-size: 14pt"
            ><strong
            >Điều 8: Quy định về xử l&yacute; vi phạm tại cửa
                h&agrave;ng</strong
            ></span
            >
            </p>
            <p>
                - Vi phạm li&ecirc;n quan đến ph&aacute;p luật, cửa h&agrave;ng sẽ
                lập văn bản v&agrave; chuyển cho cơ quan nh&agrave; nước c&oacute;
                thẩm quyền xử l&yacute;.
            </p>
            <p>
                - Vi phạm nội quy cửa h&agrave;ng: C&ocirc;ng ty sẽ c&oacute;
                c&aacute;c h&igrave;nh thức ph&ecirc; b&igrave;nh, cảnh c&aacute;o,
                đ&igrave;nh chỉ tạm thời, xử l&yacute; ri&ecirc;ng đối với
                c&aacute;c c&aacute; nh&acirc;n vi phạm l&agrave; CBNV c&ocirc;ng
                ty.
            </p>
        </div>
    </div>
</section>
<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>

</body>
<!-- javascript -->

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
