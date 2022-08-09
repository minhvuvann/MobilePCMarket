$(function () {
    // "use strict";


    //sidebar menu js
    // $.sidebarMenu($('.sidebar-menu'));

    // === toggle-menu js
    $(".toggle-menu").on("click", function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });

    // === sidebar menu activation js

    $(function () {
        for (var i = window.location, o = $(".sidebar-menu a").filter(function () {
            return check(i.href, this.href);
        }).addClass("active").parent().addClass("active"); ;) {
            if (!o.is("li")) break;
            o = o.parent().addClass("in").parent().addClass("active");
        }
        ;
    });

    function check(a, b) {
        const data = ['upload','user', 'admin', 'order', 'dashboard', 'color', 'photo', 'delivery','insurance','inventory','slide','help'];
        for (const i of data) {
            if (a.indexOf(i) > -1 && b.indexOf(i) > -1) {
                return true;
            }
        }

        if (a.indexOf('Help') > -1 && b.indexOf('help') > -1) {
            return true;
        }

        if (a.indexOf('subcategory') > -1 && b.indexOf('subcategory') > -1) {
            return true;
        }

        if (a.indexOf('category') > 0 && b.indexOf('category') > 0) {
            if (a.indexOf('subcategory') < 0 && b.indexOf('subcategory') < 0) {
                return true;
            }
        }

        if (a.indexOf('image-product') > 0 && b.indexOf('image-product') > 0) {
            if (a.indexOf('product-detail') < 0 && b.indexOf('product-detail') < 0) {
                return true;
            }
        }

        if (a.indexOf('product-detail') > 0 && b.indexOf('product-detail') > 0) {
            return true;
        }

        if (a.indexOf('product-color') > 0 && b.indexOf('product-color') > 0) {
            return true;
        }

        if (a.indexOf('product') > 0 && b.indexOf('product') > 0) {
            if (a.indexOf('image-product') < 0 && b.indexOf('image-product') < 0 && a.indexOf('product-detail') < 0 && b.indexOf('product-detail') < 0 &&
                a.indexOf('product-color') < 0 && b.indexOf('product-color') < 0) {
                return true;
            }
        }

        return false;
    }


    /* Top Header */

    $(document).ready(function () {
        $(window).on("scroll", function () {
            if ($(this).scrollTop() > 60) {
                $('.topbar-nav .navbar').addClass('bg-dark');
            } else {
                $('.topbar-nav .navbar').removeClass('bg-dark');
            }
        });

    });


    /* Back To Top */

    $(document).ready(function () {
        $(window).on("scroll", function () {
            if ($(this).scrollTop() > 300) {
                $('.back-to-top').fadeIn();
            } else {
                $('.back-to-top').fadeOut();
            }
        });

        $('.back-to-top').on("click", function () {
            $("html, body").animate({scrollTop: 0}, 600);
            return false;
        });
    });


    $(function () {
        $('[data-toggle="popover"]').popover()
    })


    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

    //
    // // theme setting
    // $(".switcher-icon").on("click", function (e) {
    //   e.preventDefault();
    //   $(".right-sidebar").toggleClass("right-toggled");
    // });
    //
    // $('#theme1').click(theme1);
    // $('#theme2').click(theme2);
    // $('#theme3').click(theme3);
    // $('#theme4').click(theme4);
    // $('#theme5').click(theme5);
    // $('#theme6').click(theme6);
    // $('#theme7').click(theme7);
    // $('#theme8').click(theme8);
    // $('#theme9').click(theme9);
    // $('#theme10').click(theme10);
    // $('#theme11').click(theme11);
    // $('#theme12').click(theme12);
    // $('#theme13').click(theme13);
    // $('#theme14').click(theme14);
    // $('#theme15').click(theme15);
    //
    //
    // function theme1() {
    //   $('body').attr('class', 'bg-theme bg-theme1');
    // }
    // function theme2() {
    //   $('body').attr('class', 'bg-theme bg-theme2');
    // }
    //
    // function theme3() {
    //   $('body').attr('class', 'bg-theme bg-theme3');
    // }
    //
    // function theme4() {
    //   $('body').attr('class', 'bg-theme bg-theme4');
    // }
    //
    // function theme5() {
    //   $('body').attr('class', 'bg-theme bg-theme5');
    // }
    //
    // function theme6() {
    //   $('body').attr('class', 'bg-theme bg-theme6');
    // }
    //
    // function theme7() {
    //   $('body').attr('class', 'bg-theme bg-theme7');
    // }
    //
    // function theme8() {
    //   $('body').attr('class', 'bg-theme bg-theme8');
    // }
    //
    // function theme9() {
    //   $('body').attr('class', 'bg-theme bg-theme9');
    // }
    //
    // function theme10() {
    //   $('body').attr('class', 'bg-theme bg-theme10');
    // }
    //
    // function theme11() {
    //   $('body').attr('class', 'bg-theme bg-theme11');
    // }
    //
    // function theme12() {
    //   $('body').attr('class', 'bg-theme bg-theme12');
    // }
    //
    // function theme13() {
    //   $('body').attr('class', 'bg-theme bg-theme13');
    // }
    //
    // function theme14() {
    //   $('body').attr('class', 'bg-theme bg-theme14');
    // }
    //
    // function theme15() {
    //   $('body').attr('class', 'bg-theme bg-theme15');
    // }


});


function JSconfirm(id, value) {
    const href = $("#" + id).val();

    swal({
            title: "Warning!",
            text: value,
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes",
            cancelButtonText: "No",
            closeOnConfirm: true,
            closeOnCancel: true,
            charset: 'utf8'

        },

        function (isConfirm) {
            if (isConfirm) {
                $.ajax({
                    url: href,
                    type: 'POST',

                    data: {
                        id: id
                    },
                    success: function (responseText) {
                        console.log(responseText)
                        if (responseText === "done") {
                            $("#" + id + "tr").hide();

                        } else {

                        }
                    }
                });

            }
        });
}

function goback() {
    history.back();
}

function getCurrentPage() {
    const active = $(".pagination a").filter(function () {
        return $(this).attr("class") == 'active'
    })
    return active.text();
}

// tối ưu phần hiển thị phân trang
function collapsePage() {
    $(".pagination a").filter(function () {
        return $(this).attr("class") == 'more'
    }).remove();
    const tagA = $(".pagination a");
    const index =[0,1,tagA.length-2, tagA.length-1];
    let  active = 0;
    if(tagA.length > 7){

        for (let i = 0; i < tagA.length; i++) {
            if(tagA[i].getAttribute("class")== 'active'){
                index.push(i)
                active = i;
                break;
            }
        }
        index.sort((a,b)=>a-b);
        let index1 = 1000;
        let index2 = 0;
        for (let i = 2; i < tagA.length-2; i++) {
            if(active < 4){
                if(i < 6) {
                    $(tagA[i]).fadeIn()
                }else{
                    $(tagA[i]).hide()
                }
                if(i > index2)
                    index2 =i;
            }else{

                if(Math.abs(active - i) < 2){
                    $(tagA[i]).fadeIn()
                    if(i < index1)
                        index1 =i;
                }
                else{
                    $(tagA[i]).hide()
                    if(i > index2)
                        index2 =i;
                }
            }
        }
        if(index1 != 1000)
            $(tagA[index1]).before("<a class='more'>...</a>");
        if(index2 != 0 && index2 > active)
            $(tagA[index2]).after("<a class='more'>...</a>");
    }

}

