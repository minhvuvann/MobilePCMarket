<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Bảo Hành</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-insurance">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm" id="input-search"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách phiếu bảo hành</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã bảo hành</th>
                                    <th scope="col">Mã đơn hàng</th>
                                    <th scope="col">Mã sản phẩm</th>
                                    <th scope="col">Ngày nhận</th>
                                    <th scope="col">Ngày trả</th>
                                    <th scope="col">Phí bảo hành</th>
                                    <th scope="col">Nội dung bảo hành</th>
                                    <th scope="col">Tên trạng thái bảo hành</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                <%int i = 1;%>
                                <c:forEach items="${listInsurance}" var="in">
                                    <tr>
                                        <td scope="row"><%=i++%></td>
                                        <td>${in.id}</td>
                                        <td>${in.idOrder}</td>
                                        <td>${in.idProduct}</td>
                                        <td>${in.dateTake}</td>
                                        <td>${in.datePay}</td>
                                        <td>${in.rateInsurance}</td>
                                        <td>${in.note}</td>
                                        <td>${in.contentStatus}</td>
                                        <td>
<%--                                            <button class="btn btn-danger"><a href="#">Xóa</a></button>--%>
                                            <button class="btn btn-success"><a href="update-insurance?id=${in.id}">Sửa</a></button>
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
                url: "search-insurance",
                type: 'POST',
                data: {
                    params: value,
                },
                success: function (responseJson) {
                    let row = '';
                    let index = 1;
                    $.each(responseJson, function (key, value) {
                        if(value == null || value.id <1) return;
                        row += '<tr id="' + value.id + 'tr">';
                        row += '<td scope="row">' + index++ + '</td> ';
                        row += '<td>' + value.id + '</td>';
                        row += '<td>' + value.idOrder + '</td>';
                        row += '<td>' + value.idProduct + '</td>';
                        row += '<td>' + value.dateTake + '</td>';
                        row += '<td>' + value.datePay + '</td>';
                        row += '<td>' + value.rateInsurance+ '</td>';
                        row += '<td>' + value.note + '</td>';
                        row += '<td>' + value.contentStatus + '</td>';

                        row += ' <td>';
                        row += '<button class="btn btn-success"><a href="update-insurance?id='+value.id+'">Sửa</a></button>';
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
