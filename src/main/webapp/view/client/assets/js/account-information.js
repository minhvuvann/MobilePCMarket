var container = document.querySelector(".cps-right-col");
var main = document.querySelector(".block-smember-info");
var blockSmemberInfo = document.querySelector(".block-smember-info");
var blockSmemRank = document.querySelector(".block-smem-rank");
var accountLink = document.getElementById("account-link");
var rankLink = document.getElementById("rank-link");

function toggleSidebar() {
    isShowingSidebar() ? hideSidebar() : showSidebar();
}

function showSidebar() {
    container.classList.add("show-sidebar");
}

function hideSidebar() {
    container.classList.remove("show-sidebar");
}

function isShowingSidebar() {
    return container.classList.contains("show-sidebar");
}

document
    .querySelector(".hamburger")
    .addEventListener("click", toggleSidebar, false);

container.addEventListener(
    "click",
    function (e) {
        if (isShowingSidebar() && main.contains(e.target)) {
            hideSidebar();
        }
    },
    true
);
