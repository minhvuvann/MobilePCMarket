<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Đăng ký</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/resetPass.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css"/>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<style>
    #successVerificationOTP {
        display: block;
    }

    #errorVerificationOTP {
        display: none;
    }

    #from-mess-error-otp {
        visibility: inherit;
    }

</style>
<body>
<div class="container-sign">
    <div class="container-heder">
        <div class="img-logo">
            <a href="<%=request.getContextPath()%>/">
                <img src="<%=request.getContextPath()%>${linkLogoStore}" alt="Astore" width="150px"
                /></a>
        </div>
        <p class="tille-sign" id="tilte-text">Đăng ký</p>
        <p class="sp-sign">
            <a href="<%=request.getContextPath()%>/view/client/help.jsp" style="text-decoration: none; color: white"
            >Trợ giúp?</a
            >
        </p>
    </div>
    <div class="container-section">
        <div class="container-reset" id="container-verification">
            <div class="heder-reset" id="heder-verification">
                <div
                        class="back-reset"
                        id="back-verification"
                ><a href="<%=request.getContextPath()%>/signUp">
                    <i class="fas fa-chevron-left fa-2x"></i>
                </a>
                </div>
                <div class="text-reset">
                    <p id="text-rs">Nhập Mã Xác Minh</p>
                </div>
            </div>
            <div class="form-rs-1" style="margin:0;margin-top:70px">
                <form
                        action="<%=request.getContextPath()%>/verificationRegister"
                        id="form-verification"
                        method="post"
                        onsubmit="return false"
                        style="margin: auto; width: 328px"
                >
                    <div class="form-group">
                        <input
                                onkeypress="return onlyNumberKey(event)"
                                type="text"
                                name="verification-code-set"
                                maxlength="6"
                                class="form-reset"
                                id="verification-set"
                                placeholder="Mã xác minh"
                                style="text-align: center"
                        />
                        <small class="form-message" id="${fromMessErrorOTP}">${errorVerificationOTP}</small>
                    </div>
                    <div class="resend-code">
                        <p style="font-size: 15px; float: left; margin: 5px 0px;">
                            Bạn không nhận được mã?
                            <a href="<%=request.getContextPath()%>/sendMail" class="resend-verification"
                               style="float:right;">Gửi lại</a>
                        </p>
                    </div>
                    <button type="submit" disabled class="btn-form-sign" id="next-verification">
                        TIẾP THEO
                    </button>
                </form>

            </div>

            <div id="popUpOverlay"></div>
            <div id="${successVerificationOTP}" class="popUpBox">
                <div id="box">
                    <i class="far fa-check-circle fa-3x" style="color: lime"></i>
                    <p>Xin chúc mừng!</p>
                    <p style="font-size: 11px">Bạn đã đăng ký thành công.</p>
                    <div id="closeModal">${loginSuccessOTP}</div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/view/client/assets/js/verificationCreate.js"></script>
<script>
    function onlyNumberKey(evt) {
        var ASCIICode = evt.which ? evt.which : evt.keyCode;
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57)) {
            return false;
        }
        return true;
    }

    function signInNowRegister() {
        document.querySelector(".popUpBox").style.display = "none";
        document.getElementById("popUpOverlay").style.display = "none";
        window.location.href = "<%=request.getContextPath()%>/signIn";
        document.getElementById("verification-set").value = "";
    }
</script>
<script src="<%=request.getContextPath()%>/view/client/assets/js/script.js" charset="UTF-8"></script>

</body>
</html>
