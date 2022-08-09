<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTORE | Chăm sóc khách hàng</title>
    <link rel="icon" href="<%=request.getContextPath()%>/view/client/assets/images/mac/macbook-pro-16-m1-pro-2021-bac-650x650.png" type="image/x-icon"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<jsp:include page="/view/client/header/header.jsp"></jsp:include>
<div class="small-container">
    <div class="small-container id-products">
        <h2 class="title">Chăm sóc khách hàng</h2>
    </div>
</div>

<div id="help-container">
    <div id="help-inner">


        <form action="edit-information-account" method="post" >
            <p id="message">Sửa thông tin cá nhân</p>
            <br>
            <p style="color: red; text-align: center">${error}</p>
            <p style="color: green; text-align: center">${success}</p>
            <p style="color: red; text-align: center" id="validContact"></p>
            <div class="my-form-group">
                <label for="input-1">Họ tên</label>
                <input type="text" class="my-form-control" id="input-1" placeholder="Họ tên" name="edit-name" value="${edit.name}">
            </div>

            <div class="my-form-group">
                <label for="edit-telephone">Số điện thoại</label>
                <input type="text" class="my-form-control" id="edit-telephone" placeholder="Số điện thoại"
                       name="edit-telephone" value="${edit.phone}"  >
            </div>

            <div class="my-form-group">
                <label for="edit-address">Địa chỉ</label>
                <input type="text" class="my-form-control" id="edit-address" placeholder="Địa chỉ"
                       name="edit-address" value="${edit.address}"  >
            </div>

            <div class="my-form-group">
                <label for="edit-address">ngày sinh</label>
                <input type="date" class="my-form-control" id="edit-birthday" placeholder="Ngày sinh"
                       name="edit-birthday" value="${edit.birthday}"  >
            </div>


            <div class="submit">
                <button id="btnSubmit" type="submit">Sửa</button>
            </div>
        </form>

    </div>

</div>


<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>



<!-- javascript -->


</body>

</html>