<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin | Mô tả sản phẩm</title>

<div class="content-wrapper">
    <div class="container-fluid">
        <!--End Row-->


        <div class="row">
            <div class="col-lg-12 tool-bar">
                <button class="add-catalog"><a href="add-image-product-detail">Thêm mới</a></button>
                <div>
                    <input type="text" name="in-search" class="search" placeholder="Tìm kiếm" id="input-search"/>
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Mô tả sản phẩm</h5>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">ID</th>
                                    <th scope="col">Mã dòng sản phẩm</th>
                                    <th scope="col">Url ảnh mô tả</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">
                                <%int i = 1;%>
                                <c:forEach items="${images}" var="image">
                                    <tr id="${image.id}tr">
                                        <td scope="row"><%=i++%></td>
                                        <td>${image.id}</td>
                                        <td>${image.productId}</td>
                                        <c:choose>
                                            <c:when test = "${fn:startsWith(image.url, 'http')}">
                                                <td><img style=" width: 110px;height: 67px; object-fit: scale-down;border: 1px solid #fff;" src="${image.url}" alt="product image"></td>
                                            </c:when>
                                            <c:otherwise>
                                                <td><img style=" width: 110px;height: 67px; object-fit: scale-down;border: 1px solid #fff;" src="<%=request.getContextPath()%>/${image.url}" alt="product image"></td>
                                            </c:otherwise>
                                        </c:choose>
                                        <input type="hidden"
                                               value="delete-image-product-detail"
                                               id="${image.id}"/>
                                        <td>
                                            <button class="btn btn-danger"><a onclick="JSconfirm(${image.id},'Chắc chắn bạn muốn xóa')">Xóa</a></button>
                                            <button class="btn btn-success"><a href="update-image-product-detail?id=${image.id}">Sửa</a></button>
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
</div>



<script>
    $("#input-search").keypress(function (e) {
        const value = $("#input-search").val();
        if (e.keyCode == 13) {
            $.ajax({
                url: "search-image-product-detail",
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
                        row += '<td>'+value.productId+'</td>';
                        if((value.url+"").startsWith("http"))
                            row += '<td><img style=" width: 110px;height: 67px; object-fit: scale-down;border: 1px solid #fff;" src="'+value.url+'" alt="product image"></td>'
                        else
                            row += '<td><img style=" width: 110px;height: 67px; object-fit: scale-down;border: 1px solid #fff;" src="<%=request.getContextPath()%>/'+value.url+'" alt="product image"></td>'

                        // row += '<td>'+value.url+'</td>';
                        row += '<input type="hidden" value="delete-image-product-detail" id="'+value.id+'" style="display: none;"/>';
                        row += ' <td>';
                        row += '<button class="btn btn-danger"><a onclick="'+onclick+'">Xóa</a></button> \n';
                        row += '<button class="btn btn-success"><a href="update-image-product-detail?id='+value.id+'">Sửa</a></button>';
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
            url: "page-image-product-detail",
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
                    row += '<td>'+value.productId+'</td>';
                    if((value.url+"").startsWith("http"))
                        row += '<td><img style=" width: 110px;height: 67px; object-fit: scale-down;border: 1px solid #fff;" src="'+value.url+'" alt="product image"></td>'
                    else
                        row += '<td><img style=" width: 110px;height: 67px; object-fit: scale-down;border: 1px solid #fff;" src="<%=request.getContextPath()%>/'+value.url+'" alt="product image"></td>'

                    // row += '<td>'+value.url+'</td>';
                    row += '<input type="hidden" value="delete-image-product-detail" id="'+value.id+'" style="display: none;"/>';
                    row += ' <td>';
                    row += '<button class="btn btn-danger"><a onclick="'+onclick+'">Xóa</a></button> \n';
                    row += '<button class="btn btn-success"><a href="update-image-product-detail?id='+value.id+'">Sửa</a></button>';
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
