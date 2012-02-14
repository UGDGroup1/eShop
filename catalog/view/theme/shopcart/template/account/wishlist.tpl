<?php echo $header; ?>
 <div class="breadcrumb">
 <div class="container">
 <h1><?php echo $heading_title; ?></h1>
 </div>
 <div id="breadcrumbs">
 <div class="container">
 <?php $zet = 100;  $counter = 0; ?>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
   
    <div id="bread" <?php if($zet == 100) echo 'class="first"' ?>style="z-index: <?php echo $zet-- ; ?>; left: <?php echo $counter * -30;?>px;">
    <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <span></span>
    </div>
    <?php $counter++; } ?>
  </div>
    </div>
   </div>
  </div> <!--  end top_container -->
  <div class="container">

<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <?php if ($products) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="wishlist">
    <div class="wishlist-product">
      <table>
        <thead>
          <tr>
            <td class="remove"><?php echo $column_remove; ?></td>
            <td class="image"><?php echo $column_image; ?></td>
            <td class="name"><?php echo $column_name; ?></td>
            <td class="model"><?php echo $column_model; ?></td>
            <td class="stock"><?php echo $column_stock; ?></td>
            <td class="price"><?php echo $column_price; ?></td>
            <td class="cart"><?php echo $column_cart; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
            <td class="remove"><input type="checkbox" name="remove[]" value="<?php echo $product['product_id']; ?>" /></td>
            <td class="image"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?></td>
            <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
            <td class="model"><?php echo $product['model']; ?></td>
            <td class="stock"><?php echo $product['stock']; ?></td>
            <td class="price"><?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                <?php } ?>
              </div>
              <?php } ?></td>
            <td class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </form>
  <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a></div>
    <div class="right"><a onclick="$('#wishlist').submit();" class="button"><span><?php echo $button_update; ?></span></a></div>
  </div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>