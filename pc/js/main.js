
$(function () {

    // index
    var swiper = new Swiper('.index .swiper-container', {
        autoplay: true,
        loop: true,
        pagination: {
            el: '.index .swiper-pagination',
        },
        navigation: {
            nextEl: '.index .swiper-button-next',
            prevEl: '.index .swiper-button-prev',
        },
    });

    // new WOW().init();


    // 返回顶部
    $(window).scroll(function () {
        if ($(window).scrollTop() > 10) {
            $(".goTop").fadeIn(1000);

        } else {
            $(".goTop").fadeOut(1000);
        }
    });
    $(".goTop").click(function () {
        $("html,body").animate({
            scrollTop: 0
        }, 500);
    });




})



