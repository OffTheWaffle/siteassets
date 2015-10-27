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
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mystore/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/theme/mystore/jquery/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/mystore/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mystore/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/theme/mystore/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/theme/mystore/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mystore/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/mystore/js/custom/cufon-yui.js"></script>
<script type="text/javascript" src="catalog/view/theme/mystore/js/custom/bell-gothic_400.font.js"></script>
<script type="text/javascript">
//common
Cufon.replace('h1');Cufon.replace('h2');Cufon.replace('a');Cufon.replace('p');
//menu
Cufon.replace('#menu > ul > li > a')('.clsTopmnu a')('#menu > ul > li', { hover: true });
//cart
Cufon.replace('#header #cart .heading h4');Cufon.replace('#header #cart .heading a span');Cufon.replace('.box-heading');
//footer
Cufon.replace('#footer h3');Cufon.replace('#footer .column a');Cufon.replace('#powered');
//breadcrumb
Cufon.replace('.breadcrumb a');Cufon.replace('.content');
//category
Cufon.replace('.box-category > ul > li > a');Cufon.replace('.box-category > ul > li ul > li > a');
//checkout
Cufon.replace('.checkout-heading');Cufon.replace('.checkout-content .left');
//Shopping cart
Cufon.replace('.cart-info thead td');Cufon.replace('.cart-info tbody .name');Cufon.replace('.cart-info tbody .model');Cufon.replace('.cart-info tbody .price');Cufon.replace('.cart-info tbody .total');Cufon.replace('.cart-module .cart-heading');Cufon.replace('#shipping');Cufon.replace('#coupon');Cufon.replace('#voucher');Cufon.replace('.cart-total');Cufon.replace('#checkout h2');
//product page
Cufon.replace('#tab-review');Cufon.replace('#tab-description');Cufon.replace('#tab-content');
//checkout
Cufon.replace('.checkout-heading');
Cufon.replace('.content');
</script>			
<!--[if IE]>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
<![endif]--> 
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mystore/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/mystore/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>
<div id="topnav">
<div class="clsTopmnu">
 <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
 &nbsp;&nbsp;|&nbsp;&nbsp;<?php if (!$logged) { ?>
	 <a href="<?php $l=$home; $r=explode("?",$l); echo $r[0]; ?>?route=account/login">Login</a> 
 <?php } else { ?>
     <a href="<?php $l=$home; $r=explode("?",$l); echo $r[0]; ?>?route=account/logout">Logout</a>
	
    <?php } ?>
 </div>
 
<?php echo $currency; ?>
  <div id="search">
   
    <input type="text" class="search" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
    <div class="button-search"></div>
  </div>
</div>
</div>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
 
 <div class="LogoRight">
  <?php echo $cart; ?>
  <?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
 <!-- <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>-->
  </div>
</div>

<div id="notification"></div>
