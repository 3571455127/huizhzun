<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html>
<head>
<title><?php echo L('message_title');?></title>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo C('DEFAULT_CHARSET');?>">
<meta http-equiv='Refresh' content='<?php echo ($waitSecond); ?>;URL=<?php echo ($jumpUrl); ?>'>
<link rel="stylesheet" type="text/css" href="__PUBLIC__/Css/style.css" />
</head>
<body>
<style>
.show_Msg{
    border: 1px solid #e8e8e8;
    border-radius: 2px;
	width:90%;
	margin:auto;
	margin-top: 500px;
	

    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.10), 0 1px 3px rgba(0, 0, 0, 0.16);}
.show_Msg h5 {
    background: #1caf9a;
    color: #fff;
    height: 60px;
    line-height: 60px;
    overflow: hidden;
    margin: 0 -1px;
    font-size: 32px;
    text-align: center;
}
.content{
height: 200px;
line-height:200px;

}
.show_Msg a:link, .show_Msg a:visited {
    text-decoration: none;
    color: #1caf9a;
}	
	
</style>
<!--<?php echo ($msgTitle); ?> -->
<div class="show_Msg" style="text-align:center; font-size:36px;">
	<h5><?php echo L('message_title');?></h5>
    <div class="content guery" style="display:inline-block;display:-moz-inline-stack;zoom:1;*display:inline; max-width:90%;font-size:36px;""><?php echo ($message); ?> <?php echo ($error); ?></div>
    <div class="bottom" style="font-size:36px;">
	<?php if(isset($closeWin)): echo L('msg_system_1');?> <span style="font-weight:bold"><?php echo ($waitSecond); ?></span> <?php echo L('msg_system_2');?> <a href="<?php echo ($jumpUrl); ?>"><?php echo L('close');?></a> <?php echo L('click_this'); endif; ?>
	<?php if(!isset($closeWin)): echo L('msg_system_1');?> <span style="font-weight:bold"><?php echo ($waitSecond); ?></span> <?php echo L('msg_system_2');?> <a href="<?php echo ($jumpUrl); ?>"><?php echo L('click_this');?></a> <?php echo L('jump'); endif; ?>
	</div>

<?php if ($dialog || $error):?>
<script type="text/javascript" src="./Public/Js/jquery.min.js"></script>
<script type="text/javascript" src="./Public/Js/jquery.artDialog.js?skin=default"></script>
<script type="text/javascript" src="./Public/Js/iframeTools.js"></script>
<script type="text/javascript" src="./Public/Js/my.js"></script>
<script type="text/javascript" src="./Public/Js/swfupload.js"></script>
<script style="text/javascript">
 setTimeout(function(){
 <?php if ($jumpUrl!=1):?>art.dialog.open.origin.location.href='<?php echo ($jumpUrl); ?>';<?php endif;?>
 art.dialog.close();
 },<?php echo $waitSecond*1000;?>);
</script>
<?php endif;?>

<?php if ($script):?>
<script style="text/javascript"><?php echo ($script); ?></script>
<?php endif;?>

</div>
</body>
</html>