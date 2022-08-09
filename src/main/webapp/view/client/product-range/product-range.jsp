<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Home</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid%20copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/product-range.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/images/logotitle.png" type="image/x-icon"/>

    <%--    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>--%>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

</head>

<body>
<div class="product-range" style="margin-top: 50px;">
    <div class="my-container">
        <div class="my-col my-l-12 my-m-12 my-c-12">
            <div class="title-product-range">
                <h1 style="color: white; margin: 20px;"><i class="fa fa-apple" aria-hidden="true"
                                                           style="margin-right: 15px;"></i>iPhone</h1>
            </div>
        </div>
        <div class="my-row">
            <div class="my-col my-l-12 my-m-12 my-c-12">
                <div class="my-row">

                    <div class="my-col my-l-4 my-m-4 my-c-6 item-products">
                        <a href="<%=request.getContextPath()%>/product"></a>

                        <c:choose>
                            <c:when test="${fn:startsWith(p.listPhotoUrl.get(0), 'http')}">
                                <img src="${p.listPhotoUrl.get(0)}">
                            </c:when>
                            <c:otherwise>
                                <img src="${p.listPhotoUrl.get(0)}">
                            </c:otherwise>
                        </c:choose>


                        <h4>${p.name} ${p.rom}GB</h4>
                        <p>
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${p.price}" type="currency"/>
                        </p>
                        <a href="<%=request.getContextPath()%>/addCart?idSP=${p.id}" class="add-to-cart">Thêm vào giỏ
                            hàng</a>
                        <span class="product-sale-rate">-<fmt:formatNumber value="${p.saleRate}"
                                                                           type="number"/>%</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
