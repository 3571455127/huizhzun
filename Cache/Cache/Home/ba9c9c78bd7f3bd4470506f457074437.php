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
            src: url('__PUBLIC__/wap/css/font/SourceHanSansCN-Regular.otf');

        }
    </style>
    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();
        (function () {
            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = 'https://embed.tawk.to/5e5758b0a89cda5a18882ac2/default';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>
    <!--End of Tawk.to Script-->
</head>

<body>


    <div class="index">
        <!-- banner 轮播 -->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                    <?php  $_result=M("slide_data")->field("*")->where("fid = 2 AND status=1 ")->order("id desc")->limit("5")->select();; if ($_result): $n=0;foreach($_result as $key=>$r):++$n;$mod = ($n % 2 );?><div class="swiper-slide">
                    <img src="<?php echo ($r["pic"]); ?>" alt="<?php echo ($r["title"]); ?>">
                    <a href="#contact" class="btn-contact"></a>
                </div><?php endforeach; endif;?> 

            </div>
            <div class="swiper-pagination"></div>
        </div>

        <!-- application -->
        <div class="application">
<?php getcatvar('page','id = 74','pcont');?>
        </div>

        <!-- advantages -->
        <div class="advantages">
            <?php getcatvar('page','id = 108','pcont');?>
        </div>

        <!-- principle -->
        <div class="principle">
            <?php getcatvar('page','id = 78','pcont');?>
        </div>


        <!-- parameters-->
        <div class="parameters">
            <?php getcatvar('page','id = 110','pcont');?>
        </div>


        <!-- Contact Us -->
        <div class="contact">
            <a name="contact"></a>
            <h3>Contact Us</h3>
            <form method="post" class="clearfix" onsubmit="return beforeSubmit2(this);" action="index.php?g=Home&a=message">
                <?php getcatvar('page','id = 111','pcont');?>
                <div class="btn-box">
                    <input type="submit" value="SUBMIT" class="submit-btn">
                </div>
            </form>
        </div>

        <!-- info -->
        <div class="info">
            <div class="box">
                <ul>
                    <li><span class="box-img"><img src="__PUBLIC__/wap/image/phone.png" alt=""> </span><?php echo ($phone); ?> </li>
                    <li> <span class="box-img"><img src="__PUBLIC__/wap/image/email.png" alt=""></span><?php echo ($email); ?> </li>
                    <li><span class="box-img"><img src="__PUBLIC__/wap/image/phone.png" alt=""></span><?php echo ($dianhua); ?></li>
                    <li> <span class="box-img"><img src="__PUBLIC__/wap/image/email.png" alt=""></span><?php echo ($emaila); ?></li>
                    <li> <span class="box-img"><img src="__PUBLIC__/wap/image/www.png" alt=""></span><?php echo ($gwdz); ?></li>
                </ul>
                <p></p>
            </div>
            <div class="copy"><?php echo ($cop); ?></div>
        </div>
    </div>



</body>
<!-- js -->
<script type="text/javascript" src="__PUBLIC__/wap/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/wap/js/swiper-4.5.0.min.js"></script>
<!-- <script type="text/javascript" src="__PUBLIC__/wap/bootstrap.min.js"></script> -->
<script type="text/javascript" src="__PUBLIC__/wap/js/wow.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/wap/js/main.js"></script>

</html>