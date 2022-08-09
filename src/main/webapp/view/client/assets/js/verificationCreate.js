const formVarification = document.getElementById("form-verification");
const verificationCode = document.getElementById("verification-set");
const btnNextVerification = document.getElementById("next-verification");
formVarification.addEventListener("input", (e) => {
    checkInputVerification();
});

function checkInputVerification() {
    const valueVerificationCode = verificationCode.value;
    if (valueVerificationCode == "") {
        setErrorFor(verificationCode, "Vui lòng điền vào mục này.");
        setBtnOpacity(btnNextVerification, false);
    } else {
        setSuccess(verificationCode);
        setBtnOpacity(btnNextVerification, true);
    }
}

btnNextVerification.addEventListener("click", (e) => {
    checkInputVerificationClick();
});

function checkInputVerificationClick() {
    const valueVerificationCode = verificationCode.value;
    if (valueVerificationCode.length != 6) {
        setErrorFor(verificationCode, "Mã xác nhận không hợp lệ.");
    } else {
        // const valueErrorOTP =document.getElementById("from-mess-error-otp");
        formVarification.onsubmit = function () {
            return true;
        };


    }
}


function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}