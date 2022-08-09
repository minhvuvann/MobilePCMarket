<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="380914326375-b0tupe4hukq70qps3gq5v74v42bo8b7c.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>Tài khoản</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-format.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-information.css" />
  </head>
  <style>
    .w-15 {
      width: 20% !important;
    }
    .w-10 {
      width: 15% !important;
    }
    .text-center {
      text-align: center !important;
    }
    .no_order_user{
      color: darkslategray;
      font-size: 20px;
      text-align: center;
    }
  </style>
  <body>
    <div class="account-container">
      <jsp:include page="/view/client/header/header.jsp"></jsp:include>

      <!-- Single Products -->
      <section class="cps-section">
        <div class="cps-container">
          <div class="cps-left-col">
            <div class="block-menu">
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/informationAccount"
                  ><div class="box-icon-cps">
                    <i class="fas fa-user-circle"></i>
                  </div>
                  <p>Tài khoản của bạn</p></a
                >
              </div>
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/rateAccount"
                  ><div class="box-icon-cps"><i class="fas fa-medal"></i></div>
                  <p>Hạng thành viên</p></a
                >
              </div>
              <div class="block-menu__item-menu">
                <a href="<%=request.getContextPath()%>/giftAccount"
                  ><div class="box-icon-cps"><i class="fas fa-gift"></i></div>
                  <p>Ưu đãi của bạn</p></a
                >
              </div>
              <div class="block-menu__item-menu active">
                <a href="<%=request.getContextPath()%>/historyOrderAccount"
                  ><div class="box-icon-cps">
                    <i class="fas fa-history"></i>
                  </div>
                  <p>Lịch sử mua hàng</p></a
                >
              </div>
              <div id="exit-account-cps" class="block-menu__item-menu">
                <a href="#"
                  ><div class="box-icon-cps">
                    <i class="fas fa-sign-out-alt"></i>
                  </div>
                  <p>Thoát tài khoản</p></a
                >
              </div>
            </div>
          </div>
          <div id="alert-cancel-order-account" class="alert-cancel-order">
            <p>Bạn muốn thoát tài khoản?</p>
            <div class="btn-cancel-group">
              <button id="btn-cancel-account" class="btn btn-cancel">
                Không
              </button>
              <button id="btn-accept-account"
                      class="btn btn-accept">
                <a  href="<%=request.getContextPath()%>/exitsAccount" style="color: white">  Xác nhận</a>
              </button>
            </div>
          </div>
          <div id="bg-overlay-account" class="bg-overlay"></div>
          <div class="cps-right-col">
            <div>
              <section>
                <div class="account-sider-bar">
                  <aside class="sidebar">
                    <nav class="nav">
                      <ul class="nav-items">
                        <li>
                          <a href="<%=request.getContextPath()%>/informationAccount" class="nav-link">
                            <i class="fas fa-user-circle"></i>Tài Khoản của
                            bạn</a
                          >
                        </li>
                        <li>
                          <a href="<%=request.getContextPath()%>/rateAccount" class="nav-link"
                            ><i class="fas fa-medal"></i>Hạng thành viên</a
                          >
                        </li>
                        <li>
                          <a href="<%=request.getContextPath()%>/giftAccount" class="nav-link"
                            ><i class="fas fa-gift"></i>Ưu đãi của bạn</a
                          >
                        </li>
                        <li>
                          <a href="<%=request.getContextPath()%>/historyOrderAccount" class="nav-link"
                            ><i class="fas fa-history"></i>Lịch sử mua hàng</a
                          >
                        </li>
                        <li>
                          <a href="#" id="exit-account-sider" class="nav-link">
                            <i class="fas fa-sign-out-alt"></i>Thoát tài
                            khoản</a
                          >
                        </li>
                      </ul>
                      <div class="sidebar-separator"></div>
                    </nav>
                  </aside>
                  <div class="hamburger">
                    <div class="bar"></div>
                    <div class="bar"></div>
                    <div class="bar"></div>
                  </div>
                </div>
                <div class="block-manage-order">
                  <div class="block-manage-order__title">
                    <p>Quản lý đơn hàng</p>
                  </div>
                  <div>
                    <div class="block-manage-order__tab-filter">
                      <div class="box-tab">
                        <button class="box-tab__status active">Tất cả</button>
                      </div>
                    </div>
                    <div class="box-order">
                      <div class="box-order__header">
                        <div class="header-item w-15 text-center">
                          Mã đơn hàng
                        </div>
                        <div class="header-item w-15 text-center">
                       Ngày đặt
                        </div>
                        <div class="header-item w-15 text-center">Ngày giao</div>
                        <div class="header-item w-15 text-center">
                          Tổng tiền
                        </div>
                        <div class="header-item w-10"></div>
                      </div>
                    </div>
                    <div class="box-order">
                      <div class="no_order_user">${noOrderUser}</div>
                    <c:forEach var="s" items="${requestScope.listOrder}">

                      <div class="box-order__header" style="border: none">
                        <div class="header-item w-15 text-center">${s.id}</div>
                        <div class="header-item w-15 text-center">${s.bookingDate}</div>
                        <div class="header-item w-15 text-center">
                          ${s.deliveryDate}
                        </div>
                        <div class="header-item w-15 text-center">
                          ${s.moneyOrder}VNĐ
                        </div>
                        <div class="header-item w-10 text-center">
                          <a
                            href="<%=request.getContextPath()%>/informationOrder?idHD=${s.id}&moneyOrder=${s.moneyOrder}"
                            style="color: rgb(85, 194, 230)"
                            ><u>Chi tiết</u></a
                          >
                        </div>
                      </div>
                    </c:forEach>
                      </div>
                    </div>
                  </div>
              </section>
            </div>
          </div>
        </div>
      </section>
    </div>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/account-information.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/icon_account.js"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/account.js"></script>
  </body>
</html>
