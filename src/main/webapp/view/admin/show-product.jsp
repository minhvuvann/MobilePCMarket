<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin | Sản phẩm</title>

<style>

</style>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-product">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm" id="input-search"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách sản phẩm</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Mã sản phẩm</th>
                                    <th scope="col">Tên sản phẩm</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Bộ nhớ</th>
                                    <th scope="col">Ram</th>
                                    <th scope="col">Màu</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                    <%int i = 1;%>
                                    <c:forEach items="${products}" var="p">
                                        <tr id="${p.id}tr">
                                            <td scope="row"><%=i++%>
                                            </td>
                                            <td>${p.id}</td>
                                            <td>${p.name}</td>
                                            <td><fmt:setLocale value="vi_VN"/>
                                                <fmt:formatNumber value="${p.price}" type="currency"  minFractionDigits="2"/></td>
                                            <td>${p.rom}GB</td>
                                            <td>${p.ram}GB</td>
                                            <td>${p.colorName}</td>

                                            <input type="hidden"
                                                   value="delete-product"
                                                   id="${p.id}"/>
                                            <td>
                                                <button class="btn btn-danger"><a onclick="JSconfirm(${p.id},'Chắc chắn bạn muốn xóa')">Xóa</a>
                                                </button>

                                                <button class="btn btn-success"><a href="update-product?id=${p.id}">Sửa</a>
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
        <div class="overlay toggle-menu"></div>
    </div>
</div>


<script>

    $("#input-search").keypress(function (e) {
        const value = $("#input-search").val();
        if (e.keyCode == 13) {
            $.ajax({
                url: "search-product",
                type: 'POST',
                data: {
                    params: value,
                },
                success: function (responseJson) {
                    var row = '';
                    var index = 1;
                    const formatter = new Intl.NumberFormat('vi-VN', {
                        style: 'currency',
                        currency: 'VND',
                        minimumFractionDigits: 2
                    })
                    $.each(responseJson, function (key, value) {

                        if(value == null || value.id <1) return;
                        var onclick = "JSconfirm("+ value.id + ",'Chắc chắn bạn muốn xóa')";

                        row += '<tr id="'+ value.id+'tr">';
                        row += '<td scope="row">'+ index++ +'</td> ';


                        row += '<td>'+value.id+'</td>';
                        row += '<td>'+value.name+'</td>';
                        row += '<td>'+formatter.format(value.price)+'</td>';
                        // row += '<td><'+'fmt:'+'se'+'tLocale value="vi_VN"'+'/>'+'<'+'fmt:formatNumber'+' value="'+value.price+'" type="currency"/></td>';
                        row += '<td>'+ value.rom+'GB</td>';
                        row += '<td>'+value.ram+'GB</td>';
                        row += '<td>'+value.colorName+'</td>';
                        row += '<input type="hidden" value="delete-product" id="'+value.id+'" style="display: none;"/>';
                        row += ' <td>';
                        row += '<button class="btn btn-danger"><a onclick="'+onclick+'">Xóa</a></button> \n';
                        row += '<button class="btn btn-success"><a href="update-product?id='+value.id+'">Sửa</a></button>';
                        row += '        </td>';
                        row += '  </tr>';

                    });

                    document.getElementById("tbody").innerHTML =row;
                 }
            });
        }
    });


    function page(index, totalPages) {

        const currentPage = getCurrentPage();

        if (index === 'prev') {
            if (currentPage > 1)
                index = (parseInt(currentPage) - 1);
            else return;

        }
        if (index === 'next') {
            if (currentPage < totalPages)
                index = (parseInt(currentPage) + 1) ;
            else return;
        }
        $.ajax({
            url: "page-product",
            type: 'POST',
            data: {
                page: index,
            },
            success: function (responseJson) {
                var row = '';
                var i = 1;
                const formatter = new Intl.NumberFormat('vi-VN', {
                    style: 'currency',
                    currency: 'VND',
                    minimumFractionDigits: 2
                })
                $.each(responseJson, function (key, value) {

                    if(value == null || value.id <1) return;
                    var onclick = "JSconfirm("+ value.id + ",'Chắc chắn bạn muốn xóa')";

                    row += '<tr id="'+ value.id+'tr">';
                    row += '<td scope="row">'+ i++ +'</td> ';


                    row += '<td>'+value.id+'</td>';
                    row += '<td>'+value.name+'</td>';
                    row += '<td>'+formatter.format(value.price)+'</td>';
                    // row += '<td><'+'fmt:'+'se'+'tLocale value="vi_VN"'+'/>'+'<'+'fmt:formatNumber'+' value="'+value.price+'" type="currency"/></td>';
                    row += '<td>'+ value.rom+'GB</td>';
                    row += '<td>'+value.ram+'GB</td>';
                    row += '<td>'+value.colorName+'</td>';
                    row += '<input type="hidden" value="delete-product" id="'+value.id+'" style="display: none;"/>';
                    row += ' <td>';
                    row += '<button class="btn btn-danger"><a onclick="'+onclick+'">Xóa</a></button> \n';
                    row += '<button class="btn btn-success"><a href="update-product?id='+value.id+'">Sửa</a></button>';
                    row += '        </td>';
                    row += '  </tr>';

                });

                document.getElementById("tbody").innerHTML =row;
                $("html, body").animate({scrollTop: 0}, 600);
                $(".pagination a").filter(function () {
                    return $(this).attr("class") == 'active'
                }).removeClass("active");
                $(".pagination a").filter(function () {
                    return $(this).text() == index
                }).addClass("active");

                collapsePage()
            }
        });
    }

    $(document).ready(function(){
        collapsePage()
    })

</script>


<jsp:include page="footer/footer.jsp" flush="true"/>
