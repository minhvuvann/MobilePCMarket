<%--
  Created by IntelliJ IDEA.
  User: iamva
  Date: 21/03/2022
  Time: 11:29 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>ASTORE | Cart</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/grid copy.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/header-n-footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<style>
    #successfulOrder {
        display: block;
    }

    .choosenumber {
        float: right;
        overflow: hidden;
        position: relative;
        width: 100px;
        border: 1px solid #dfdfdf;
        background: #fff;
        border-radius: 3px;
        line-height: 30px;
        font-size: 14px;
        color: #333;
    }

    .choosenumber .minus {
        float: left;
        border-right: 1px solid #dfdfdf;
        background: #fff;
        width: 32%;
        height: 30px;
        position: relative;
        pointer-events: none;
        cursor: pointer;
    }

    .choosenumber .number {
        font-size: 14px;
        color: #333;
        float: left;
        width: 33%;
        height: 30px;
        text-align: center;
    }

    .choosenumber .minus i {
        width: 12px;
        height: 2px;
        background: #288ad6;
        display: block;
        margin: 14px auto;
    }

    .choosenumber .plus {
        float: right;
        border-left: 1px solid #dfdfdf;
        background: #fff;
        width: 32%;
        height: 30px;
        position: relative;
        cursor: pointer;
    }

    .choosenumber .plus i:first-child {
        width: 12px;
        height: 2px;
        background: #288ad6;
        display: block;
        margin: 14px auto;
    }

    .choosenumber .plus i:nth-child(2) {
        width: 2px;
        height: 12px;
        background: #288ad6;
        display: block;
        margin: 0 auto;
        position: absolute;
        top: 9px;
        left: 0;
        right: 0;
    }

    .error-address {
        display: block;
        overflow: hidden;
        color: #dd4b39;
        font-size: 12px;
        padding-top: 5px;
        margin-left: -42px;
    }

    .error-fulfill-information {
        display: block;
        overflow: hidden;
        padding-top: 5px;
        color: #dd4b39;
        font-size: 12px;
    }

    .form-group.error small {
        visibility: visible;
    }

    .form-group.success small {
        visibility: hidden;
    }

    .popUpBox {
        width: 243px;
        overflow: hidden;
        background: white;
        box-shadow: 0 0 10px black;
        border-radius: 10px;
        position: absolute;
        top: 40%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 9999;
        padding: 10px;
        text-align: center;
        display: none;
    }

    .btn-back-home {
        width: 100%;
        border: none;
        background: black;
        color: #FFF;
        margin: 0 0 5px;
        padding: 10px;
        font-size: 15px;
        border-radius: 10px;
    }

</style>

<body>
<jsp:include page="../client/header/header.jsp"></jsp:include>
<form method="post" action="orderAddress" onsubmit="${onSubmitOrder}" id="order-form">
    <div class="cart-payment cart-payment-1">
        <div class="my-container" style="background: transparent; max-width: 690px;">
            <div class="my-row row-cart-payment row-cart-payment-1">
                <div class="my-l-12 my-m-12 my-c-12 col-infor-products col-infor-customer">
                    <div class="not-product" style="font-size: 20px">${notProduct}</div>
                    <c:forEach items="${listCart}" var="cart">
                        <div class="my-row a-product" style="margin-bottom: 20px;">
                            <div class="my-l-2 my-m-2 my-c-2">
                                <div class="my-row">
                                    <c:choose>
                                        <c:when test="${fn:startsWith(cart.linkImgProduct, 'http')}">
                                            <img src="${cart.linkImgProduct}"
                                                 alt="" style="max-width: 100%;">
                                        </c:when>
                                        <c:otherwise>
                                            <img src="<%=request.getContextPath()%>/${cart.linkImgProduct}"
                                                 alt="" style="max-width: 100%;">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="my-row">
                                    <div class="my-l-12 my-m-12 my-c-12" style="margin-bottom: 10px;">
                                        <button type="button" class="btn-del" style="border: 1px solid black;">
                                            <a style="text-decoration: none;color: #0a1219"
                                               href="<%=request.getContextPath()%>/deleteCart?idCart=${cart.id}"><p
                                                    class="icon-del">xóa</p>
                                            </a>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="my-l-1 my-m-1 my-c-3">
                            </div>
                            <div class="my-l-5 my-m-5 my-c-6" style=" display: flex; ">
                                <div class="my-row"
                                     style="display: flex; flex-direction: column; justify-content: center; align-items: flex-start;">
                                    <div>
                                        <h4 style="margin-top: 10px;">${cart.nameProduct} </h4>
                                    </div>

                                    <div>
                                        <h5>${cart.rom}GB</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="my-l-3 my-m-3 my-c-3" style="display: flex;">
                                <div class="my-row" style="align-items:  center;">
                                    <h4><fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${cart.price}" type="currency"/></h4>
                                </div>
                            </div>
                            <div class="choosenumber">
                                <a href="<%=request.getContextPath()%>/removeCart?idSP=${cart.idProduct}">
                                    <div id="btnRemoveCart" onclick="removeCart()" class="minus"
                                         style="pointer-events:all;"><i
                                            style="background-color: rgb(40, 138, 214);"></i></div>
                                </a>
                                <input id="quantityNumber" type="text" maxlength="3" class="number"
                                       value="${cart.quantity}"
                                       style="border: medium none; pointer-events: all;">
                                <a href="<%=request.getContextPath()%>/addCart?idSP=${cart.idProduct}">
                                    <div class="plus" style="pointer-events: all;">
                                        <i style="background-color: rgb(40, 138, 214);"></i>
                                        <i style="background-color: rgb(40, 138, 214);"></i></div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="my-row a-product" style="margin-top: 30px;">
                        <div class="my-l-3 my-m-3 my-c-3">
                        </div>
                        <div class="my-l-6 my-m-6 my-c-6">
                        </div>
                        <div class="my-l-3 my-m-3 my-c-3">
                            <h4>${titleSumCart}</h4>
                            <h4><fmt:setLocale value="vi_VN"/>
                                <fmt:formatNumber value="${sumCart}" type="currency"/></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 2px; display:${informationCustomer}" class="cart-payment display-customer  cart-payment-2">
        <div class="my-container" style="background: transparent; max-width: 690px;">
            <div class="my-row row-cart-payment row-cart-payment-2">
                <div class="my-l-12 my-m-12 my-c-12 col-infor-customer text-align-left">
                    <h3>Thông tin khách hàng</h3>
                </div>
                <div class="my-l-12 my-m-12 my-c-12 col-infor-customer">
                    <div class="my-row">
                        <div class="my-col my-l-4 my-m-4 my-c-6">
                            <div class="my-row">
                                <div class="my-col my-l-6 my-m-6 my-c-6">
                                    <input checked="checked" type="radio" id="" name="sexCustomer" value="Nam">
                                    <label for="" style="font-size: 18px;">Anh</label>
                                </div>
                                <div class="my-col my-l-6 my-m-6 my-c-6">
                                    <input type="radio" id="age1" name="sexCustomer" value="Nữ">
                                    <label for="" style="font-size: 18px;">Chị</label>
                                </div>
                            </div>
                        </div>
                        <div class="my-col my-l-8 my-m-8 my-c-6">
                        </div>
                    </div>
                </div>
                <div class="my-l-12 my-m-12 my-c-12 col-infor-customer">
                    <div class="my-row" style="margin-bottom: 20px;">
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <div class="form-group">
                                <input class="input-chung" type="text" id="fullNameCustomer" name="fullNameCustomer"
                                       placeholder="Họ và tên"><br>
                                <small class="error-fulfill-information" style=" margin-left: -92px;"></small>
                            </div>
                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <div class="form-group">
                                <input class="input-chung" type="tel" id="telephoneCustomer" name="telephoneCustomer"
                                       placeholder="Số điện thoại"><br>
                                <small class="error-fulfill-information" style=" margin-left: -63px;"></small>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cart-payment  cart-payment-3" style="margin-top: 3px;">
        <div class="my-container" style="background: transparent; max-width: 690px;">
            <div class="my-row row-cart-payment row-cart-payment-3">
                <div style="display:${informationDelivery}"
                     class="my-l-12 my-m-12 my-c-12 col-infor-customer text-align-left">
                    <h3>Thông tin giao hàng</h3>
                </div>
                <div style="display:${informationDelivery}" class="my-l-12 my-m-12 my-c-12 col-infor-customer">

                    <div class="my-row">
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <div class="form-group">
                                <select class="input-chung" id="calc_shipping_provinces" name="calc_shipping_provinces"
                                        required="">
                                    <option value="">Tỉnh / Thành phố</option>
                                </select><small class="error-address"></small>
                            </div>

                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <div class="form-group">
                                <select class="input-chung" id="calc_shipping_district" name="calc_shipping_district"
                                        required="">
                                    <option value="">Quận / Huyện</option>
                                </select>
                                <small style="margin-left: -71px" class="error-address"></small>

                            </div>
                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <div class="form-group">
                                <input class="input-chung" type="text" id="calc_shipping_ward" name="calc_shipping_ward"
                                       placeholder="Xã"><br>
                                <small style="margin-left: -61px" class="error-address"></small>

                            </div>
                        </div>
                        <div class="my-col my-l-6 my-m-6 my-c-12 col-input-form">
                            <div class="form-group">
                                <input id="calc_shipping_detail_address" class="input-chung" type="text"
                                       name="calc_shipping_detail_address"
                                       placeholder="Số nhà, tên đường"><br>
                                <small style="margin-left: -90px" class="error-address"></small>


                            </div>
                        </div>
                    </div>

                </div>


                <div style="display:${btnOrder}" class="my-l-12 my-m-12 my-c-12" style="margin-bottom: 20px;">
                    <button type="submit" class="button-order">ĐẶT HÀNG</button>
                </div>
            </div>
        </div>
    </div>
</form>
<div id="popUpOverlay"></div>
<div id="${successfulOrder}" class="popUpBox">
    <div id="box">
        <i class="far fa-check-circle fa-3x" style="color: lime"></i>
        <p>ASTORE chân thành cảm ơn bạn!</p>
        <p style="font-size: 15px">Bạn đã đặt hàng thành công.</p>
        <div id="closeModal">${btnOrderSuccessful}</div>
    </div>
</div>

<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>


<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js'></script>
<script charset="UTF-8" src="<%=request.getContextPath()%>/view/client/assets/js/validateInformation.js"></script>
<script>
    function removeCart() {
        var quantity = document.getElementById("quantityNumber").value;
        if (quantity > 1) {
            document.getElementById("btnRemoveCart").style.pointerEvents = "all";
        } else {
            document.getElementById("btnRemoveCart").style.pointerEvents = "none";
        }
    }

    function okOrder() {
        document.querySelector(".popUpBox").style.display = "none";
        document.getElementById("popUpOverlay").style.display = "none";
        window.location.href = "<%=request.getContextPath()%>/#";
    }

</script>
<script>
    if (address_2 = localStorage.getItem('address_2_saved')) {
        $('select[name="calc_shipping_district"] option').each(function () {
            if ($(this).text() == address_2) {
                $(this).attr('selected', '')
            }
        })
        $('input.billing_address_2').attr('value', address_2)
    }
    if (district = localStorage.getItem('district')) {
        $('select[name="calc_shipping_district"]').html(district)
        $('select[name="calc_shipping_district"]').on('change', function () {
            var target = $(this).children('option:selected')
            target.attr('selected', '')
            $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
            address_2 = target.text()
            $('input.billing_address_2').attr('value', address_2)
            district = $('select[name="calc_shipping_district"]').html()
            localStorage.setItem('district', district)
            localStorage.setItem('address_2_saved', address_2)
        })
    }
    $('select[name="calc_shipping_provinces"]').each(function () {
        var $this = $(this),
            stc = ''
        c.forEach(function (i, e) {
            e += +1
            stc += '<option value="' + i + '">' + i + '</option>'
            $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
            if (address_1 = localStorage.getItem('address_1_saved')) {
                $('select[name="calc_shipping_provinces"] option').each(function () {
                    if ($(this).text() == address_1) {
                        $(this).attr('selected', '')
                    }
                })
                $('input.billing_address_1').attr('value', address_1)
            }
            $this.on('change', function (i) {
                i = $this.children('option:selected').index() - 1
                var str = '',
                    r = $this.val()
                if (r != '') {
                    arr[i].forEach(function (el) {
                        str += '<option value="' + el + '">' + el + '</option>'
                        $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)
                    })
                    var address_1 = $this.children('option:selected').text()
                    var district = $('select[name="calc_shipping_district"]').html()
                    localStorage.setItem('address_1_saved', address_1)
                    localStorage.setItem('district', district)
                    $('select[name="calc_shipping_district"]').on('change', function () {
                        var target = $(this).children('option:selected')
                        target.attr('selected', '')
                        $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
                        var address_2 = target.text()
                        $('input.billing_address_2').attr('value', address_2)
                        district = $('select[name="calc_shipping_district"]').html()
                        localStorage.setItem('district', district)
                        localStorage.setItem('address_2_saved', address_2)
                    })
                } else {
                    $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
                    district = $('select[name="calc_shipping_district"]').html()
                    localStorage.setItem('district', district)
                    localStorage.removeItem('address_1_saved', address_1)
                }
            })
        })
    })</script>
</body>
</html>
