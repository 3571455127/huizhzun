<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TNMWNT9');</script>
<!-- End Google Tag Manager -->
    <meta charset="UTF-8">

    <meta name="keywords" content="<?php echo ($seo_keywords); ?>"/>
    <meta name="description" content="<?php echo ($seo_description); ?>"/>
    <title><?php if(MODULE_NAME != 'Index') : echo ($seo_title); else : echo ($site_name); endif;?></title>

     <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
     <meta name="renderer" content="webkit">
     <meta name="viewport" content="width=device-width,initial-scale=1.0" />

    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <!-- css-->
    <link rel="stylesheet" href="__PUBLIC__/www/css/bootstrap.min.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/animate.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/swiper.min.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/comment.css">
    <link rel="stylesheet" href="__PUBLIC__/www/css/main.css">
</head>
<body>

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TNMWNT9"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<!--顶部导航-->
<header>
    <div class="header1 header2" >
        <img src="__PUBLIC__/www/images/logo.png" alt="" />
        <!--当前页面给a标签添加属性.active-->
        <ul>
            <li>
                <a class="<?php if(MODULE_NAME == 'Index') : ?>active<?php endif;?>" href="/index.php">HOME</a>
            </li>
            <?php $n=0;foreach($Categorys as $key=>$r):if($n<7) :if( intval(0)==$r["parentid"] ) :++$n; if($r[catname] != 'THANKS' ): ?><li>
                <a href="<?php echo ($r["url"]); ?>" class="<?php if($bcid==$r[id]) : ?>active<?php endif;?>"><?php echo ($r["catname"]); ?></a>
                <?php if($r[child] == 1 && $r[id] !=74) : ?>
                <ul class="erji">
                    <?php $n=0;foreach($Categorys as $key=>$res):if($n<99) :if( intval($r[id])==$res["parentid"] ) :++$n;?><li><a href="<?php echo ($res["url"]); ?>" class="<?php if($catid==$res[id]) : ?>active<?php endif;?>"><?php echo ($res["catname"]); ?></a></li><?php endif; endif; endforeach;?>
                </ul>
                <?php endif;?>
            </li><?php endif; endif; endif; endforeach;?>
        </ul>
    </div>
    <div class="header"style="display: none;">
        <div class="header1">
            <img src="__PUBLIC__/www/images/logo.png" alt="" />
            <!--当前页面给a标签添加属性.active-->
            <ul>
                <li>
                    <a class="<?php if(MODULE_NAME == 'Index') : ?>active<?php endif;?>" href="/index.php">HOME</a>
                </li>
                <?php $n=0;foreach($Categorys as $key=>$r):if($n<99) :if( intval(0)==$r["parentid"] ) :++$n; if($r[catname] != 'THANKS' ): ?><li>
                    <a href="<?php echo ($r["url"]); ?>" class="<?php if($bcid==$r[id]) : ?>active<?php endif;?>"><?php echo ($r["catname"]); ?></a>
                    <?php if($r[child] == 1) : ?>
                    <ul class="erji">
                        <?php $n=0;foreach($Categorys as $key=>$res):if($n<99) :if( intval($r[id])==$res["parentid"] ) :++$n;?><li><a href="<?php echo ($res["url"]); ?>" class="<?php if($catid==$res[id]) : ?>active<?php endif;?>"><?php echo ($res["catname"]); ?></a></li><?php endif; endif; endforeach;?>
                    </ul>
                    <?php endif;?>
                </li><?php endif; endif; endif; endforeach;?>
            </ul>
        </div>
    </div>

</header>

<!--轮播图-->
<div class="index">
    <div class="swiper-container swiper-container1">
        <div class="swiper-wrapper">
            <?php  $_result=M('Slide_data')->where(" status=1 and  fid=1 ")->order(" listorder ASC ,id DESC ")->limit("5")->select();;if ($_result): $i=0;foreach($_result as $key=>$r):$i++;$mod = ($i % 2 );parse_str($r['data'],$r['param']);?>
<div class="swiper-slide"><img src="<?php echo ($r["pic"]); ?>" alt=""></div>
<?php endforeach; endif;?>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination swiper-pagination-white"></div>

        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>

    </div>
</div>


<!--关于我们-->
<div class="index_us" style="background: #f4f4f4;margin-top: 70px">
  <div class="index_us_yi">
    <div>
      <h4>WHY CHOOSE US</h4>
      <p>
      <?php getcatvar('page','id = 74','cont'); getcatvar('page','id = 74','pcont');?>
      </p>
    </div>
  </div>
  <div class="index_us_er">
    <div>
      <img src="__PUBLIC__/www/images/about.jpg" alt="" />
    </div>
    <div>
      <h4>ABOUT US</h4>
      <p>GUANGDONG METAL FORMING MACHINE WORKS CO.,LTD is a forging equipment manufacturer integrating professional design, research and development, manufacturing and service in South China. Is the first batch of domestic forging industry through ISO9001 enterprises, and has the "national backbone enterprise for forging equipment" and "national export bases", "national high-tech enterprises" more than ten honors.</p>
    </div>
    <p style="clear: both;"></p>
    <a class="more" href="/about.html">VIEW MORE</a>
  </div>
</div>



<!--新产品列表部分-->
<div class="index_pro" style="padding-top:0">
  <h4 class="biaoti">PRODUCTS</h4>
  <div class="index_product">
    <div class="pro_yi">
      <h4 class="h4add"><?php echo ($Categorys[94][catname]); ?><span></span></h4>
      <h4><?php echo ($Categorys[95][catname]); ?><span style="display: none;"></span></h4>
    </div>
    <div class="pro_er">
      <!--第一个产品列表-->
      <ul class="qie">
        
      </ul>

      <!--第二个产品列表-->
      <ul style="display: none;" class="qie">
        
      </ul>
    </div>
    <a class="more" href="/product.html">VIEW MORE</a>
  </div>

</div>





<!--案例-->
<div class="index_case">
    <h4 class="biaoti">CASES</h4>
    <ul>
        
    </ul>
    <a class="more" href="/cases.html">VIEW MORE</a>
</div>

<!--view部分-->
<div class="index_view">
    <h4 class="biaoti" style="color: #fff;">NEWS</h4>
    <ul>
        <?php  $_result=M("Page")->field("id,catid,url,title,title_style,keywords,description,thumb,createtime")->where(" 1  AND status=1  AND catid=108")->order("id desc")->limit("3")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><li>
            <a href="<?php echo ($r["url"]); ?>">
            <img src="<?php echo ($r["thumb"]); ?>" alt="" />
            <div>
                <span><?php echo (todate($r["createtime"],'Y-m-d')); ?></span>
                <h4><?php echo ($r["title"]); ?></h4>
                <p><?php echo ($r["description"]); ?></p>
            </div>
            </a>
        </li><?php endforeach; endif;?>
    </ul>
    <a class="more2" href="/news.html">VIEW MORE</a>
</div>

<!--foote部分-->
<div class="footer_top">
    <div><img src="__PUBLIC__/www/images/logo.png" alt="" /></div>
    <div>
    <?php $n=0;foreach($Categorys as $key=>$r):if($n<99) :if( intval(0)==$r["parentid"] ) :++$n; if($r[catname] != 'THANKS' ): ?><a href="<?php echo ($r["url"]); ?>"><?php echo ($r["catname"]); ?></a><?php endif; endif; endif; endforeach;?>
    </div>
    <div class="footer_img">
        <!--<div><img src="__PUBLIC__/www/images/index_icon1.png" alt="" /></div>-->
        <div><a href="<?php echo ($twitter); ?>" target='_BLANK'><img src="__PUBLIC__/www/images/index_icon2.png" alt="" /></a></div>
        <div><a href="<?php echo ($google); ?>" target='_BLANK'><img src="__PUBLIC__/www/images/index_icon3.png" alt="" /></a></div>
        <div><a href="<?php echo ($facebook); ?>" target='_BLANK'><img src="__PUBLIC__/www/images/index_icon4.png" alt="" /></a></div>
        <div><a href="<?php echo ($youtube); ?>" target='_BLANK'><img src="__PUBLIC__/www/images/index_icon5.png" alt="" /></a></div>
        <div><a href="<?php echo ($ins); ?>" target='_BLANK'><img src="__PUBLIC__/www/images/index_icon6.png" alt="" /></a></div>
    </div>
</div>
<div class="footer">
<?php echo ($cop); ?>
</div>
<!--TOP键-->
<img src="__PUBLIC__/www/images/top.png" alt="" class="top_index">
<!--Inquire Now-->
<div class="float-form">
    <div class="show-btn" style="display: block;">
        INQUIRE NOW!
    </div>
    <div class="show-form" style="display: none; ">
        <span class="X">X</span>
        <h3>CONTACT US</h3>
        <form name="form" method="post" action="index.php?g=Home&a=message" id="tan_form" enctype="multipart/form-data">
            <input name="forward" type="hidden" value="<?php echo ($_SERVER['SERVER_NAME']); if($catid) : ?>/index.php?m=<?php echo ($Categorys[$catid]['module']); ?>&a=index&id=<?php echo ($catid); else :?>/index.php<?php endif;?>"/>
            <input type="text" name="name" id="name_tan" placeholder="name">
            <input type="text" name="phone" id="phone_tan" placeholder="Phone">
            <input type="text" name="email" id="mail_tan" placeholder="Email">
             <!--<input type="file" name="files" />-->
            <textarea name="message" id="message_tan" placeholder="Your Message"></textarea>
            <input id="form_submit" type="submit" class="index_send" value="SUBMIT">
        </form>
    </div>
</div>
</body>
<script src='__PUBLIC__/www/js/jquery-2.2.0.min.js'></script>
<script src='__PUBLIC__/www/js/bootstrap.min.js'></script>
<script src='__PUBLIC__/www/js/swiper.min.js'></script>
<script src='__PUBLIC__/www/js/wow.min.js'></script>
<script src='__PUBLIC__/www/js/main.js'></script>
<script type="text/javascript">
//导航栏的切换
     $(window).scroll(function () {
                var h = $(window).scrollTop();
                if(h > 200){
                    $('.header2').fadeOut();
                    $('.header').fadeIn();
                }else{
                    $('.header').fadeOut();
                    $('.header2').fadeIn();
                }
          });

</script>
<script>
    $('.detail_Specification img').eq(0).click(function(){
        var path1=$(".detail_Specification img").eq(0).attr("src");
        var url1 = 'http://<?php echo $_SERVER["HTTP_HOST"]?>'+path1;
        window.open(url1,'_blank');
    });

    $('.detail_Specification img').eq(1).click(function(){
        var path2=$(".detail_Specification img").eq(1).attr("src");
        var url2 = 'http://<?php echo $_SERVER["HTTP_HOST"]?>'+path2;
        window.open(url2,'_blank');
    });
</script>
</html>