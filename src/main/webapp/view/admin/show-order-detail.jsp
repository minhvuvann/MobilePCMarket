<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Chi tiết đơn hàng</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">

            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-order-detail">Thêm mới</a></button>

                <div>
                    <input type="text" id="input-search" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>


            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Chi tiết đơn hàng</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">ID Đơn Hàng</th>
                                    <th scope="col">ID Sản Phẩm</th>
                                    <th scope="col">Tên Sản Phẩm</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Hành động</th>

                                </tr>
                                </thead>
                                <tbody id="tbody">
                                <%int i = 1;%>
                                <c:forEach items="${listOrderDetail}" var="d">

                                    <tr id="${d.id}tr">
                                        <td scope="row"><%=i++%>
                                        </td>
                                        <td>${d.idOrder}</td>
                                        <td>${d.idProduct}</td>
                                        <td>${d.nameProduct}</td>
                                        <td><fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${d.priceProduct}" type="currency"  minFractionDigits="2"/></td>
                                        <td>${d.count}</td>
                                        <td>
                                            <button class="btn btn-success"><a
                                                    href="update-detail-order?id=${d.id}">Sửa</a>
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
                url: "search-detail-order",
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
                        row += '<td>' + value.idOrder + '</td>';
                        row += '<td>' + value.idProduct + '</td>';
                        row += '<td>' + value.nameProduct + '</td>';
                        row += '<td>'+formatter.format(value.priceProduct)+'</td>';
                        row += '<td>' + value.count + '</td>';

                        row += ' <td>';
                        row += '<button class="btn btn-success"><a href="update-detail-order?id=' + value.id + '">Sửa</a></button>';
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
