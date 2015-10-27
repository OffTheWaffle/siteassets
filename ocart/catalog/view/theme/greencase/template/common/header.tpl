<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/greencase/css/style.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
	<script type="text/javascript" src="catalog/view/theme/greencase/js/jquery.min.js"></script>
    	<script type="text/javascript" src="catalog/view/theme/greencase/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="catalog/view/theme/greencase/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/greencase/fancybox/jquery.fancybox-1.3.4.css" media="screen" />

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
	<script type="text/javascript" src="catalog/view/theme/greencase/js/custom.js"></script>
<!--[if lte IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/greencase/css/ie.css" />	    
<![endif]-->

<?php echo $google_analytics; ?>
</head>
<body>

<div id="wapper">
	<div id="head">
    <?php if ($logo) { ?>
		<div id="logo">
        <a href="<?php echo $home; ?>">
        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
        </a>
        </div>
     <?php } ?>     
   

        <div id="textwelcome">
        <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
        <?php } else { ?>
        <?php echo $text_logged; ?>
        <?php } ?>
        </div>			
        <div id="cartitem">
		<img src="catalog/view/theme/greencase/img/img_cart.png"  /> <div id="totalitem"> <?php echo $text_items; ?></div>
        </div>   
        
	</div>	



 	<div id="navsearch">   
 		<div id="sublinks">
        <ul>
        <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a></li>

        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
        <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
        </ul>
        
        </div>   
 
    <?php if (count($currencies) > 1) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="currency">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['code'] == $currency_code) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?></b></a>
      <?php } else { ?>
      <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b></a>
      <?php } ?>
      <?php } else { ?>
      <?php if ($currency['symbol_left']) { ?>
      <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_left']; ?></a>
      <?php } else { ?>
      <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_right']; ?></a>
      <?php } ?>
      <?php } ?>
      <?php } ?>
      <input type="hidden" name="currency_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
  </form>
  <?php } ?> 
 
    
    
    	<div id="formsearch">
        
            <div id="inputsr">
                <?php if ($filter_name) { ?>
                
               <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
        <?php } else { ?>
        <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
        <?php } ?>      
            </div>     
        <div class="searchbut" id="searchitem"></div> 
        
        </div>
        
  <!--   	<div id="cartitem">
		<b><?php echo $text_cart; ?> : &nbsp;  <div id="totalitem"> <?php echo $text_items; ?></div></b>
        </div>   	-->
    </div>


