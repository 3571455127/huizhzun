
$(function () {

    // index
    var swiper = new Swiper('.index .swiper-container', {
        autoplay: true,
        loop: true,
        pagination: {
            el: '.index .swiper-pagination',
        },
    });

    // new WOW().init();


    // 返回顶部
    // $(window).scroll(function () {
    //     if ($(window).scrollTop() > 10) {
    //         $(".goTop").fadeIn(1000);

    //     } else {
    //         $(".goTop").fadeOut(1000);
    //     }
    // });
    // $(".goTop").click(function () {
    //     $("html,body").animate({
    //         scrollTop: 0
    //     }, 500);
    // });




})

var submitcount2 = 0;

function beforeSubmit2(form) {

    if (form.name.value == '') {
        alert('Name can not be empty');
        form.name.focus();
        return false;
    } else if (form.email.value == '') {
        alert('Please enter the correct email format');
        form.email.focus();
        return false;
    } else if (form.email.value.indexOf('@') < 0) {
        alert('The email is wrong');
        form.email.focus();
        return false;
    } else if (form.company.value == '') {
        alert('The company can not be empty');
        form.company.focus();
        return false;
    } else if (form.phone.value == '') {
        alert('The cellphone can not be empty');
        form.phone.focus();
        return false;
    } else if (form.phone.value.length < 5) {
        alert('The phone is wrong');
        form.phone.focus();
        return false;
    } else if (form.counntry.value == '') {
        alert('The country can not be empty');
        form.counntry.focus();
        return false;
    } else {

        if (submitcount2 == 0) {
            submitcount2++;
            return true;
        } else {
            alert("Message is being sent, please wait!");
            return false;

        }
    }

}




