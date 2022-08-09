<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Home</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/header-n-footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid%20copy.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/images/logotitle.png" type="image/x-icon"/>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

</head>
<body>
<div class="my-footer">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-3 my-m-6 my-c-12">
                <div class="my-footer-col-3">
                    <h4>Hệ thống cửa hàng</h4>
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/systemStore">Xem 4
                            cửa hàng</a></li>
                        <li><a href="<%=request.getContextPath()%>/storeRules">Nội quy
                            cửa hàng</a></li>

                    </ul>
                </div>

            </div>
            <div class="my-col my-l-3 my-m-6 my-c-12">
                <div class="my-footer-col-3">
                    <h4>Hỗ trợ khách hàng</h4>
                    <ul>


                        <li><a href="<%=request.getContextPath()%>/serviceQuality">Chất
                            lượng dịch vụ</a></li>
                        <li>

                            <a href="<%=request.getContextPath()%>/warrantyAndExchange">Bảo
                                hành và đổi trả</a>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="my-col my-l-3 my-m-6 my-c-12">
                <div class="my-footer-col-3">
                    <h4>Về thương hiệu ASTORE</h4>
                    <ul>
                        <li><a href="">Giới thiệu về ASTORE</a></li>
                        <li><a href="<%=request.getContextPath()%>/deliveryPolicy">Chính
                            sách giao hàng</a></li>
                    </ul>
                </div>
            </div>
            <div class="my-col my-l-3 my-m-6 my-c-12">
                <div class="my-row">
                    <div class="my-col my-l-0 my-m-3 my-c-0">
                    </div>

                    <div class="my-col my-l-12 my-m-6 my-c-12">
                        <div class="my-footer-col-3">
                            <a href="<%=request.getContextPath()%>#">
                                <c:choose>
                                    <c:when test="${fn:startsWith(linkLogoStore, 'http')}">
                                        <img src="${linkLogoStore}">
                                    </c:when>
                                    <c:otherwise>
                                        <img src="<%=request.getContextPath()%>${linkLogoStore}">
                                    </c:otherwise>
                                </c:choose>
                            </a>
                            <p>
                                Trải nghiệm tốt nhất về sản phẩm và dịch vụ của Apple tới toàn bộ
                                người dùng tại Việt Nam.
                            </p>
                        </div>
                    </div>
                    <div class="my-col my-l-0 my-m-3 my-c-0">
                    </div>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <hr>
                <p class="copyright"> © 2018. Công ty AGROUP0. GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp ngày
                    02/01/2007.
                </p>
                <p class="copyright"> GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020.
                </p>
            </div>
        </div>
    </div>
    <div id="help">
        <a href="<%=request.getContextPath()%>/help"
        ><img src="<%=request.getContextPath()%>/view/client/assets/images/help.png"
              alt="help"
        /></a>
    </div>

    <!-- scroll to top -->
    <button id="btn-scroll" onclick="topFunction()" title="Lên đầu trang"><i class="fas fa-chevron-up"></i></button>
    <!-- javascript -->
    <script>
        var mybutton = document.getElementById("btn-scroll");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction();
        };

        function scrollFunction() {
            if (
                document.body.scrollTop > 400 ||
                document.documentElement.scrollTop > 400
            ) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>

</div>
</body>
</html>
