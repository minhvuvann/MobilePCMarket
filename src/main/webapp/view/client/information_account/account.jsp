<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id"
          content="380914326375-b0tupe4hukq70qps3gq5v74v42bo8b7c.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>Tài khoản</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-format.css"/>
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/account-information.css"/>
</head>

<body>
<div class="account-container">
    <jsp:include page="/view/client/header/header.jsp"></jsp:include>

    <!-- Single Products -->
    <section class="cps-section">
        <div class="cps-container">
            <div class="cps-left-col">
                <div class="block-menu">
                    <div class="block-menu__item-menu active">
                        <a href="<%=request.getContextPath()%>/informationAccount"
                        >
                            <div class="box-icon-cps">
                                <i class="fas fa-user-circle"></i>
                            </div>
                            <p>Tài khoản của bạn</p></a
                        >
                    </div>
                    <div class="block-menu__item-menu">
                        <a href="<%=request.getContextPath()%>/rateAccount"
                        >
                            <div class="box-icon-cps"><i class="fas fa-medal"></i></div>
                            <p>Hạng thành viên</p></a
                        >
                    </div>
                    <div class="block-menu__item-menu">
                        <a href="<%=request.getContextPath()%>/giftAccount"
                        >
                            <div class="box-icon-cps"><i class="fas fa-gift"></i></div>
                            <p>Ưu đãi của bạn</p></a
                        >
                    </div>
                    <div class="block-menu__item-menu">
                        <a href="<%=request.getContextPath()%>/historyOrderAccount"
                        >
                            <div class="box-icon-cps">
                                <i class="fas fa-history"></i>
                            </div>
                            <p>Lịch sử mua hàng</p></a
                        >
                    </div>
                    <div id="exit-account-cps" class="block-menu__item-menu">
                        <a href="#"
                        >
                            <div class="box-icon-cps">
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
                        <a href="<%=request.getContextPath()%>/exitsAccount" onclick="signOut()" style="color: white">
                            Xác nhận</a>
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
                        <div class="block-smember-info account">
                            <div class="block-smember-info__avatar">
                                <button style="border: gray solid 0px;position: relative; background-color: transparent">
                                    <img id="avatar" src="${imgAccount}" alt="avatar"
                                         style="height: 90px; width: 90px;  object-fit: cover;"/>
                                    <input style="opacity: 0;width: 60px;position: absolute;left: 0px;height: 60px;"
                                           type="file"
                                           id="avatar-chose" name="avatar"
                                           accept="image/png, image/jpeg">
                                    <input hidden type="text" id="id" value="${id}"/>

                                </button>
                            </div>
                            <div class="block-smember-info__box-title">
                                <span>Xin chào!</span>
                                <p>${fullNameAccount}</p>
                                <button class="btn-item-management">
                                    <a href="<%=request.getContextPath()%>/edit-information-account">Sửa
                                        thông tin</a>
                                </button>
                            </div>
                            <div class="block-smember-info__box-content">
                                <div class="item-content">
                                    <p>Sinh nhật</p>
                                    <i class="fas fa-birthday-cake"></i>
                                    <p class="join-date">${birthdayAccount}</p>
                                </div>
                                <div class="item-content">
                                    <p>Số điện thoại</p>
                                    <i class="fas fa-mobile-alt"></i>
                                    <c:if test="${phoneAccount != null}">
                                        <p class="join-date">${phoneAccount}</p>
                                    </c:if>
                                    <c:if test="${phoneAccount == null}">
                                        <p class="join-date">Chưa thiếp lập</p>
                                    </c:if>
                                </div>

                                <div class="item-content">
                                    <p>Hạng thành viên</p>
                                    <i class="fas fa-medal"></i>
                                    <p class="small-rank">${rankAccount}</p>
                                </div>
                                <div class="item-content">
                                    <p>Ngày tham gia</p>
                                    <i class="far fa-calendar-check"></i>
                                    <p class="join-date">${dateEmbarkAccount}</p>
                                </div>
                            </div>
                            <div class="block-smember__box-content">
                                <div class="item-content gift">
                                    <a href="<%=request.getContextPath()%>/giftAccount" class="see-detail"
                                    >
                                        <div class="item-content__box-icon gift">
                                            <i class="fas fa-gifts" style="color: #c51018"></i>
                                        </div>
                                        <p class="item-content__title">Ưu đãi của bạn</p>
                                        <p class="item-content__counter">${giftAccount}</p>
                                        <button class="item-content__detail">
                                            Xem chi tiết
                                        </button>
                                    </a>
                                </div>
                                <div class="item-content order">
                                    <a href="<%=request.getContextPath()%>/historyOrderAccount" class="see-detail"
                                    >
                                        <div class="item-content__box-icon order">
                                            <i class="fas fa-box-open" style="color: #d5941c"></i>
                                        </div>
                                        <p class="item-content__title">Đơn hàng của bạn</p>
                                        <p class="item-content__counter">${quantilyOrderAccount}</p>
                                        <button class="item-content__detail">
                                            Xem chi tiết
                                        </button>
                                    </a
                                    >
                                </div>
                                <div class="item-content rank" smem-rank="">
                                    <a href="<%=request.getContextPath()%>/rateAccount" class="see-detail"
                                    >
                                        <div class="item-content__box-icon rank">
                                            <i class="fas fa-crown" style="color: #ffc02e"></i>
                                        </div>
                                        <p class="item-content__title">Hạng thành viên</p>
                                        <p class="item-content__counter">${levelRankAccount}</p>
                                        <button class="item-content__detail">
                                            Xem chi tiết
                                        </button>
                                    </a
                                    >
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- javascript -->
<script>  function signOut() {
    const element = document.getElementById("myBtn");
    element.addEventListener("click", function () {
        alert("ok")
    });
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut()
        .then(function () {
            auth2.disconnect();
            console.log('User signed out.');
            //location.reload();
        });

}</script>
<script type="module">
    // Import the functions you need from the SDKs you need
    import {initializeApp} from "https://www.gstatic.com/firebasejs/9.6.2/firebase-app.js";
    import {
        getStorage,
        ref,
        uploadString,
        uploadBytes,
        uploadBytesResumable,
        getDownloadURL
    } from "https://www.gstatic.com/firebasejs/9.6.2/firebase-storage.js";
    import {getAnalytics} from "https://www.gstatic.com/firebasejs/9.6.2/firebase-analytics.js";

    const firebaseConfig = {
        apiKey: "AIzaSyBFW0A9DRfzSEkJEJoz-xZtmROoWWXguBM",
        authDomain: "astore-22bfb.firebaseapp.com",
        projectId: "astore-22bfb",
        storageBucket: "astore-22bfb.appspot.com",
        messagingSenderId: "546166628108",
        appId: "1:546166628108:web:79e3fe210f06cc15c93329",
        measurementId: "G-C5VKPQKBC2"
    };

    // Initialize Firebase
    var app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
    console.log(app);

    const storage = getStorage(app, "astore-22bfb.appspot.com");
    // const storageRef = ref(storage, 'ok2.jpg');
    var file;
    const fileInput = document.getElementById("avatar-chose")
    const id = document.getElementById("id").value
    fileInput.addEventListener("change", function (evt) {
        evt.stopPropagation();
        evt.preventDefault();

        // FileList object.
        var files = evt.target.files;

        file = files[0];

        const storage = getStorage(app, "astore-22bfb.appspot.com");
        const storageRef = ref(storage, 'avatar/' + id);
        const uploadTask = uploadBytesResumable(storageRef, file);
        uploadTask.on('state_changed',
            (snapshot) => {
                // Observe state change eventsFber of bytes uploaded and the total number of bytes to be uploaded
                const progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                console.log('Upload is ' + progress + '% done');
                switch (snapshot.state) {
                    case 'paused':
                        console.log('Upload is paused');
                        break;
                    case 'running':
                        console.log('Upload is running');
                        break;
                }
            },
            (error) => {
                // Handle unsuccessful uploads
            },
            () => {
                // Handle successful uploads on complete
                // For instance, get the download URL: https://firebasestorage.googleapis.com/...
                getDownloadURL(uploadTask.snapshot.ref).then((downloadURL) => {
                    console.log('File available at', downloadURL);

                    $.ajax({
                        url: "UpdateAvatarCustomer",
                        type: 'POST',
                        data: {
                            urlAvt: downloadURL,
                            id: id
                        },
                        success: function (responseJson) {
                            console.log(responseJson)
                            if (responseJson)
                                <%--<img id="avatar" src="${imgAccount}" alt="avatar" />--%>

                                document.getElementById("avatar").setAttribute("src", responseJson)
                        }
                    });


                });
            }
        );
    })

</script>
<script src="<%=request.getContextPath()%>/view/client/assets/js/account.js"></script>
<script src="<%=request.getContextPath()%>/view/client/assets/js/icon_account.js"></script>
<script src="<%=request.getContextPath()%>/view/client/assets/js/account-information.js"></script>

</body>
</html>
