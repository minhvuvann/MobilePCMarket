<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Đặt lại mật khẩu</title>
    <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <script>
        function signInNowForgotPWD() {
            document.querySelector(".popUpBox").style.display = "none";
            document.getElementById("popUpOverlay").style.display = "none";
            window.location.href = "view/client/sign_user/signIn.jsp";
            document.getElementById("pwd-set").value = "";
        }</script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/script.js" charset="UTF-8"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/setpwd.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/resetPass.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css"/>
</head>
<style>
    #set-PWD-forgot-success {
        display: block;
    }</style>
<body>
<div class="container-sign">
    <div class="container-heder">
        <div class="img-logo">
            <a href="<%=request.getContextPath()%>/">
                <img src="<%=request.getContextPath()%>${linkLogoStore}" alt="Astore" width="150px"
                /></a>
        </div>
        <p class="tille-sign" id="tilte-text">Đặt lại mật khẩu</p>
        <p class="sp-sign">
            <a href="<%=request.getContextPath()%>/view/client/help.jsp" style="text-decoration: none; color: white"
            >Trợ giúp?</a
            >
        </p>
    </div>
    <div class="container-section">
        <div class="container-reset">
            <div class="heder-reset" id="heder-set">
                <div class="back-reset" id="back-set">
                    <a href="<%=request.getContextPath()%>/verificationCode">
                        <i class="fas fa-chevron-left fa-2x"></i>
                    </a>
                </div>
                <div class="text-reset">
                    <p id="text-rs">Thiết Lập Mật Khẩu</p>
                </div>
            </div>
            <div class="form-rs-1" style="margin: 66px 0px;">
                <form action="<%=request.getContextPath()%>/setForgotPWD" method="post" onsubmit="return false"
                      id="form-set">
                    <div class="form-group">
                        <input
                                type="password"
                                name="password-set-forgotPWD"
                                class="form-reset"
                                id="pwd-set"
                                placeholder="Mật khẩu"
                        />
                        <small class="form-message"></small>
                    </div>
                    <p class="text-condition-set" style="margin: 5px; margin-left:-46px">
                        Mật khẩu phải có độ dài từ 6-16 ký tự.
                    </p>
                    <button type="submit" class="btn-form-sign" id="agree-set" disabled>ĐỒNG Ý</button>
                </form>
            </div>

            <div id="popUpOverlay"></div>
            <div id="${setPWDForgotSuccess}" class="popUpBox">
                <div id="box">
                    <i class="far fa-check-circle fa-3x" style="color: lime"></i>
                    <p>Xin chúc mừng!</p>
                    <p style="font-size: 11px">Bạn đã thiết lập lại mật khẩu thành công.</p>
                    <div id="closeModal">${loginSccessForgotPwd}</div>
                </div>
                u
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>

</body>
</html>
