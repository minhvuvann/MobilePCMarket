<%--
  Created by IntelliJ IDEA.
  User: iamva
  Date: 11/01/2022
  Time: 10:17 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/page-btn.css">
</head>
<body>


<div class="product-range" style="margin-top: 50px;">
<%--    <div class="my-container">--%>
<%--        <div class="my-row">--%>
<%--            <div class="my-col my-l-12 my-m-12 my-c-12">--%>
<%--                <div class="page-btn">--%>
<%--                    <span>1</span>--%>
<%--                    <span>2</span>--%>
<%--                    <span>3</span>--%>
<%--                    <span>4</span>--%>
<%--                    <span>5</span>--%>
<%--                    <span>6</span>--%>
<%--                    <span>&#8594;</span>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

    <div class="pagination">
        <c:if test="${totalPages > 1}">
            <a onclick="page('prev', ${totalPages})">«</a>
            <c:forEach var = "i"  begin="1" end="${totalPages}">

                <c:if test="${i == 1}">
                    <a class="active" onclick="page(${i}, ${totalPages})">${i}</a>
                </c:if>
                <c:if test="${i != 1}">
                    <a onclick="page(${i}, ${totalPages})" >${i}</a>
                </c:if>

            </c:forEach>
            <a onclick="page('next',${totalPages})">»</a>
        </c:if>
    </div>
</div>

</body>
</html>
