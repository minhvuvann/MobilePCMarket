<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="./header/header.jsp" flush="true"/>

<title>Admin | Màu sản phẩm</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-color">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm" id="input-search"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Màu sản phẩm</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã màu</th>
                                    <th scope="col">Tên màu</th>
                                    <th scope="col">Mã hex</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                    <%int i = 1;%>
                                    <c:forEach items="${colors}" var="c">
                                        <tr id="${c.id}tr">
                                            <td scope="row"><%=i++%></td>
                                            <td>${c.id}</td>
                                            <td>${c.name}</td>
                                            <td>${c.codeHex}</td>
                                            <input type="hidden"
                                            value="delete-color"
                                            id="${c.id}" style="display:none"/>
                                            <td>
                                                <button class="btn btn-danger"><a onclick="JSconfirm(${c.id},'Chắc chắn bạn muốn xóa')">Xóa</a></button>

                                                <button class="btn btn-success"><a href="update-color?id=${c.id}">Sửa</a></button>
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
                url: "search-color",
                type: 'POST',
                data: {
                    params: value,
                },
                success: function (responseJson) {
                    var row = '';
                    var index = 1;
                    $.each(responseJson, function (key, value) {
                        if(value == null || value.id <1) return;
                        var onclick = "JSconfirm("+ value.id + ",'Chắc chắn bạn muốn xóa')";
                        row += '<tr id="'+ value.id+'tr">';
                        row += '<td scope="row">'+ index++ +'</td> ';
                        row += '<td>'+value.id+'</td>';
                        row += '<td>'+value.name+'</td>';
                        row += '<td>'+value.codeHex+'</td>';
                        row += '<input type="hidden" value="delete-color" id="'+value.id+'" style="display: none" />';
                        row += ' <td>';
                        row += '<button class="btn btn-danger"><a onclick="'+onclick+'">Xóa</a></button> \n';
                        row += '<button class="btn btn-success"><a href="update-color?id='+value.id+'">Sửa</a></button>';
                        row += '        </td>';
                        row += '  </tr>';

                    });
                    document.getElementById("tbody").innerHTML =row;
                }
            });
        }
    });

</script>


<jsp:include page="footer/footer.jsp" flush="true"/>
