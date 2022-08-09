const btnExitAccount = document.getElementById("exit-account-cps");
const btnExitSiderBar = document.getElementById("exit-account-sider");
const youExitAccount = document.getElementById("alert-cancel-order-account");
const bgOverAccount = document.getElementById("bg-overlay-account");

btnExitAccount.onclick = function () {
    youExitAccount.style.display = "block";
    bgOverAccount.style.display = "block";
};
btnExitSiderBar.onclick = function () {
    youExitAccount.style.display = "block";
    bgOverAccount.style.display = "block";
};
const btnExitAccNo = document.getElementById("btn-cancel-account");
const btnAccAccept = document.getElementById("btn-accept-account");
btnExitAccNo.onclick = function () {
    youExitAccount.style.display = "none";
    bgOverAccount.style.display = "none";
};
btnAccAccept.onclick = function () {
    sessionStorage.setItem("icAccount", "none");
    sessionStorage.setItem("linkSignIn", "block");
};


