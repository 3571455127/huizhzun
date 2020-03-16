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

<!--面包屑导航-->
<div class="mianbao">
   <!--  <div class="mb_dao">
       <img src="__PUBLIC__/www/images/home-icon.png" alt="" onclick="window.open('http://<?php echo $_SERVER['HTTP_HOST']?>','_self');" />
       <a href="/about.html">About Us</a>
   </div> -->
</div>

<!--新产品列表部分-->
<div class="index_pro" style="margin-top: 150px">
    <div class="index_product" >
        <div class="pro_yi"style="background: #f7f7f7;">
            <h4 class="h4add">FACTORY<span></span></h4>
            <h4>HISTORY<span style="display: none;"></span></h4>
        </div>
        <div class="pro_er" style="box-shadow:none;padding: 50px 0;">
            <!--Factory内容-->
            <div class="Factory qie">
                <div class="Factory_top">
                    <img src="__PUBLIC__/www/images/abouta.jpg" alt="" />
                    <p>
                        GUANGDONG METAL FORMING MACHINE WORKS CO.,LTD is a forging equipment manufacturer integrating professional design, research and development, manufacturing and service in South China. Is the first batch of domestic forging industry through ISO9001 enterprises, and has the "national backbone enterprise for forging equipment" and "national export bases", "national high-tech enterprises", "Guangdong private technology enterprises", "National Torch Plan Foshan automatic machinery and equipment industry base backbone enterprises", "50 Guangdong Province equipment manufacturing backbone enterprises" more than ten honors.
                    </p>
                </div>
                <ul class="Factory_ul">
                    <li>
                        <img src="__PUBLIC__/www/images/history/about1.jpg" alt="" />
                        <p>
                            <span>
                                <i>1.</i>The leading products include high-precision servo control presses, high-performance mechanical presses, hydraulic presses and automatic transfer press lines. The main models are: GP2S series servo-controlled closed double-point precision presses, GDKS series servo-controlled toggle-type precision presses. Machine, YS series servo control hydraulic press, JH21 series open type fixed table press, JH25 series open double point press, J84 series toggle type precision press, GP2, GD2, STPP series closed double point press, G1L, G2L series closed single and double point multi-link presses; GY1, GY2, GY4 series hydraulic presses, etc.
                            </span>
                        </p>

                    </li>
                    <li>

                        <p>
                            <span>
                                <i>2.</i>The company's product quality is stable and reliable. The maximum nominal force of large mechanical presses can reach 20000kN, the maximum nominal force of large hydraulic presses can reach 100000kN, the maximum stroke speed of high-speed presses can reach 800 times/min, and the precision of precision presses can reach 0.01mm. The technical level of products is at the leading or advanced level in China, and some of them have reached the international advanced level. After technological innovation and technological transformation, the product structure has been developed in the direction of numerical control, high speed, precision, large scale and high efficiency. High-tech products account for 90% of the total sales revenue.
                            </span>
                        </p>
                        <img src="__PUBLIC__/www/images/history/about2.jpg" alt="" />
                    </li>
                    <li>
                        <img src="__PUBLIC__/www/images/history/about3.jpg" alt="" />
                        <p>
                            <span>
                                <i>3.</i>The company's product quality is stable and reliable. After more than 60 years of hard work, a complete sales network has been established. The products are centered on the Pearl River Delta and radiate across the country, and are sold to more than ten countries and regions such as Hong Kong, Indonesia, Japan, the Philippines, Malaysia, and the United States. Companies adhering to the "system management, meticulous manufacturing, quality service, create a famous brand" business purposes, positioning in the domestic first-class forging equipment manufacturing enterprises.
                            </span>
                        </p>
                    </li>
                    <li>

                        <p>
                            <span>
                                <i>4.</i>In the future development, the company will be committed to technological innovation, master the core technology of forging equipment, improve independent research and development capabilities, promote the development of forging industry, strive to shorten the gap with the world's advanced level, improve international competitiveness, and manufacture forging of first-class brands device.
                            </span>
                        </p>
                        <img src="__PUBLIC__/www/images/history/about4.jpg" alt="" />
                    </li>
                </ul>

            </div>
            <!--第二个产品列表-->
            <div class="History qie" style="display: none;">
                <div class="History1">
                    <div class="History_left">
                        <div class="kuai">
                            <img src="__PUBLIC__/www/images/history/h1.jpg"/>
                            <!--<div>
                                <h4>2015 - 2012</h4>
                                <p>Development history of Guangdong Forging Machine Tool Factory</p>
                            </div>-->
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
                            <!--<h4>2015</h4>
                            <p>▪ Realize modular design and production of large-scale presses; </p>
                            <p>▪ export of large-scale automated stamping equipment.</p>-->
							<img src="__PUBLIC__/www/images/history/001.jpg" alt="" />
                        </div>
                    </div>
                    <div class="History_left">

                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/002.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/003.jpg"/>
                        </div>

                    </div>
                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/004.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/005.jpg"/>
                        </div>

                    </div>						
                </div>
	
				
                <div class="History1 History2">
				
                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/007.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
					
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/008.jpg"/>
                        </div>

                    </div>
					
                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/009.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/010.jpg"/>
                        </div>
                    </div>
                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/011.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/012.jpg"/>
                        </div>
                    </div>					
                </div>
				
                <div class="History1">
                    <div class="History_left">
                        <div class="kuai">
                            <img src="__PUBLIC__/www/images/history/013.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/014.jpg"/>
                        </div>
                    </div>

                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/015.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
					
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/016.jpg"/>
                        </div>
                    </div>

 
					
                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/018.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
					
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/021.jpg"/>
                        </div>
					</div>
					
                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/022.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>
                    <div class="History_right">
                        <img src="__PUBLIC__/www/images/xian1.png" alt="" />
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/023.jpg"/>
                        </div>

                    </div>
					
                    <div class="History_left">
                        <div class="kuai">
							<img src="__PUBLIC__/www/images/history/024.jpg"/>
                        </div>
                        <img src="__PUBLIC__/www/images/xian.png" alt="" />
                    </div>

                </div>
            </div>

        </div>

    </div>

</div>
<!--顶部图片-->
<div class="top_img">
  <img src="__PUBLIC__/www/images/product_bander.jpg" alt="" />
</div>


</body>
<!-- js -->
<script type="text/javascript" src="__PUBLIC__/www/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/swiper-4.5.0.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/bootstrap.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/wow.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/www/js/main.js"></script>

</html>