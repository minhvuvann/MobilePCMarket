<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Product Details</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/product-details.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
    .active-rom {
        background-color: cornflowerblue !important;
    }

    .my-color {
        border-color: white;
        border-width: 1px;
        border-style: solid;
    }

    .active-color {
        border-color: white;
        border-width: 7px !important;
    }
    .color{
        background-color: #0aa60f;
        height: 8px;width: 8px;
        border-radius: 4px;
        display: none;
    }
    .color-active{
       display: block !important;
    }
</style>
<body>
<jsp:include page="/view/client/header/header.jsp"></jsp:include>


<%--<jsp:useBean id="product" scope="request" type="com.astore.model.Product"/>--%>
<div class="my-product-detail" style="margin-top: 120px;">
    <div class="my-container-information" style="padding-bottom: 50px;">
        <div class="my-row">


            <div class="my-col my-l-6 my-m-6 my-c-12 my-slider-product" style="height: 100%;">
                <div class="my-row">
                    <div class="my-col my-l-12 my-m-12 my-c-12">
                        <img src="${product.listPhotoUrl.get(0)}" id="ProductImg"
                             style="width: 100%; border-radius: 8px;">
                    </div>
                    <div class="my-col my-l-12 my-m-12 my-c-12" style="margin-top: 25px;">
                        <div class="small-img-row my-row">
                            <c:forEach items="${product.listPhotoUrl}" var="img">
                                <div class="small-img-col my-col my-l-3 my-m-3 my-c-3">
                                    <c:choose>
                                        <c:when test="${fn:startsWith(img, 'http')}">
                                            <img src="${img}"
                                                 class="small-img" style="width: 100%; border-radius: 5px;">
                                        </c:when>
                                        <c:otherwise>
                                            <img src="<%=request.getContextPath()%>/${img}"
                                                 class="small-img" style="width: 100%; border-radius: 5px;">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>

            <div class="my-col my-l-6 my-m-6 my-c-12 my-infor-product">
                <div class="my-row my-row-infor-product">


                    <div class="my-col my-l-12 my-m-12 my-c-12" style="text-align: left !important;">
                        <h1 style="font-weight: bolder; text-align: left;">
                            ${product.name}
                        </h1>
                        <h1 style="font-weight: bolder; text-align: left;">
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${product.price}" type="currency"/>
                        </h1>
                    </div>

                    <div class="my-col my-l-12 my-m-12 my-c-12" style="text-align: left !important;">
                        <h4 style="font-weight: bolder; text-align: left; margin: 20px 0px 20px 0px;">
                            Dung lượng
                        </h4>
                    </div>

                    <div class="my-col my-l-12 my-m-12 my-c-12" style="text-align: left !important;">
                        <div class="choose-rom my-row">
                            <c:forEach items="${rom}" var="r">
                                <c:if test="${r.id == product.id && r.rom == product.rom}">
                                    <div class=" my-col my-l-2 my-m-2 my-c-2 mr-bt" style="width: 100%;">
                                        <a href="product?id=${r.id}" class="active-rom">
                                            <button class="active-rom" type="button" style="width: 100%;">  ${r.rom}GB
                                            </button>
                                        </a>
                                    </div>
                                </c:if>
                                <c:if test="${r.id != product.id || r.rom != product.rom}">
                                    <div class=" my-col my-l-2 my-m-2 my-c-2 mr-bt" style="width: 100%;">
                                        <a href="product?id=${r.id}">
                                            <button type="button" style="width: 100%;"> ${r.rom}GB</button>
                                        </a>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="my-col my-l-12 my-m-12 my-c-12" style="text-align: left !important;">
                        <h4 style="font-weight: bolder; text-align: left;  margin: 20px 0px 10px 0px;">
                            Màu sắc
                        </h4>
                    </div>
                    <div class="my-col my-l-12 my-m-12 my-c-12">\
                        <div class="my-row">
                            <c:forEach items="${color}" var="c">


                                <c:if test="${c.id == product.id && c.colorId == product.colorId}">
                                    <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt" style="display: flex; justify-content: center; align-items: center; flex-direction: column">
                                        <button id="${c.id}" class="my-color active-color" type="button"
                                                onclick="changeColor('${c.id}')"
                                                style="width:45px; height:45px;  border-radius:50%; background-color: <%='#'%>${c.colorHex}">
                                        </button>
                                        <div  id="${c.id}color" class="color color-active"></div>
                                    </div>
                                </c:if>
                                <c:if test="${c.id != product.id || c.colorId != product.colorId}">
                                    <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt"  style="display: flex; justify-content: center; align-items: center; flex-direction: column">
                                        <button id="${c.id}" class="my-color" type="button"
                                                onclick="changeColor('${c.id}')"
                                                style="width:45px; height:45px;  border-radius:50%; background-color: <%='#'%>${c.colorHex}">
                                        </button>
                                        <div id="${c.id}color" class="color"></div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <%--                    <div class=" my-col my-l-12 my-m-12 my-c-12">--%>
                    <%--                        <div class="my-row">--%>
                    <%--                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">--%>
                    <%--                                <button type="button"--%>
                    <%--                                        style="width:45px; height:45px; border-radius:50%; background-color:  #54524f;">--%>
                    <%--                                </button>--%>
                    <%--                            </div>--%>
                    <%--                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">--%>
                    <%--                                <button type="button"--%>
                    <%--                                        style="width:45px; height:45px;  border-radius:50%; background-color: #a7c1d9;">--%>
                    <%--                                </button>--%>
                    <%--                            </div>--%>
                    <%--                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">--%>
                    <%--                                <button type="button"--%>
                    <%--                                        style="width:45px; height:45px;  border-radius:50%; background-color: #f1f2ed;">--%>
                    <%--                                </button>--%>
                    <%--                            </div>--%>
                    <%--                            <div class=" my-col my-l-1 my-m-1 my-c-1 color-bt">--%>
                    <%--                                <button type="button"--%>
                    <%--                                        style="width:45px; height:45px;   border-radius:50%; background-color: #fae7cf;">--%>
                    <%--                                </button>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>

                    <div class=" my-col my-l-12 my-m-12 my-c-12" style="text-align: left !important;">
                        <div class="my-row my-infor-promotion">
                            <h4 style="display: block; width: 100%; padding: 0px; margin: 0px;">
                                Khuyến mãi
                            </h4>
                            <h5 style="display: block; padding: 0px; margin: 0px;">
                                Giá và khuyến mãi dự kiến áp dụng đến 23:00 31/03
                            </h5>
                            <hr style="width: 100%; height :1px; color: white; background: white;">
                            <p>
                                * Tặng Phiếu mua hàng giảm 10% khi mua Apple Watch SE và Series 7 tại ASTORE.
                            </p>

                            <p>
                                * Phụ kiện chính hãng Apple, iPad, MacBook, Apple Watch giảm 8 - 30% khi mua kèm
                                iPhone
                            </p>
                        </div>
                    </div>

                    <div class=" my-col my-l-12 my-m-12 my-c-12">
                        <div class="my-row">
                            <div class=" my-col my-l-12 my-m-12 my-c-12 color-bt">
                                <a id="buy" href="<%=request.getContextPath()%>/addCart?idSP=${product.id}">
                                    <button type="button"
                                            style="margin-top: 20px;
                                        width:100%; height:60px; border-radius:10px; background-color:  #0071e3; color: white; font-size: 23px; font-weight: bold;">
                                        Mua ngay
                                    </button>
                                </a>
                            </div>
                        </div>
                        <div class="my-row">
                            <div class=" my-col my-l-6 my-m-6 my-c-6 t">
                                <button type="button"
                                        style="margin-top: 20px;
                                        width:100%; height:60px; border-radius:10px; background-color:  white; color: black; font-size: 18px;font-weight: bold; ">
                                    Mua trả góp
                                </button>
                            </div>
                            <div class=" my-col my-l-6 my-m-6 my-c-6 ">
                                <button type="button"
                                        style="margin-top: 20px;
                                        width:100%; height:60px; border-radius:10px; background-color:  white; color: black; font-size: 18px;font-weight: bold; ">
                                    Trả góp 0% qua thẻ
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="information-table" style="background: white;">

    <div class="my-container-table" style="border-radius: 20px !important;">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12" style="margin: 39px 0px 25px 0px;">
                <h1 style="text-align: center; font-weight: bold; ">
                    Thông số kỹ thuật
                </h1>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <table>

                    <c:if test="${product.rom != null}">
                        <tr>
                            <td>Rom</td>
                            <td><c:out value="${product.rom}"/> GB</td>
                        </tr>
                    </c:if>


                    <c:if test="${product.ram != null}">
                        <tr>
                            <td>Ram</td>
                            <td><c:out value="${product.ram}"/> GB</td>
                        </tr>
                    </c:if>

                    <c:if test="${product.sizeScreen != null}">
                        <tr>
                            <td>Kích thước màn hình</td>
                            <td><c:out value="${product.sizeScreen}"/></td>
                        </tr>
                    </c:if>

                    <c:if test="${product.screenResolution != null}">
                        <tr>
                            <td>Độ phân giải</td>
                            <td><c:out value="${product.screenResolution}"/></td>
                        </tr>
                    </c:if>

                    <c:if test="${product.frontCamera != null}">
                        <tr>
                            <td>Camera trước</td>
                            <td><c:out value="${product.frontCamera}"/></td>
                        </tr>
                    </c:if>

                    <c:if test="${product.backCamera != null}">
                        <tr>
                            <td>Camera sau</td>
                            <td><c:out value="${product.backCamera}"/></td>
                        </tr>
                    </c:if>
                    <tr>
                        <td>Thương hiệu</td>
                        <td>Apple</td>
                    </tr>
                    <tr>
                        <td>Xuất xứ thương hiệu</td>
                        <td>Mỹ</td>
                    </tr>
                </table>
            </div>

        </div>

        <div class="my-container-img-description">
            <div class="my-row">
                <div class="my-col my-l-12 my-m-12 my-c-12">
                    <c:forEach items="${product.listProductDetail}" var="img">
                        <c:choose>
                            <c:when test="${fn:startsWith(img, 'http')}">
                                <img src="${img}"
                                     class="" style="width: 100%;  ">
                            </c:when>
                            <c:otherwise>
                                <img src="<%=request.getContextPath()%>/${img}"
                                     class="" style="width: 100%;  ">
                            </c:otherwise>
                        </c:choose>


                    </c:forEach>
                </div>
            </div>
        </div>
    </div>


    <!-- Footer -->
    <jsp:include page="/view/client/footer/footer.jsp"></jsp:include>

    <script src="<%=request.getContextPath()%>/view/client/assets/js/account.js"></script>

    <script>
        function changeColor(id) {
            const colorChose = document.getElementById(id);
            const buy = document.getElementById('buy');
            buy.setAttribute("href", "addCart?idSP=" + id);

            const color = document.getElementsByClassName("my-color");
            for (const c of color) {
                c.setAttribute("class", "my-color");
            }

            colorChose.setAttribute("class", "my-color active-color");


            const colorLine = document.getElementById(id+"color");

            const colors = document.getElementsByClassName("color");
            for (const c of colors) {
                c.setAttribute("class", "color");
            }

            colorLine.setAttribute("class", "color color-active");
        }

        var ProductImg = document.getElementById("ProductImg");
        var SmallImg = document.getElementsByClassName("small-img");

        SmallImg[0].onclick = function () {
            ProductImg.src = SmallImg[0].src;
        };
        SmallImg[1].onclick = function () {
            ProductImg.src = SmallImg[1].src;
        };
        SmallImg[2].onclick = function () {
            ProductImg.src = SmallImg[2].src;
        };
        SmallImg[3].onclick = function () {
            ProductImg.src = SmallImg[3].src;
        };
        SmallImg[4].onclick = function () {
            ProductImg.src = SmallImg[4].src;
        };


    </script>
</body>
</html>
