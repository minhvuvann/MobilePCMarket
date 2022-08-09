<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Đơn hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">

            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-order">Thêm mới</a></button>

                <div>
                    <input type="text" id="input-search" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>


            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách đơn hàng</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã đơn hàng</th>
                                    <th scope="col">Mã Khách hàng</th>
                                    <th scope="col">Tên khách hàng</th>
                                    <th scope="col">Tri giá</th>
                                    <th scope="col">Ngày lập hóa đơn</th>
                                    <th scope="col">Hành động</th>

                                </tr>
                                </thead>
                                <tbody id="tbody">
                                <%int i = 1;%>
                                <c:forEach items="${listOrder}" var="order">

                                    <tr id="${order.id}tr">
                                        <td scope="row"><%=i++%>
                                        </td>
                                        <td>${order.id}</td>
                                        <td>${order.idUser}</td>
                                        <td>${order.nameUser}</td>
                                        <td><fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${order.priceOrder}" type="currency"
                                                              minFractionDigits="2"/></td>
                                        <td>${order.dateAtOrder}</td>
                                        <td>
                                            <button class="btn btn-success"><a href="order-detail?idOrder=${order.id}">xem</a>
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    $("#input-search").keypress(function (e) {
        const value = $("#input-search").val();
        if (e.keyCode == 13) {
            $.ajax({
                url: "search-order",
                type: 'POST',
                data: {
                    params: value,
                },
                success: function (responseJson) {
                    let row = '';
                    let index = 1;
                    $.each(responseJson, function (key, value) {
                        if (value == null || value.id < 1) return;
                        row += '<tr id="' + value.id + 'tr">';
                        row += '<td scope="row">' + index++ + '</td> ';
                        row += '<td>' + value.id + '</td>';
                        row += '<td>' + value.idUser + '</td>';
                        row += '<td>' + value.nameUser + '</td>';
                        row += '<td>' + formatter.format(value.priceOrder) + '</td>';
                        row += '<td>' + value.dataAtOrder + '</td>';

                        row += ' <td>';
                        row += '<button class="btn btn-success"><a href="order-detail?idOrder=' + value.id + '">Xem</a></button>';
                        row += '        </td>';
                        row += '  </tr>';

                    });
                    console.log(row);
                    document.getElementById("tbody").innerHTML = row;

                }
            });
        }
    });

</script>

<jsp:include page="./footer/footer.jsp" flush="true"/>
