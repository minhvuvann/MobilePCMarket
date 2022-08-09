<%@ page import="com.astore.model.Product" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
</head>

<body>

<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<jsp:include page="/view/client/slider/slider.jsp"></jsp:include>

<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">DÒNG SẢN PHẨM</h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-iphone" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <c:choose>
                                            <c:when test="${fn:startsWith(iphone.get(2).listPhotoUrl.get(0), 'http')}">
                                                <img src="${iphone.get(2).listPhotoUrl.get(0)}"
                                                     style="max-width: 160px;">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${iphone.get(2).listPhotoUrl.get(0)}"
                                                     style="max-width: 160px;">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px;">iPhone</h4>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-mac" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <c:choose>
                                            <c:when test="${fn:startsWith(mac.get(2).listPhotoUrl.get(0), 'http')}">
                                                <img src="${mac.get(2).listPhotoUrl.get(0)}"
                                                     style="max-width: 160px;">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${mac.get(2).listPhotoUrl.get(0)}" style="max-width: 160px;">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px; text-decoration: none;">Mac</h4>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>

                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-ipad" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <c:choose>
                                            <c:when test="${fn:startsWith(ipad.get(2).listPhotoUrl.get(0), 'http')}">
                                                <img src="${ipad.get(2).listPhotoUrl.get(0)}"
                                                     style="max-width: 160px;">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${ipad.get(2).listPhotoUrl.get(0)}" style="max-width: 160px;">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px; text-decoration: none;">iPad</h4>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                    <div class="my-col my-l-3 my-m-3 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/Product-watch" style="text-decoration: none;">
                            <div class="my-col my-l-12 my-m-12 my-c-12">
                                <div class="my-row">
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <c:choose>
                                            <c:when test="${fn:startsWith(watch.get(2).listPhotoUrl.get(0), 'http')}">
                                                <img src="${watch.get(2).listPhotoUrl.get(0)}"
                                                     style="max-width: 160px;">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${watch.get(2).listPhotoUrl.get(0)}"
                                                     style="max-width: 160px;">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="my-col my-l-12 my-m-12 my-c-12 item-products">
                                        <h4 style="margin-top: 10px; text-decoration: none;">Watch</h4>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%-- 4 iphone dai dien--%>
<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> iPhone
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row" id="tbody">
                    <c:forEach items="${iphone}" var="iphone">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products"
                             style="display: flex; flex-direction: column; align-items: center">
                            <a href="product?id=${iphone.id}"
                               style="text-decoration: none; color: white !important;">
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12" style="position: relative;">
                                        <a href="product?id=${iphone.id}" style="text-decoration: none;">
                                            <div class="component" style="text-decoration: none; margin-top: 8px;">
                                                <c:if test="${iphone.listPhotoUrl.size() > 0}">
                                                    <c:choose>
                                                        <c:when test="${fn:startsWith(iphone.listPhotoUrl.get(0), 'http')}">
                                                            <img src="${iphone.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img src="<%=request.getContextPath()%>/${iphone.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if>
                                                <c:if test="${iphone.listPhotoUrl.size() == 0}">
                                                    <img src="https://img.icons8.com/carbon-copy/100/000000/no-image.png"
                                                         style="max-width: 260px;">
                                                </c:if>
                                            </div>
<%--                                            <div class="product-sale-rate">--%>
<%--                                                <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber--%>
<%--                                                        value="${iphone.saleRate}" type="number"/>%</p>--%>
<%--                                            </div>--%>
                                            <c:if test="${iphone.saleRate > 0}">
                                                <div class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber
                                                            value="${iphone.saleRate}" type="number"/>%</p>
                                                </div>
                                            </c:if>
                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${iphone.id}" style="text-decoration: none;">
                                            <h5 style="margin-top: 8px">${iphone.name} ${iphone.rom}GB</h5>
                                        </a>
                                    </div>
                                </div>


                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${iphone.id}" style="text-decoration: none;">
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${iphone.price}" type="currency"/>
                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="<%=request.getContextPath()%>/addCart?idSP=${iphone.id}"
                                           class="add-to-cart"
                                           style="text-decoration: none;">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<%-- 4 mac dai dien--%>
<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> Mac
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <c:forEach items="${mac}" var="mac">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products"
                             style="display: flex; flex-direction: column; align-items: center">
                            <a href="product?id=${mac.id}"
                               style="text-decoration: none; color: white !important;">
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12" style="position: relative;">
                                        <a href="product?id=${mac.id}" style="text-decoration: none;">
                                            <div class="component" style="text-decoration: none; margin-top: 8px;">
                                                <c:if test="${mac.listPhotoUrl.size() > 0}">
                                                    <c:choose>
                                                        <c:when test="${fn:startsWith(mac.listPhotoUrl.get(0), 'http')}">
                                                            <img src="${mac.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img src="<%=request.getContextPath()%>/${mac.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if>
                                                <c:if test="${mac.listPhotoUrl.size() == 0}">
                                                    <img src="https://img.icons8.com/carbon-copy/100/000000/no-image.png"
                                                         style="max-width: 260px;">
                                                </c:if>
                                            </div>
<%--                                            <div class="product-sale-rate">--%>
<%--                                                <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber--%>
<%--                                                        value="${mac.saleRate}" type="number"/>%</p>--%>
<%--                                            </div>--%>
                                            <c:if test="${mac.saleRate > 0}">
                                                <div class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber
                                                            value="${mac.saleRate}" type="number"/>%</p>
                                                </div>
                                            </c:if>
                                        </a>
                                    </div>
                                </div>
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${mac.id}" style="text-decoration: none;">
                                            <h6 style="margin-top: 8px">${mac.name}</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${mac.id}" style="text-decoration: none;">
                                            <h6 style="margin-top: 8px">${mac.rom}GB</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${mac.id}" style="text-decoration: none;">
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${mac.price}" type="currency"/>
                                        </a>
                                    </div>
                                </div>
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="<%=request.getContextPath()%>/addCart?idSP=${mac.id}"
                                           class="add-to-cart"
                                           style="text-decoration: none;">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>


<%-- 4 ipad dai dien--%>
<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> iPad
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <c:forEach items="${ipad}" var="ipad">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products"
                             style="display: flex; flex-direction: column; align-items: center">
                            <a href="product?id=${ipad.id}"
                               style="text-decoration: none; color: white !important;">
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12" style="position: relative;">
                                        <a href="product?id=${ipad.id}" style="text-decoration: none;">
                                            <div class="component" style="text-decoration: none; margin-top: 8px;">
                                                <c:if test="${ipad.listPhotoUrl.size() > 0}">
                                                    <c:choose>
                                                        <c:when test="${fn:startsWith(ipad.listPhotoUrl.get(0), 'http')}">
                                                            <img src="${ipad.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img src="<%=request.getContextPath()%>/${ipad.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if>
                                                <c:if test="${ipad.listPhotoUrl.size() == 0}">
                                                    <img src="https://img.icons8.com/carbon-copy/100/000000/no-image.png"
                                                         style="max-width: 260px;">
                                                </c:if>
                                            </div>
<%--                                            <div class="product-sale-rate">--%>
<%--                                                <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber--%>
<%--                                                        value="${ipad.saleRate}" type="number"/>%</p>--%>
<%--                                            </div>--%>
                                            <c:if test="${ipad.saleRate > 0}">
                                                <div class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber
                                                            value="${ipad.saleRate}" type="number"/>%</p>
                                                </div>
                                            </c:if>
                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${ipad.id}" style="text-decoration: none;">
                                            <h5 style="margin-top: 8px">${ipad.name} ${ipad.rom}GB</h5>
                                        </a>
                                    </div>
                                </div>


                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${ipad.id}" style="text-decoration: none;">
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${ipad.price}" type="currency"/>
                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="<%=request.getContextPath()%>/addCart?idSP=${ipad.id}"
                                           class="add-to-cart"
                                           style="text-decoration: none;">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>


<%-- 4 iphone dai dien--%>
<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="title-product-range">
                    <h1 style="color: white; margin: 20px;">
                        <i class="fa fa-apple" aria-hidden="true" style="margin-right: 15px;"></i> Watch
                    </h1>
                </div>
            </div>
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">
                    <c:forEach items="${watch}" var="watch">
                        <div class="my-col my-l-3 my-m-3 my-c-6 item-products"
                             style="display: flex; flex-direction: column; align-items: center">
                            <a href="product?id=${watch.id}"
                               style="text-decoration: none; color: white !important;">
                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12" style="position: relative;">
                                        <a href="product?id=${watch.id}" style="text-decoration: none;">
                                            <div class="component" style="text-decoration: none; margin-top: 8px;">
                                                <c:if test="${watch.listPhotoUrl.size() > 0}">
                                                    <c:choose>
                                                        <c:when test="${fn:startsWith(watch.listPhotoUrl.get(0), 'http')}">
                                                            <img src="${watch.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img src="<%=request.getContextPath()%>/${watch.listPhotoUrl.get(0)}"
                                                                 style="max-width: 260px;">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if>
                                                <c:if test="${watch.listPhotoUrl.size() == 0}">
                                                    <img src="https://img.icons8.com/carbon-copy/100/000000/no-image.png"
                                                         style="max-width: 260px;">
                                                </c:if>
                                            </div>
<%--                                            <div class="product-sale-rate">--%>
<%--                                                <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber--%>
<%--                                                        value="${watch.saleRate}" type="number"/>%</p>--%>
<%--                                            </div>--%>
                                            <c:if test="${watch.saleRate > 0}">
                                                <div class="product-sale-rate">
                                                    <p style="margin: 0px; padding: 5px;">-<fmt:formatNumber
                                                            value="${watch.saleRate}" type="number"/>%</p>
                                                </div>
                                            </c:if>
                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${watch.id}" style="text-decoration: none;">
                                            <h5 style="margin-top: 8px">${watch.name} ${watch.rom}GB</h5>
                                        </a>
                                    </div>
                                </div>


                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="product?id=${watch.id}" style="text-decoration: none;">
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${watch.price}" type="currency"/>
                                        </a>
                                    </div>
                                </div>

                                <div class="my-row" style="width: 100%">
                                    <div class="my-col my-l-12 my-m-12 my-c-12">
                                        <a href="<%=request.getContextPath()%>/addCart?idSP=${watch.id}"
                                           class="add-to-cart"
                                           style="text-decoration: none;">
                                            Mua ngay
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>


</body>
</html>
