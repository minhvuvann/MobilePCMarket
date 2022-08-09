var formReSetPwd = document.getElementById("form-rs");
var emailResetPwd = document.getElementById("email-rs");
var btnNextResetPwd = document.getElementById("next-rs");
formReSetPwd.oninput =function (){
  checkInputRSpwd();
};

function checkInputRSpwd() {
  const valueEmailResetPwd = emailResetPwd.value.trim();
  if (valueEmailResetPwd == "") {
    setErrorFor(emailResetPwd, "Vui lòng điền vào trường này.");
    setBtnOpacity(btnNextResetPwd, false);
  } else {
    setSuccess(emailResetPwd);
    setBtnOpacity(btnNextResetPwd, true);
  }
}
btnNextResetPwd.addEventListener("click", (e) => {
  checkInputRSpwdClick();
});
function checkInputRSpwdClick() {
  const valueEmailResetPwd = emailResetPwd.value.trim();
  if (!isEmail(valueEmailResetPwd) && !isNumberPhone(valueEmailResetPwd)) {
    setErrorFor(emailResetPwd, "Email hoặc số điện thoại không hợp lệ.");
  } else {
    formReSetPwd.onsubmit = function (){
      return true;
    }
    if (isEmail(valueEmailResetPwd)) {
      setSuccess(emailResetPwd)

    }
  }
}
