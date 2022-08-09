const formOrder = document.getElementById("order-form");

formOrder.addEventListener("input", (e) => {
    validateInformationOrder();
});
formOrder.addEventListener("select", (e) => {
    validateInformationOrder();
});

function validateInformationOrder() {
    const fullNameCustomer = document.getElementById("fullNameCustomer");
    const telephoneCustomer = document.getElementById("telephoneCustomer");
    const calc_shipping_provinces = document.getElementById("calc_shipping_provinces");
    const calc_shipping_district = document.getElementById("calc_shipping_district");
    const calc_shipping_ward = document.getElementById("calc_shipping_ward");
    const calc_shipping_detail_address = document.getElementById("calc_shipping_detail_address");

    if (fullNameCustomer.value.trim() == "" || telephoneCustomer.value.trim() == "" ||
        calc_shipping_provinces.value.trim() == "" || calc_shipping_district.value.trim() == "" ||
        calc_shipping_ward.value.trim() == "" || calc_shipping_detail_address.value.trim() == "") {
        if (fullNameCustomer.value.trim() == "") {
            setErrorFor(fullNameCustomer, "Vui lòng nhập họ và tên");
        } else {
            setSuccess(fullNameCustomer);
        }
        if (telephoneCustomer.value.trim() == "") {
            setErrorFor(telephoneCustomer, "Vui lòng nhập số điện thoại");
        } else {
            setSuccess(telephoneCustomer);

        }
        if (calc_shipping_ward.value.trim() == "") {
            setErrorFor(calc_shipping_ward, "Vui lòng chọn phường xã");
        } else {
            setSuccess(calc_shipping_ward);

        }
        if (calc_shipping_detail_address.value.trim() == "") {
            setErrorFor(calc_shipping_detail_address, "Vui lòng nhập địa chỉ");
        } else {
            setSuccess(calc_shipping_detail_address);

        }
        if (calc_shipping_provinces.value.trim() == "") {
            setErrorFor(calc_shipping_provinces, "Vui lòng chọn tỉnh thành phố");
        } else {
            setSuccess(calc_shipping_provinces);

        }
        if (calc_shipping_district.value.trim() == "") {
            setErrorFor(calc_shipping_district, "Vui lòng chọn quận huyện");
        } else {
            setSuccess(calc_shipping_district);

        }

    } else {
        setSuccess(fullNameCustomer);
        setSuccess(telephoneCustomer);
        setSuccess(calc_shipping_ward);
        setSuccess(calc_shipping_detail_address);
        setSuccess(calc_shipping_provinces);
        setSuccess(calc_shipping_district);

        formOrder.onsubmit = function () {
            return true;
        };
    }

}


//kiểm tra value khi sai
function setErrorFor(input, message) {
    const formGroup = input.parentElement;
    const small = formGroup.querySelector("small");
    formGroup.className = "form-group error";
    small.innerText = message;
}

// kiểm tra value khi đúng
function setSuccess(input) {
    const formGroup = input.parentElement;
    const small = formGroup.querySelector("small");
    formGroup.className = "form-group success";
    small.innerText = "";
}

