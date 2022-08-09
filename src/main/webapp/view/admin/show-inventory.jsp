<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Tồn kho</title>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row">

            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-inventory">Thêm mới</a></button>
                <div>
                    <input type="text" id="input-search" name="in-search" class="search" placeholder="Tìm kiếm"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách tồn kho</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã sản phẩm</th>
                                    <th scope="col">Tên sản phẩm</th>
                                    <th scope="col">Số lượng tồn kho</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                             <tbody id="tbody">
                             <%int i = 1;%>
                            <c:forEach items="${listInventory}" var="in">
                                <tr id="${in.id}tr">
                                    <td scope="row"><%=i++%></td>
                                    <td>${in.idSP}</td>
                                    <td>${in.nameSP}</td>
                                    <td>${in.count}</td>
                                    <input type="hidden"
                                           value="delete-inventory"
                                           id="${in.id}" style="display:none"/>
                                    <td>
                                        <button class="btn btn-danger"><a onclick="JSconfirm(${in.id},'Chắc chắn bạn muốn xóa')">Xóa</a></button>
                                        <button class="btn btn-success"><a href="update-inventory?id=${in.id}">Sửa</a>
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
        <div class="overlay toggle-menu"></div>
    </div>
</div>
<script>

    $("#input-search").keypress(function (e) {
        const value = $("#input-search").val();
        if (e.keyCode == 13) {
            $.ajax({
                url: "search-inventory",
                type: 'POST',
                data: {
                    params: value,
                },
                success: function (responseJson) {
                    let row = '';
                    let index = 1;
                    $.each(responseJson, function (key, value) {
                        if(value == null || value.id <1) return;
                        let onclick = "JSconfirm(" + value.id + ",'Chắc chắn bạn muốn xóa')";
                        row += '<tr id="' + value.id + 'tr">';
                        row += '<td scope="row">' + index++ + '</td> ';
                        row += '<td>' + value.idSP + '</td>';
                        row += '<td>' + value.nameSP + '</td>';
                        row += '<td>' + value.count + '</td>';
                        row += '<input type="hidden" value="delete-inventory" id="'+value.id+'" style="display: none" />';

                        row += ' <td>';
                        row += '<button class="btn btn-danger"><a onclick="' + onclick + '">Xóa</a></button> \n';
                        row += '<button class="btn btn-success"><a href="update-inventory?id='+value.id+'">Sửa</a></button>';
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
