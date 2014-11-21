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
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopcart/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopcart/stylesheet/grid960.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopcart/stylesheet/colors.css" />

<link href='//fonts.googleapis.com/css?family=Brawler' rel='stylesheet' type='text/css'>
<?php if( $this->config->get('shopcart_font') != 'Arial' || $this->config->get('shopcart_font') != 'Trebuchet MS'){	
	?>
	<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('shopcart_font') ?>&v1' rel='stylesheet' type='text/css'>
	<?php } ?>
	
	  <?php 
  if ($this->config->get('google_body_font') == '1') {
  	?>
  	 <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('google_body_font2') ?>&v1' rel='stylesheet' type='text/css'>
  	<?php   } ?>
	
	
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/ui-lightness/jquery-ui.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/shopcart/js/custom.js"></script>

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopcart/stylesheet/ie7.css" />
<![endif]-->


<?php echo $google_analytics; ?>

<?php 

/*

shopCart theme options

*/

if($this->config->get('shopcart_status') == '1'){
	
	// custom styling enabled
	?>
	
	<style type="text/css">
	
	body, #footer-top-outside h2, #footer h3, .box-category > ul > li > a, .product-compare a, .product-list .name a, .product-list .name a:visited, .category_name a, .category_name a:visited,
.htabs a.selected, .attribute thead td, .attribute thead tr td:first-child, .product-filter .sort 
 {
  	color: #<?php echo $this->config->get('shopcart_color_a') ?>; 
}

#footer-top-outside li, #footer-top-outside p, #powered #powered_text, #header #cart .cart, #header #cart table.total, body, #breadcrumbs a, #menu > ul > li ul > li > a, 
#menu > ul > li > div > ul > li > a, .wishlist a,  .compare a, .product-info .cart #options a, .rating, .product-info .description a, .product-info .cart div > span, .product-info .cart .minimum 

{
color: #<?php echo $this->config->get('shopcart_color_b') ?>; 
}


#column-left .box .box-heading, .box-category > ul > li a.active, .tab-content  #date_added {

color: #<?php echo $this->config->get('shopcart_color_c') ?>;

}

a, a:visited, a b, #header #cart .heading a span, .product-info .right h1, .cart-total table tr:last-child td, 
div#menu ul li div ul li a:hover
 {
color: #<?php echo $this->config->get('shopcart_links_a_color') ?>;
}

h1, .welcome, h3, h2, .box-product .name a, .product-grid .name a, .pagination .links a {
color: #<?php echo $this->config->get('shopcart_links_b_color') ?>;
}

a:hover, a:visited:hover, #welcome a:hover, #header .links a:hover, #breadcrumbs a:hover {
color: #<?php echo $this->config->get('shopcart_links_hover_color') ?>;
}
  
#menu > ul > li > a, #header .links a, #header #cart .cart td a, #welcome, #menu > ul > li:hover ul li a {
color: #<?php echo $this->config->get('shopcart_menu_links_color') ?>;
}
  
#menu > ul > li:hover {
background-color: #<?php echo $this->config->get('shopcart_menu_bg_color') ?>;
}

#top_container, #powered {
background-color: #<?php echo $this->config->get('shopcart_top_bg_color') ?>;
}

#header #header_bottom {
border-color: #<?php echo $this->config->get('shopcart_top_menu_bg') ?>;
background-color: #<?php echo $this->config->get('shopcart_top_menu_bg') ?>;
}

#breadcrumbs {
	background-color: #<?php echo $this->config->get('shopcart_breadcrumbs_bg_color') ?>;
}

#footer-top-outside, #footer-border {
	background-color:#<?php echo $this->config->get('shopcart_footer_bg_color') ?>;
	}

a.button, a.button:visited {
/* shopcart_button_normal_a */
/* shopcart_button_normal_b */

	
color: #<?php echo $this->config->get('shopcart_button_text_color') ?>;
background: #<?php echo $this->config->get('shopcart_button_normal_a') ?>; /* Old browsers */
background: -moz-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_normal_a') ?> 0%, #<?php echo $this->config->get('shopcart_button_normal_b') ?> 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $this->config->get('shopcart_button_normal_a') ?>), color-stop(100%,#<?php echo $this->config->get('shopcart_button_normal_b') ?>)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_normal_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_normal_b') ?> 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_normal_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_normal_b') ?> 100%); /* Opera11.10+ */
background: -ms-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_normal_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_normal_b') ?> 100%); /* IE10+ */
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#<?php echo $this->config->get('shopcart_button_normal_a') ?>, endColorstr=#<?php echo $this->config->get('shopcart_button_normal_b') ?>,GradientType=0 ); /* IE6-9 */
background: linear-gradient(top, #<?php echo $this->config->get('shopcart_button_normal_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_normal_b') ?> 100%); /* W3C */
}


a.button:hover {
/* shopcart_button_hover_a */
/* shopcart_button_hover_b */


	
color: #<?php echo $this->config->get('shopcart_button_text_color_hover') ?>;
background: #<?php echo $this->config->get('shopcart_button_hover_a') ?>; /* Old browsers */
background: -moz-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_hover_a') ?> 0%, #<?php echo $this->config->get('shopcart_button_hover_b') ?> 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $this->config->get('shopcart_button_hover_a') ?>), color-stop(100%,#<?php echo $this->config->get('shopcart_button_hover_b') ?>)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_hover_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_hover_b') ?> 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_hover_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_hover_b') ?> 100%); /* Opera11.10+ */
background: -ms-linear-gradient(top, #<?php echo $this->config->get('shopcart_button_hover_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_hover_b') ?> 100%); /* IE10+ */
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#<?php echo $this->config->get('shopcart_button_hover_a') ?>, endColorstr=#<?php echo $this->config->get('shopcart_button_hover_b') ?>,GradientType=0 ); /* IE6-9 */
background: linear-gradient(top, #<?php echo $this->config->get('shopcart_button_hover_a') ?> 0%,#<?php echo $this->config->get('shopcart_button_hover_b') ?> 100%); /* W3C */
}


/* PROMO PRICE */
.price-new {
	
	color:#<?php echo $this->config->get('shopcart_promo_price') ?>; 
}

/*normal price */
 .price {
	color:#<?php echo $this->config->get('shopcart_normal_price') ?>; 

}

/* OLD PRICE */
.price-old {
color: #<?php echo $this->config->get('shopcart_old_price') ?>; 
}



h1, .welcome, h3, h2, .box-product .name a, .product-grid .name a, .pagination .links a , #welcome, #header #cart .cart td, #menu > ul > li > a, table.list thead td, .pagination, .htabs a,  .box .box-heading h2, #tab-review .box-heading h2, .box-heading-search h2,
.box-category > ul > li > a, #column-left .box .box-heading, #column-right .box .box-heading, .category-list .category_box .category_name a, .manufacturer-heading, 
 .category_name a, .product-filter, .product-list .name a , .product-list .description, .category-info p , .wishlist a, .compare a , #review .content, 
 .product-info .cart #options a , .attribute thead td, .attribute thead tr td:first-child, .compare-info thead td, .compare-info thead tr td:first-child , 
 .cart-total table tr:last-child td , .cart-info thead td, .cart-module .cart-heading , .checkout-heading, #footer h3, #footer-top-outside h2

 {

<?php 

$toReplace =  $this->config->get('shopcart_font');
$font = str_replace("+", " ", $toReplace);

?>


font-family: '<?php echo $font; ?>', arial, serif;


}
  <?php 
  if ($this->config->get('own_bg_image') == '1') {
  	?>
  	  #top_container, #powered, #breadcrumbs {
background-image:url("<?php echo HTTPS_IMAGE . $this->config->get('own_image') ?>");
} 	
  	<?php   }  else if ($this->config->get('shopcart_top_bg_image')!= "no_pattern") { 
  	
  if($this->config->get('shopcart_top_bg_image')!= "no_pattern") { 
?>
  #top_container, #powered, #breadcrumbs {

background-image:url("catalog/view/theme/shopcart/image/bg/<?php echo $this->config->get('shopcart_top_bg_image');?>.png");

}
  <?php } ?>	
  
  	<?php		}	?>
	
	
	  <?php 
  if ($this->config->get('own_full_bg_image') == '1') {
  	?>
  	  body{
background:url("<?php echo HTTPS_IMAGE . $this->config->get('own_full_image') ?>") no-repeat fixed center 400px transparent;
} 	
  	<?php   } ?>
  	
  	
  	  <?php 
  if ($this->config->get('google_body_font') == '1') {
  	?>
  	  body {
font-family: '<?php echo $this->config->get('google_body_font2') ?>', Arial, sand-serif;
} 	
  	<?php   } else { ?>
  	
  	body{
  font-family:<?php echo $this->config->get('shopcart_body_font') ?>;
  }
  
  <?php  } ?>
  	
  
</style>
	<?php }	?>


</head>
<body>
<div id="top_container">
<div class="container">
<div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>

<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <div id="header_right">
  <div id="top">


<?php if (count($currencies) > 1) { ?>
      <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="currency_form">
      
      <?php 
      if (count($languages) > 1) {
      	// if language selector is displayed, move the currency selector further left
      	echo ' <div id="currency_switcher_language" class="switcher">';
      }
      
      else {
      	
      	echo  '<div id="currency_switcher" class="switcher">';
      
      }
      ?>
          <?php foreach ($currencies as $currency) { ?>
          <?php if ($currency['code'] == $currency_code) { ?>
          <span class="s_selected"><?php echo $currency['title']; ?></span>
          <?php } ?>
          <?php } ?>
          <ul class="option">
            <?php foreach ($currencies as $currency) { ?>
            <li><a href="javascript:;" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['title']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <input class="s_hidden" type="hidden" name="currency_code" value="" />
        <input class="s_hidden" type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
      </form>
      <?php } ?>
  
  
  
    
       <?php if (count($languages) > 1) { ?>
      <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="language_form">
        <div id="language_switcher" class="switcher">
          <?php foreach ($languages as $language) { ?>
          <?php if ($language['code'] == $language_code) { ?>
          <span class="s_selected"><img src="<?php echo "". HTTPS_IMAGE ."flags/" .  $language['image'] .""; ?>" alt="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></span>
          <?php } ?>
          <?php } ?>
          <ul class="option">
            <?php foreach ($languages as $language) { ?>
            <li><a href="javascript:;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();"><img src="<?php echo "". HTTPS_IMAGE ."flags/" .  $language['image'] .""; ?>" alt="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <input class="s_hidden" type="hidden" name="language_code" value="" />
        <input class="s_hidden" type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
      </form>
      <?php } ?>
  

  
    <div id="search">
    <div class="button-search"></div>
    <?php if ($filter_name) { ?>
    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
    <?php } else { ?>
    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
    <?php } ?>
  </div>
  
  </div>
  
<div id="bottom">

  <div class="links"><a href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>

</div>  
  
  </div>
  


  

  

<div id="header_bottom">
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

<div id="cart">
    <div class="heading">
      <h4><?php echo $text_cart; ?></h4>
      <a><span id="cart_total"><?php echo $text_items; ?></span></a></div>
    <div class="content"></div>
  </div>
</div>


</div> <!--  end header -->
<div id="header_bottom_shadow">
</div>
<div id="notification"></div>
</div> <!--  end container -->


