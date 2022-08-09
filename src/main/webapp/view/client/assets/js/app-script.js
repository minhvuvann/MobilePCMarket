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





});


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

