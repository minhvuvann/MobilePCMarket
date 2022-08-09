<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ASTORE | Chính sách bảo hành và đổi trả</title>
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
<style>
    td:last-child {
        text-align: left;
    }
</style>

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
            <h2>CHÍNH SÁCH BẢO HÀNH, ĐỔI TRẢ SẢN PHẨM ASTORE.VN</h2>
            <p id="hmenuid2">
                <strong
                ><span style="font-size: 14pt"
                >1. Đối với sản phẩm mới</span
                ></strong
                >
            </p>
            <p>
                Khách hàng muốn bảo hành, đổi trả sản phẩm chọn 1 trong các phương
                thức bên dưới:
            </p>
            <div>
                <table border="1" cellpadding="10" cellspacing="0">
                    <tbody>
                    <tr>
                        <td>
                            <p><strong>NỘI DUNG CHÍNH SÁCH</strong></p>
                        </td>
                        <td>
                            <p><strong>ĐIỀU KIỆN ÁP DỤNG</strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                <strong>1) BẢO HÀNH CÓ CAM KẾT TRONG 12 THÁNG</strong>
                            </p>
                            <p>
                                - Chỉ áp dụng cho sản phẩm chính, KHÔNG áp dụng cho phụ
                                kiện đi kèm sản phẩm chính
                            </p>
                            <p>
                                + Bảo hành trong vòng 15 ngày (tính từ ngày AStore nhận
                                máy ở trạng thái lỗi và đến ngày gọi khách hàng ra lấy lại
                                máy đã bảo hành)
                            </p>
                            <p>
                                + Sản phẩm không bảo hành lại lần 2 trong 30 ngày kể từ
                                ngày máy được bảo hành xong.
                            </p>
                            <p>
                                + Nếu AStore vi phạm cam kết (bảo hành quá 15 ngày hoặc
                                phải bảo hành lại sản phẩm lần nữa trong 30 ngày kể từ lần
                                bảo hành trước), Khách hàng được áp dụng phương thức
                                <strong>Hư gì đổi nấy ngay và luôn</strong> hoặc
                                <strong>Hoàn tiền</strong> với
                                <strong>mức phí giảm 50%</strong>.
                            </p>
                            <p>
                                + Từ tháng thứ 13 trở đi, không áp dụng bảo hành cam kết,
                                chỉ áp dụng bảo hành hãng (nếu có)
                            </p>
                        </td>
                        <td><p>- Sản phẩm đủ điều kiện bảo hành của hãng.</p></td>
                    </tr>
                    <tr>
                        <td>
                            <p><strong>2) HƯ GÌ ĐỔI NẤY NGAY VÀ LUÔN</strong></p>
                            <p>
                                Sản phẩm hư gì thì đổi đó (cùng model, cùng dung lượng,
                                cùng màu sắc...) đối với sản phẩm chính và đổi tương đương
                                đối với phụ kiện đi kèm, cụ thể:
                            </p>
                            <p>
                                <strong
                                >2.1) Hư sản phẩm chính thì đổi sản phẩm chính
                                    mới</strong
                                >
                            </p>
                            <p>- Tháng đầu tiên kể từ ngày mua: miễn phí</p>
                            <p>
                                - Tháng thứ 2 đến tháng thứ 12: phí 10% giá trị hóa
                                đơn/tháng.
                            </p>
                            <p>(VD: tháng thứ 2 phí 10%, tháng thứ 3 phí 20%...)</p>
                            <p>
                                Lưu ý: Nếu không có sản phẩm chính đổi cho Khách hàng thì
                                áp dụng chính sách
                                <strong>Bảo hành có cam kết </strong>hoặc
                                <strong>Hoàn tiền</strong> với mức phí giảm 50%.
                            </p>
                            <p>
                                <strong
                                >2.2) Hư phụ kiện đi kèm thì đổi phụ kiện có cùng công
                                    năng mà AStore đang kinh doanh</strong
                                >
                            </p>
                            <p>
                                Phụ kiện đi kèm được đổi miễn phí trong vòng 12 tháng kể
                                từ ngày mua sản phẩm chính bằng hàng phụ kiện AStore đang
                                kinh doanh mới với công năng tương đương.
                            </p>
                            <p>
                                Lưu ý: Nếu không có phụ kiện tương đương hoặc Khách hàng
                                không thích thì áp dụng bảo hành hãng
                            </p>
                            <p>
                                <strong>2.3) Lỗi phần mềm</strong> không áp dụng, mà chỉ
                                khắc phục lỗi phần mềm
                            </p>
                            <p>
                                <strong
                                >2.4) Trường hợp Khách hàng muốn đổi full box</strong
                                >
                                (nguyên thùng, nguyên hộp): ngoài việc áp dụng mức phí đổi
                                trả tại Mục 2.1 thì Khách hàng sẽ trả thêm phí lấy full
                                box tương đương 20% giá trị hóa đơn.
                            </p>
                        </td>
                        <td>
                            <p>
                                - Sản phẩm đổi trả phải giữ nguyên 100% hình dạng ban đầu
                                và đủ điều kiện bảo hành của hãng.
                            </p>
                            <p>
                                - Thân máy không trầy xước màn hình (áp dụng cho iPhone,
                                iPad, iMac, Mac, MacBook, Apple Watch)
                            </p>
                            <p>
                                - Sản phẩm chỉ dùng cho mục đích sử dụng cá nhân, không áp
                                dụng việc sử dụng sản phẩm cho mục đích thương mại. 
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                3) <strong>HOÀN TIỀN:</strong> Áp dụng cho sản phẩm lỗi và
                                không lỗi.
                            </p>
                            <p>
                                - Tháng đầu tiên kể từ ngày mua: phí 20% giá trị hóa đơn
                            </p>
                            <p>
                                - Tháng thứ 2 đến tháng thứ 12: phí 10% giá trị hóa
                                đơn/tháng.
                            </p>
                        </td>
                        <td>
                            <p>
                                - Sản phẩm đổi trả phải giữ nguyên 100% hình dạng ban đầu
                                và đủ điều kiện bảo hành của hãng.
                            </p>
                            <p>
                                - Thân máy không trầy xước màn hình (áp dụng cho iPhone,
                                iPad, iMac, Mac, MacBook, Apple Watch)
                            </p>
                            <p>
                                - Sản phẩm chỉ dùng cho mục đích sử dụng cá nhân, không áp
                                dụng việc sử dụng sản phẩm cho mục đích thương mại.
                            </p>
                            <p>- Hoàn trả lại đầy đủ hộp, sạc, phụ kiện đi kèm:</p>
                            <p>
                                + Mất hộp thu phí 2% giá trị hóa đơn đối với nhóm iPhone,
                                iPad, iMac, Mac, MacBook, Apple Watch)
                            </p>
                            <p>
                                + Mất phụ kiện thu phí theo giá bán tối thiểu trên website
                                TopZone và chính hãng (tối đa 5% giá trị hóa đơn) cho tất
                                cả nhóm sản phẩm
                            </p>
                            <p>
                                - Hoàn trả toàn bộ hàng khuyến mãi. Nếu mất hàng khuyến
                                mãi sẽ thu phí theo mức giá đã được công bố.
                            </p>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <p id="hmenuid4">
                <strong
                ><span style="font-size: 14pt"
                >2. Đối với sản phẩm đã qua sử dụng</span
                ></strong
                >
            </p>
            <table border="1" cellpadding="10" cellspacing="0">
                <colgroup>
                    <col/>
                    <col/>
                </colgroup>
                <tbody>
                <tr>
                    <td style="width: 605.359px">
                        <p><strong>NỘI DUNG CHÍNH SÁCH</strong></p>
                    </td>
                    <td style="width: 344.641px">
                        <p><strong>ĐIỀU KIỆN ÁP DỤNG</strong></p>
                    </td>
                </tr>
                <tr>
                    <td style="width: 605.359px">
                        <p><strong>Sản phẩm lỗi kĩ thuật tháng đầu tiên</strong></p>
                        <p>- Áp dụng bảo hành</p>
                        <p>- Hoặc hoàn tiền phí 10% giá trị hoá đơn</p>
                        <p><strong>Từ tháng thứ 2 trở đi </strong></p>
                        <p>- Không áp dụng đổi trả. </p>
                        <p>
                            - Áp dụng bảo hành hãng nếu sản phẩm còn thời gian bảo hành
                            của hãng và đủ điều kiện bảo hành của hãng
                        </p>
                    </td>
                    <td style="width: 344.641px">
                        <p>
                            - Sản phẩm đổi trả phải giữ nguyên 100% hình dạng ban đầu và
                            đủ điều kiện bảo hành của hãng.
                        </p>
                        <p>
                            - Sản phẩm chỉ dùng cho mục đích sử dụng cá nhân, không áp
                            dụng việc sử dụng sản phẩm cho mục đích thương mại.
                        </p>
                        <p>
                            - Hoàn trả lại đầy đủ sạc, phụ kiện đi kèm: mất phụ kiện thu
                            phí theo giá bán tối thiểu trên website TopZone và chính
                            hãng (tối đa 5% giá trị hóa đơn) 
                        </p>
                    </td>
                </tr>
                </tbody>
            </table>
            <p> </p>
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
