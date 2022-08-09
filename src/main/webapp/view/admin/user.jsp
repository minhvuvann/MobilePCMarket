<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="./header/header.jsp" flush="true"/>

<title>Admin | User</title>


<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-user" id="loc">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm" id="input-search"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách User</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Số điện thoại</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">Giới tính</th>
                                    <th scope="col">Ngày sinh</th>
                                    <th scope="col">Ngày tạo</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>

                                <tbody id="tbody">
                                <%int i = 1;%>
                                <c:forEach items="${users}" var="c">
                                    <tr id="${c.id}tr">
                                        <td scope="row"><%=i++%>
                                        </td>
                                        <td>${c.name}</td>
                                        <td>${c.email}</td>
                                        <td>${c.phone}</td>
                                        <td>${c.userName}</td>
                                        <td>${c.gender}</td>
                                        <td>${c.birthday}</td>
                                        <td>${c.createdAt}</td>
                                        <input type="hidden"
                                               value="delete-user"
                                               id="${c.id}"/>

                                        <td>
                                            <button class="btn btn-danger"><a
                                                    onclick="JSconfirm(${c.id},'Chắc chắn bạn muốn xóa')">Xóa</a>
                                            </button>
                                            <button class="btn btn-success"><a href="update-user?id=${c.id}">Sửa</a>
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
                url: "search-user",
                type: 'POST',
                data: {
                    params: value,
                    group:2
                },
                success: function (responseJson) {
                    var row = '';
                    var index = 1;


                    $.each(responseJson, function (key, value) {

                        if(value == null || value.id <1) return;

                        var onclick = "JSconfirm("+ value.id + ",'Chắc chắn bạn muốn xóa')";

                        row += '<tr id="'+ value.id+'tr">';

                        row += '<td scope="row">'+ index++ +'</td> ';
                        row += '<td>'+value.name+'</td>';
                        row += '<td>'+ value.email+'</td>';
                        row += '<td>'+value.phone+'</td>';
                        row += '<td>'+value.userName+'</td>';
                        row += '<td>'+value.gender+'</td>';
                        row += '<td>'+value.birthday+'</td>';
                        row += ' <td>'+value.createdAt+'</td>';
                        row += '<input type="hidden" value="delete-user" id="'+value.id+'" style="display: none;"/>';
                        row += ' <td>';
                        row += '<button class="btn btn-danger"><a onclick="'+onclick+'">Xóa</a></button> \n';
                        row += '<button class="btn btn-success"><a href="update-user?id='+value.id+'">Sửa</a></button>';
                        row += '        </td>';
                        row += '  </tr>';

                    });

                    document.getElementById("tbody").innerHTML =row;
                    console.log(row)
                }
            });
        }
    });

</script>


<jsp:include page="./footer/footer.jsp" flush="true"/>
