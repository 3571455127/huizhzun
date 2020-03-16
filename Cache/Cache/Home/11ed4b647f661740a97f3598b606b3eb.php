<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, user-scalable=no,
          initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />

    <meta name="keywords" content="<?php echo ($seo_keywords); ?>" />
    <meta name="description" content="<?php echo ($seo_description); ?>" />
    <title><?php if(MODULE_NAME != 'Index') : echo ($seo_title); else : echo ($site_name); endif;?></title>

    <!-- css -->
    <link rel="stylesheet" href="__PUBLIC__/wap/css/swiper-4.5.0.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/bootstrap.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/jquery.mmenu.all.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/animate.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/reset.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/main.css">
    <style>
        @font-face {
            font-family: 'SourceHanSansCN';
            src: url('__PUBLIC__/wap/font/SourceHanSansCN-Regular.otf');

        }
    </style>

   <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-MNFHBRX');</script>
<!-- End Google Tag Manager --> 
</head>

<body>
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MNFHBRX"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<!-- 中间内容 -->
<!--轮播图-->
<!-- <div class="index">
    <div class="top_img">
        <img src="__PUBLIC__/wap/images/top_img.jpg" alt="" />
    </div>
</div> -->
<!--首页产品列表-->
<!-- <div class="index_content" style="padding-top:30px;background-color: #07aea1">
    <div class="contact_2">
        <h6 style="margin-bottom: 1px;text-align: center">Thanks for your inquiry!</h6>
        <p>Our Professional Team Will Contact With You In 24 Hours.</p>
    </div>

   
</div> -->


<div class="thank">
    <h5>Thanks for your inquiry!</h5>
    <p>Our Professional Team Will Contact With You In 24 Hours</p>
    <a class="link" href="/" onclick="history.go(-1)"><span id="sec">5</span>s Back Home</a>
    <img class="back" src="__PUBLIC__/www/images/back.png" alt="back" onclick="
                window.location = 'https://www.conprofetech.cn/'" />
</div>
<script type="text/javascript" src="__PUBLIC__/www/js/jquery-3.3.1.min.js"></script>
<script>
    $(function () {
        setTimeout("lazyGo();", 1000);
    });

    function lazyGo() {
        var sec = $("#sec").text();
        $("#sec").text(--sec);
        if (sec > 0)
            setTimeout("lazyGo();", 1000);
        else

            window.location = "https://www.conprofetech.cn/";
    }
</script>
</body>
<!-- js -->
<script type="text/javascript" src="__PUBLIC__/wap/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/wap/js/swiper-4.5.0.min.js"></script>
<!-- <script type="text/javascript" src="__PUBLIC__/wap/bootstrap.min.js"></script> -->
<script type="text/javascript" src="__PUBLIC__/wap/js/wow.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/wap/js/main.js"></script>

</html>