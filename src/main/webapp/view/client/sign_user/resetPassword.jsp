<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Đặt lại mật khẩu</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/css/all.min.css"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/resetPass.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css" />
  </head>
<style>
  #from-mess-error-OTP-forgot-PWD{
  visibility: inherit;
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
        <div class="container-reset" id="pwd-rs-containter">
          <div class="heder-reset" id="heder-rs">
            <div class="back-reset" id="back-rs" >
              <a href="<%=request.getContextPath()%>/signIn">
              <i class="fas fa-chevron-left fa-2x"></i>
              </a>
            </div>
            <div class="text-reset">
              <p id="text-rs">Đặt Lại Mật Khẩu</p>
            </div>
          </div>
          <div class="form-rs-1">
            <form action="<%=request.getContextPath()%>/forgotPassword" onsubmit="return false" method="post" id="form-rs" style="margin-top:53px;">
              <div class="form-group">
                <input
                  type="text"
                  name="email-phone-rs"
                  class="form-reset"
                  id="email-rs"
                  placeholder="Email/Số điện thoại"
            style="font-size:15px;" />
                <small id="${fromMessErrorOTPForgotPWD}" class="form-message">${errorVerificationOTPForgotPWD}</small>
              </div>
              <button id="next-rs" type="submit" class="btn-form-sign" style="margin-top: 23px"  disabled>TIẾP THEO</button>
            </form>
          </div>

        </div>
      </div>
    </div>

    <!-- Footer -->
    <jsp:include page="/view/client/footer/footer.jsp"></jsp:include>

    <script src="<%=request.getContextPath()%>/view/client/assets/js/script.js" charset="UTF-8"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/resetPwd.js" charset="UTF-8"></script>
  </body>
</html>
