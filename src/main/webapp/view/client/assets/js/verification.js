const formVarification = document.getElementById("form-verification-forgotPWD");
const verificationCode = document.getElementById("verification-set-forgotPWD");
const btnNextVerification = document.getElementById("next-verification-forgotPWD");
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
        setSuccess(verificationCode);
        formVarification.onsubmit = function () {
            return true;
        };
    }
}

