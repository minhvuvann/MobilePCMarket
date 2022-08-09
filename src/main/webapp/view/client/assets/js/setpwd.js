const formSet = document.getElementById("form-set");
const pwdSet = document.getElementById("pwd-set");
const btnAgreeSet = document.getElementById("agree-set");
formSet.addEventListener("input", (e) => {
    checkInputSet();
});

function checkInputSet() {
    var valuePwdSet = pwdSet.value.trim();
    if (valuePwdSet == "") {
        setErrorFor(pwdSet, "Vui lòng điền vào mục này.");
        setBtnOpacity(btnAgreeSet, false);
    } else {
        setSuccess(pwdSet);
        setBtnOpacity(btnAgreeSet, true);
    }
}
btnAgreeSet.addEventListener("click", (e) => {
    checkInputSetClick();
});

function checkInputSetClick() {
    var valuePwdSet = pwdSet.value.trim();
    if (!isPwd(valuePwdSet)) {
        setErrorFor(pwdSet, "Mật khẩu phải có độ dài từ 6 ký tự .");
    } else {
        formSet.onsubmit= function (){
            return true;
        }
        setSuccess(pwdSet);
    }
}
