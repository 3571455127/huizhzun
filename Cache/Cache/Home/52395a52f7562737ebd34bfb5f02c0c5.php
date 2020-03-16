<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="<?php echo ($seo_keywords); ?>" />
    <meta name="description" content="<?php echo ($seo_description); ?>" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <title><?php if(MODULE_NAME != 'Index') : echo ($seo_title); else : echo ($site_name); endif;?></title>

    <!-- css -->
    <link rel="stylesheet" href="__PUBLIC__/www/css/swiper-4.5.0.min.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/bootstrap.min.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/animate.min.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/reset.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/main.css">
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
<script>
     function IsPC() {
          var userAgentInfo = navigator.userAgent;
          var Agents = ["Android", "iPhone",
                      "SymbianOS", "Windows Phone",
                      "iPad", "iPod"];
          var flag = true;
          for (var v = 0; v < Agents.length; v++) {
              if (userAgentInfo.indexOf(Agents[v]) > 0) {
                  flag = false;
                 break;
             }
         }
         return flag;
      }
      var isp = IsPC();
      if(!isp){
            window.location.href="/mobile.php";
      }
</script>
</head>

<body>
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MNFHBRX"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!--顶部图片-->
<div class="container-fluid" style="padding: 0">
    <div class="row" style="margin: 0;">
        <div class="col-xs-12" style="padding: 0;">
            <?php if($Categorys[$bcid][image]) : ?><img src="<?php echo ($Categorys[$bcid][image]); ?>" alt="banner"><?php else :?> <img src="__PUBLIC__/www/image/productTopBg.jpg" alt="" class="img-responsive"/><?php endif;?>
        </div>
    </div>
</div>

<div style="background: #efefef">

    <div class="container">
        <!--标题-->
        <div class="row" style="margin: 3% 0">
            <!-- 标题-->
            <div class="col-xs-12">
                <div class="row">
                    <div class="col-xs-4" style="padding: 0">
                        <span><img src="__PUBLIC__/www/image/productH.png" alt=""/></span>
                        <span style="font-size: 23px;color: #000;position: relative;top: 5px;font-family: Bold;">PRODUCTS-><?php echo ($catname); ?></span>
                    </div>
                    <!--面包屑-->
                    <div class="col-xs-8 text-right" style="padding-top: 10px">
                        <span style="padding-right: 5px"><img src="__PUBLIC__/www/image/productM.png" alt=""/></span>
                        <span style="color: #666;font-size: 14px">You Location：
                            <a href="index.php">Home</a> -<?php  $arrparentid = array_filter(explode(',', $Categorys[$catid]['arrparentid'].','.$catid));foreach($arrparentid as $cid):$parsestr[] = '<a href="'.$Categorys[$cid]['url'].'">'.$Categorys[$cid]['catname'].'</a>'; endforeach;echo implode(" - ",$parsestr);?>
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <!-- 二级分类标题-->
        <!--div class="row productTwoClick">
            <ul class="col-xs-12 list-inline wow zoomInLeft">
                 <?php if($child==1) : ?>
                 <?php $n=0;foreach($Categorys as $key=>$r):if($n<99) :if( intval(111)==$r["parentid"] ) :++$n;?><li <?php if($catid==$r[id]) : ?>class="proactive"<?php endif;?>><a href="<?php echo ($r["url"]); ?>"><?php echo ($r["catname"]); ?></a></li><?php endif; endif; endforeach;?>
                  <?php else :?>
                  <?php $n=0;foreach($Categorys as $key=>$r):if($n<99) :if( intval(0)==$r["parentid"] ) :++$n;?><li <?php if($catid==$r[id]) : ?>class="proactive"<?php endif;?>><a href="<?php echo ($r["url"]); ?>"><?php echo ($r["catname"]); ?></a></li><?php endif; endif; endforeach;?>
                 <?php endif;?>
            </ul>
        </div-->
        
         
         
        <!-- 产品列表-->
        <div class="row" style="margin-top: 3%">
        
            <?php $n=0;foreach($Categorys as $key=>$r):if($n<99) :if( intval(73)==$r["parentid"] ) :++$n;?><div class="col-xs-3 text-center productList">
                <!-- 产品标题-->
                <h2><?php echo ($r["catname"]); ?></h2>
                <!-- 产品图片-->
                <p class="productListP">
                       <a href="<?php echo ($r["url"]); ?>"><img src="<?php echo ($r["image"]); ?>" alt="<?php echo ($r["catname"]); ?>"/></a>
                        
                    
                </p>
            </div><?php endif; endif; endforeach;?>

        </div>


        <!-- 分页按钮-->
        <div class="row" style="margin: 3% 0 5% 0">
            <div class="col-xs-12 text-center pagingClick">
                <?php echo ($pages); ?>
            </div>
        </div>
    </div>
</div>



</body>
<!-- js -->
<script type="text/javascript" src="__PUBLIC__/www/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/swiper-4.5.0.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/bootstrap.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/wow.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/main.js"></script>

</html>