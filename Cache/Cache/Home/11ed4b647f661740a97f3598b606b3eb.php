<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta name="viewport"
          content="width=device-width, user-scalable=no,
          initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>

    <meta name="keywords" content="<?php echo ($seo_keywords); ?>"/>
    <meta name="description" content="<?php echo ($seo_description); ?>"/>
    <title><?php if(MODULE_NAME != 'Index') : echo ($seo_title); else : echo ($site_name); endif;?></title>

    <!-- css -->
    <link rel="stylesheet" href="__PUBLIC__/wap/css/swiper-4.5.0.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/bootstrap.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/jquery.mmenu.all.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/animate.min.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/reset.css">
    <link rel="stylesheet" href="__PUBLIC__/wap/css/main.css">
</head>
<body>

<!-- 中间内容 -->
    <!--轮播图-->
    <div class="index">
        <div class="top_img">
            <img src="__PUBLIC__/wap/images/top_img.jpg" alt="" />
        </div>
    </div>
    <!--首页产品列表-->
    <div class="index_content" style="padding-top:30px;">
        <div class="contact_2">
            <h6 style="margin-bottom: 1px;text-align: center">Thanks for your inquiry!</h6>
            <p>Our Professional Team Will Contact With You In 24 Hours.</p>
        </div>
        
<!--        <div class="contact_3">
            <iframe src="http://www.google.cn/maps/embed?pb=!1m18!1m12!1m3!1d3677.8552198953444!2d113.23522731543332!3d22.807827985062172!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340248e1962a1313%3A0x32246cb8177d4ac2!2z5bm_5Lic55yB5L2b5bGx5biC6aG65b635Yy66L-e5a6J57q_!5e0!3m2!1szh-CN!2scn!4v1539765743992" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>-->
    </div>
</body>
<!-- js -->
<script type="text/javascript" src="__PUBLIC__/wap/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/wap/swiper-4.5.0.min.js"></script>
<!-- <script type="text/javascript" src="__PUBLIC__/wap/bootstrap.min.js"></script> -->
<script type="text/javascript" src="__PUBLIC__/wap/wow.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/wap/main.js"></script>

</html>