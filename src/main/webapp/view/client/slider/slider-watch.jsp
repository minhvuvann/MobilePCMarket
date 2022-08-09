<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<div class="my-container" style="border-radius: 20px">
    <div class="my-row">
        <div id="demo" class="carousel slide" data-ride="carousel" style="margin-top: 100px;">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <%int i = 1;%>
                <c:forEach items="${listSliderDesktop}" var="slider">

                    <c:if test="<%= i == 1%>">
                        <div class="carousel-item active">
                            <c:choose>
                                <c:when test="${fn:startsWith(slider.linkImage, 'http')}">
                                    <img src="${slider.linkImage}"
                                         alt="" width="1100" height="500">
                                </c:when>
                                <c:otherwise>
                                    <img src="<%=request.getContextPath()%>${slider.linkImage}"
                                         alt="" width="1100" height="500">
                                </c:otherwise>
                            </c:choose>

                        </div>
                    </c:if>
                    <c:if test="<%= i != 1%>">
                        <div class="carousel-item">
                            <c:choose>
                                <c:when test="${fn:startsWith(slider.linkImage, 'http')}">
                                    <img src="${slider.linkImage}"
                                         alt="" width="1100" height="500">
                                </c:when>
                                <c:otherwise>
                                    <img src="<%=request.getContextPath()%>${slider.linkImage}"
                                         alt="" width="1100" height="500">
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </c:if>
                    <%i++;%>
                </c:forEach>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>
</div>

<%--<script src="<%=request.getContextPath()%>/view/client/assets/js/slider.js"></script>--%>

</body>
</html>
