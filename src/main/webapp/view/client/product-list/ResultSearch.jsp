<%--
  Created by IntelliJ IDEA.
  User: ThanhLoc
  Date: 6/13/2022
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/product-range.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/boostrap/css/bootstrap.min.css">
    <script src="<%=request.getContextPath()%>/view/client/assets/boostrap/js/bootstrap.min.js"></script>


</head>

<body>

<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<div class="product-range" style="margin-top: 100px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/view/client/slider/slider-iphone.jsp"></jsp:include>


<div class="" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-9 my-m-9 my-c-9">

            </div>

            <div class="my-col my-l-3 my-m-3 my-c-3" style="text-align: right;">
                <select>
                    <option>Sắp xếp theo</option>
                    <option>Mới ra mắt</option>
                    <option>Bán chạy</option>
                    <option>Giá thấp đến cao</option>
                    <option>Giá cao đến thấp</option>
                </select>
            </div>
        </div>
    </div>
</div>

<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-product-hunt" aria-hidden="true" style="margin-right: 15px;"></i> Kết quả tìm
                        kiếm
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row" id="tbody">
                    <c:forEach items="${products}" var="p">
<%--                        <div class="my-col my-l-4 my-m-4 my-c-6 item-products">--%>
                            <div class="my-col my-l-3 my-m-3 my-c-6 item-products"
                                 style="display: flex; flex-direction: column; align-items: center">
                            <a href="" style="text-decoration: none;">
                                <a href="product?id=${p.id}" style="text-decoration: none;">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <div class="my-row" style="position: relative;">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <c:if test="${p.listPhotoUrl.size() > 0}">
                                                        <c:choose>
                                                            <c:when test="${fn:startsWith(image.url, 'http')}">
                                                                <img src="${p.listPhotoUrl.get(0)}"
                                                                     style="max-width: 181px;">
                                                            </c:when>
                                                            <c:otherwise>
                                                                <img src="<%=request.getContextPath()%>/${p.listPhotoUrl.get(0)}"
                                                                     style="max-width: 181px;">
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>


                                                    <c:if test="${p.listPhotoUrl.size() == 0}">
                                                        <img src="https://img.icons8.com/carbon-copy/100/000000/no-image.png"
                                                             style="max-width: 181px;">

                                                    </c:if>
                                                </a>
                                                    <%--                                                <div class="product-sale-rate">--%>
                                                    <%--                                                    <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber value="${p.saleRate}" type="number"/>%</p>--%>
                                                    <%--                                                </div>--%>
                                                <c:if test="${p.saleRate > 0}">
                                                    <div class="product-sale-rate">
                                                        <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber
                                                                value="${p.saleRate}" type="number"/>%</p>
                                                    </div>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <h5 style="margin-top: 8px">${p.name} ${p.rom}GB</h5>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="component" style="text-decoration: none;">
                                                    <h4>
                                                        <fmt:setLocale value="vi_VN"/>
                                                        <fmt:formatNumber value="${p.price}" type="currency"/>
                                                    </h4>

                                                </a>

                                            </div>
                                        </div>
                                        <div class="my-row">
                                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                                <a href="" class="add-to-cart" style="text-decoration: none;">
                                                    Mua ngay
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <br>
        <div class="pagination">
            <c:if test="${totalPages > 1}">
                <a onclick="page('prev', ${totalPages})">«</a>
                <c:forEach var="i" begin="1" end="${totalPages}">

                    <c:if test="${i == 1}">
                        <a class="active" onclick="page(${i}, ${totalPages})">${i}</a>
                    </c:if>
                    <c:if test="${i != 1}">
                        <a onclick="page(${i}, ${totalPages})">${i}</a>
                    </c:if>

                </c:forEach>
                <a onclick="page('next',${totalPages})">»</a>
            </c:if>
        </div>

    </div>

</div>

<input type="text" hidden value="${search}" id="search">


<script>
    function page(index, totalPages) {

        const currentPage = getCurrentPage();
        const search = document.getElementById("search").value

        if (index === 'prev') {
            if (currentPage > 1)
                index = (parseInt(currentPage) - 1);
            else return;

        }
        if (index === 'next') {
            if (currentPage < totalPages)
                index = (parseInt(currentPage) + 1);
            else return;
        }
        $.ajax({
            url: "search",
            type: 'POST',
            data: {
                page: index,
                search: search
            },
            success: function (responseJson) {
                var row = '';
                var i = 1;
                const formatter = new Intl.NumberFormat('vi-VN', {
                    style: 'currency',
                    currency: 'VND',
                    minimumFractionDigits: 2
                })
                $.each(responseJson, function (key, value) {

                    if (value == null || value.id < 1) return;
                    row += '<div  class="my-col my-l-3 my-m-3 my-c-6 item-products" style="display: flex; flex-direction: column;align-items: center">'
                    row += '<a href="" style="text-decoration: none;">'
                    row += '<a href="product?id=' + value.id + '" style="text-decoration: none;">'
                    row += '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '<div class="my-row" style="position: relative;">'
                    row += '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '<a href="" class="component" style="text-decoration: none;">'

                    if ((value.url + "").startsWith("http"))
                        row += '<img src="' + value.listPhotoUrl[0] + '" style="max-width: 181px;">'
                    else
                        row += '<img src="<%=request.getContextPath()%>/' + value.listPhotoUrl[0] + '" style="max-width: 181px;">'

                    row += '</a>'
                    // row +=                       '<span class="product-sale-rate">'
                    // row +=                         '<p style="margin: 0px; padding: 5px;">-'+value.saleRate+'%</p>'
                    // row +=                      '</span>'
                    if (value.saleRate > 0) {
                        row += '<span class="product-sale-rate">'
                        row += '<p style="margin: 0px; padding: 5px;">-' + value.saleRate + '%</p>'
                        row += '</span>'
                    }
                    row += '</div>'
                    row += '</div>'
                    row += '<div class="my-row">'
                    row += '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '<a href="" class="component" style="text-decoration: none;">'
                    row += '<h5 style="margin-top: 8px">' + value.name + ' ' + value.rom + 'GB' + '</h5>'
                    row += '</a>'
                    row += '</div>'
                    row += '</div>'
                    row += '<div class="my-row">'
                    row += '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '<a href="" class="component" style="text-decoration: none;">'
                    row += '<h4>' + formatter.format(value.price) + '</h4>'
                    row += '</a>'
                    row += '</div>'
                    row += '</div>'
                    row += '<div class="my-row">'
                    row += '<div class="my-col my-l-12 my-m-12 my-c-12">'
                    row += '<a href="" class="add-to-cart" style="text-decoration: none;">Mua ngay</a>'
                    row += '</div>'
                    row += '</div>'
                    row += '</div>'
                    row += '</a>'
                    row += '</a>'
                    row += '</div>';
                });

                document.getElementById("tbody").innerHTML = row;
                $("html, body").animate({scrollTop: 200}, 600);
                $(".pagination a").filter(function () {
                    return $(this).attr("class") == 'active'
                }).removeClass("active");
                $(".pagination a").filter(function () {
                    return $(this).text() == index
                }).addClass("active");

                collapsePage()
            }
        });
    }

    $(document).ready(function () {
        collapsePage()
    })

</script>


<script src="<%=request.getContextPath()%>/view/client/assets/js/app-script.js" charset="utf-8"></script>

<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
</body>
</html>
